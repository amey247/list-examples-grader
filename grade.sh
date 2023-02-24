CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
git clone $1 student-submission
echo 'Finished cloning'

cd student-submission
if [! -f "student-submission"]
{
    echo 'Wrong file. Please submit the correct file'
}
fi

mkdir GraderFile
cp student-submission GraderFile

javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.19.2.jar *.java

if [$? -neq 0]
{
    echo 'Unsuccessful compilation. Please change the file'
}
fi

