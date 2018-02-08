var gulp = require('gulp');
var del = require('del');
var minifyCSS = require('gulp-minify-css');
var notify = require('gulp-notify');
var rename = require('gulp-rename');
var sass = require('gulp-ruby-sass');
var csslint = require('gulp-csslint');

gulp.task('scripts', function() {
    return gulp.src('src/js/*.js')
            .pipe(gulp.dest('dist/js'));
});

gulp.task('styles', function() {
    return sass('src/scss/*.scss', { style: 'expand' })
            .pipe(rename({ suffix: '.min' }))
            .pipe(minifyCSS())
            .pipe(gulp.dest('dist/css'));
});

gulp.task('css', function() {
  return gulp.src('dist/css/*.css')
    .pipe(csslint())
    .pipe(csslint.formatter());
});

gulp.task('clean', function(){
  return del(['dist/css/**/*', 'dist/js/**/*']);
});

gulp.task('default', ['clean'], function() {
    gulp.start('scripts', 'styles', 'css');
});
