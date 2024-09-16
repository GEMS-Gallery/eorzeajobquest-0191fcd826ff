import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';
import type { IDL } from '@dfinity/candid';

export interface Job { 'name' : string, 'role' : string }
export interface _SERVICE { 'getAllJobs' : ActorMethod<[], Array<Job>> }
export declare const idlFactory: IDL.InterfaceFactory;
export declare const init: (args: { IDL: typeof IDL }) => IDL.Type[];
