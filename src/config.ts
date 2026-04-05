// src/config.ts

export const kmpConfiguration = {
  // Toggle to manually disable the banner regardless of the dates
  isMasterclassEnabled: false,
  
  isLiveStreamEnabled: false,
  
  // List of dates for the KMP Masterclass
  masterclassDates: [
    new Date(2024, 6, 6, 21, 0, 0),
    new Date(2024, 6, 13, 21, 0, 0),
    new Date(2024, 6, 20, 21, 0, 0),
    new Date(2024, 6, 27, 21, 0, 0),
    new Date(2024, 7, 3, 21, 0, 0),
  ]
};

export const kmpDatesFiltered = kmpConfiguration.masterclassDates
  .filter((date) => {
    return (new Date(Date.now())).toLocaleString('en-US', { timeZone: 'America/Tijuana' }) <= date.toLocaleString('en-US', { timeZone: 'America/Tijuana' });
  });

export const socialLinks = [
  { label: 'YouTube', href: 'https://www.youtube.com/@jesusdmedinac/', icon: 'youtube-logo'},
  { label: 'LinkedIn', href: 'https://www.linkedin.com/in/jesusdmedinac/', icon: 'linkedin-logo'},
  { label: 'TikTok', href: 'https://www.tiktok.com/@jesusdmedinac', icon: 'tiktok-logo'},
  { label: 'Facebook', href: 'https://www.facebook.com/jesusdmedinac', icon: 'facebook-logo'},
  { label: 'Instagram', href: 'https://www.instagram.com/jesusdmedinac', icon: 'instagram-logo'},
  { label: 'X', href: 'https://x.com/JesusDMedinaC', icon: 'x-logo'},
  { label: 'Github', href: 'https://github.com/jesusdmedinac', icon: 'github-logo'},
  { label: 'Medium', href: 'https://blog.jesusdmedinac.com', icon: 'medium-logo'},
  { label: 'Discord', href: 'https://discord.gg/v5jv8k5b', icon: 'discord-logo'},
  { label: 'Twitch', href: 'https://www.twitch.tv/jesusdmedinac', icon: 'twitch-logo'},
] as const;
