# move dat folders for processing

PARENT=${WD_DIR}storage/John/testing/

echo 'Which RUN ? (e.g. 000001 )'
read -r RUN

PARENT=${PARENT}RUN${RUN}/

echo $PARENT

# set numbers for loop based on channels
#for i in 1 3 # for example, this is for wave1.dat and wave3.dat
for i in 6
do
    #echo 'PMT for wave' $i ' ? (e.g. 0052)'. We currently dont label our PMTs as such
    FOLDER=${PARENT}PMT/Nominal/
    O_FOLDER=${PARENT}PMT/Output/
    #echo $FOLDER 
    mkdir -pv $FOLDER
    mkdir -pv $O_FOLDER
    mv ./wave${i}.dat ${FOLDER}wave_${i}.dat 
done

# the lines below can be used to process all of the files
# for a full run in separate sub shells 
# - see $WM_CODE/run_process_analyse_locally_auto_on_full_run.sh
 
cd $PARENT
source ${WD_SCRIPTS}run_process_analyse_locally_auto_on_trig.sh
