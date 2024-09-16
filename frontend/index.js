import { backend } from 'declarations/backend';

async function loadJobs() {
  try {
    const jobs = await backend.getAllJobs();
    const jobList = document.getElementById('job-list');
    
    jobs.forEach(job => {
      const li = document.createElement('li');
      li.textContent = `${job.name} (${job.role})`;
      jobList.appendChild(li);
    });
  } catch (error) {
    console.error('Error loading jobs:', error);
  }
}

document.addEventListener('DOMContentLoaded', loadJobs);
