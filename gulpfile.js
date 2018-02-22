/*
To install required packages run:

npm install gulp
del
gulp-csslint
gulp-minify-css
gulp-notify
gulp-rename
gulp-ruby-sass
gulp-uglify
gulp-preprocess
--save-dev
*/
/*TODO: 1 extra tool*/
/*TODO: gulp testen*/
var gulp = require('gulp');
var del = require('del');
var minifyCSS = require('gulp-minify-css');
var notify = require('gulp-notify');
var rename = require('gulp-rename');
var sass = require('gulp-ruby-sass');
var csslint = require('gulp-csslint');
var uglify = require('gulp-uglify');
var preprocess = require('gulp-preprocess');

gulp.task('scripts', function() {
    return gulp.src('src/js/*.js')
            .pipe(rename({ suffix: '.min' }))
            .pipe(uglify())
            .pipe(gulp.dest('dist/js'));
});

gulp.task('styles', function() {
    return gulp.src('src/css/*.css')
            .pipe(csslint())
            .pipe(csslint.formatter())
            .pipe(rename({ suffix: '.min' }))
            .pipe(minifyCSS())
            .pipe(gulp.dest('dist/css'));
});

gulp.task('clean', function(){
  return del(['dist/css/**/*', 'dist/js/**/*']);
});

gulp.task('default', ['clean'], function() {
    gulp.start('scripts', 'styles');
});
