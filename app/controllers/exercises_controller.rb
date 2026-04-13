class ExercisesController < ApplicationController
  def create
    @workout = Workout.find(params[:workout_id])
    @exercise = @workout.exercises.new(exercise_params)
    @exercise.save
    redirect_to @workout
  end

  def destroy
    @workout = Workout.find(params[:workout_id])
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
    redirect_to @workout
  end

  private
    def exercise_params
      params.require(:exercise).permit(:name, :sets, :reps, :weight)
    end
end
