import { backend } from 'declarations/backend';

async function loadJobs() {
  try {
    const jobs = await backend.getAllJobs();
    const jobList = document.getElementById('job-list');
    
    jobs.forEach(job => {
      const li = document.createElement('li');
      const img = document.createElement('img');
      img.src = job.image;
      img.alt = `${job.name} icon`;
      img.className = 'job-icon';
      
      const span = document.createElement('span');
      span.textContent = `${job.name} (${job.role})`;
      
      li.appendChild(img);
      li.appendChild(span);
      jobList.appendChild(li);
    });
  } catch (error) {
    console.error('Error loading jobs:', error);
  }
}

document.addEventListener('DOMContentLoaded', loadJobs);
