/*
To install required packages run:

npm install gulp del gulp-csslint gulp-minify-css gulp-rename gulp-uglify gulp-imagemin --save-dev
*/
/*TODO: gulp testen*/
var gulp = require('gulp');
var del = require('del');
var minifyCSS = require('gulp-minify-css');
var rename = require('gulp-rename');
var csslint = require('gulp-csslint');
var uglify = require('gulp-uglify');
var imagemin = require('gulp-imagemin');

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

gulp.task('php', function() {
    return gulp.src('src/php/*.php')
            .pipe(gulp.dest('dist/php'));
});

gulp.task('twig', function() {
    return gulp.src('src/views/*.twig')
            .pipe(gulp.dest('dist/views'));
});

//not used because not every image can be recognised
//gulp.task('images', function(){
//	return gulp.src('src/uploads/**/*')
//        .pipe(imagemin())
//        .pipe(gulp.dest('dist/uploads'))
//});

gulp.task('clean', function(){
  return del(['dist/css/**/*', 'dist/js/**/*', 'dist/php/**/*', 'dist/views/**/*']);
});

gulp.task('default', ['clean'], function() {
    gulp.start('scripts', 'styles', 'php', 'twig');
});
