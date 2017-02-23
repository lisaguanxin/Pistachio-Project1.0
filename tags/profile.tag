<profile>
<!-- Course description display -->
	<div class="user">
		<h3>Rate My Course</h3>
		<pre>
			Department: { department }
			Academic Standing: {academicStanding} student.
			Course Number: { courseNumber }
			Course Name: { courseName }
			Taken for credits: {credit ? "{ numberCredits } credits" : "No"}
			Course Comment: { comments }
			Recommend to others: { recommend ? "YES! :)" : "NO :("}
		</pre>
	</div>


<!-- User Input Course Description-->

	<form>
		<p>Please enter the course information in the following form.</p>
		<label for="">Department:</label>
		<input type="text" value="" placeholder = "CMLTD" ref="department" onchange ={updateDepartment}> <br>
  <br>
		<label for="">Academic Standing:</label>
    <label>Master
		<input type="radio" value="Master"  onclick={updateStanding}>
  </label>
  <label>Doctoral
		<input type="radio" value="Doctoral" onclick={updateStanding}>
  </label>
</br>
		<label for="">Course Number:</label>
		<input type="text" value="" placeholder = "30123" ref="courseNumber" onchange = {updateCourseNumber}> <br>

		<label for="">Course Name:</label>
		<input type="text" value="" placeholder = "MSTU5013" ref="courseName" onchange = {updateCourseName}> <br>

		<label for="">Taken for credits:</label>
		<input type="radio" value="" ref="creditYes"> Yes,
		<label for="">Number of Credit</label>
		<input type="text" value="" ref="numberCredits">
		<input type="radio" value="" ref="creditNo"> No <br>

		<label for="">Course Comment:</label>
		<textarea  rows="8" cols="80" ref="comment" onchange={updateComment}></textarea><br>

		<label for="">Recomment to others?:</label>
		<input type="radio" value="" ref="recommendYes"> Yes
		<input type="radio" value="" ref="recommendNo"> No <br>
	</form>


<!-- javascript  -->
	<script>
this.updateDepartment = function(event){
this.department=this.refs.department.value;
};
this.updateCourseNumber = function(event){
  this.courseNumber = this.refs.courseNumber.value;
};


this.updateCourseName = function (event){
  this.courseName = this.refs.courseName.value;
};
 this.updateStanding = function (event){
   this.academicStanding = event.target.value;
 };
 this.updateComment = function(event){
   this.comments = this.refs.comment.value;
 };
	</script>

<!-- style -->
	<style>
		:scope {
			display: inline-block;
			border: 1px solid black;
			border-radius: 6px;
			margin: 0;
			padding: 10px;
			width: 100% relative;
		}
	</style>

</profile>
