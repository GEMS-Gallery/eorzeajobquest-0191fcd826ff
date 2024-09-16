export const idlFactory = ({ IDL }) => {
  const Job = IDL.Record({
    'name' : IDL.Text,
    'role' : IDL.Text,
    'image' : IDL.Text,
  });
  return IDL.Service({
    'getAllJobs' : IDL.Func([], [IDL.Vec(Job)], ['query']),
  });
};
export const init = ({ IDL }) => { return []; };
