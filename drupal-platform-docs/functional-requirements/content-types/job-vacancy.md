# Job Vacancy

The Job Vacancy content type is intended for listing job vacancies associated with UNHCR. It's important to note that this content type does not generate individual public pages but rather is utilized to display information in various views throughout the site.

### Design Reference

* [Job Listing Page](https://www.sketch.com/s/6ecd71b4-af49-42b4-9d65-0e9d20134b89/a/R1wg4Re)

### Requirements

#### Job Vacancies

* Create content type that have a few fields; title, small description, taxonomy, country, file or link.
* The [schema.](http://schema.org/)org will be enabled on the lisiting page.
* Content type will have a listing view that will either have an external link or PDF viewer

#### **Assumptions**

* If integration will happen in the future for imporing job vacancies - using content type from the start is the optimal solution and to be able to have a detailed page.
* One listing view for both options with no pagining and no filters.

### Viewing

* Listing of Job vacancies can be viewed under the [careers](https://www.unhcr.org/careers-unhcr) pages.

### Acceptance Criteria

* As an editor, I can upload a new job description and link it to the site (PDF document).
* As an editor, I can upload a zip file of supporting documents for applicants and also show this.
* As an editor, I can upload a new job and link it to the site (link).
* As a developer, I can see that the job has been added to mark up correctly for schema.org.
