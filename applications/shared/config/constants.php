<?php

defined('BASEPATH') OR exit('No direct script access allowed');

// Model name
define('MODEL_FILE_PROPOSAL', 'File_proposal_model');
define('MODEL_FILE_EXPO', 'File_expo_model');
define('MODEL_KEGIATAN', 'Kegiatan_model');
define('MODEL_LEMBAGA_PENGUSUL', 'LembagaPengusul_model');
define('MODEL_PERGURUAN_TINGGI', 'PerguruanTinggi_model');
define('MODEL_PROGRAM', 'Program_model');
define('MODEL_SYARAT', 'Syarat_model');
define('MODEL_PROPOSAL', 'Proposal_model');
define('MODEL_ANGGOTA_PROPOSAL', 'Anggota_proposal_model');
define('MODEL_REQUEST_USER', 'RequestUser_model');
define('MODEL_USER', 'User_model');
define('MODEL_REJECT_MESSAGE', 'RejectMessage_model');
define('MODEL_REVIEWER', 'Reviewer_model');
define('MODEL_PLOT_REVIEWER', 'PlotReviewer_model');
define('MODEL_TAHAPAN', 'Tahapan_model');
define('MODEL_TAHAPAN_PROPOSAL', 'TahapanProposal_model');
define('MODEL_KATEGORI', 'Kategori_model');
define('MODEL_UNIT_KEWIRAUSAHAAN', 'Unit_kewirausahaan_model');
define('MODEL_PROFIL_KELOMPOK', 'Profil_kelompok_model');
define('MODEL_KELAS_PRESENTASI', 'Kelas_presentasi_model');
define('MODEL_LOKASI_WORKSHOP', 'LokasiWorkshop_model');
define('MODEL_PROPOSAL_WORKSHOP', 'ProposalWorkshop_model');
define('MODEL_PESERTA_WORKSHOP', 'PesertaWorkshop_model');
define('MODEL_PROGRAM_STUDI', 'Program_studi_model');
define('MODEL_MAHASISWA', 'Mahasiswa_model');
define('MODEL_DOSEN', 'Dosen_model');

// Jenis Program
define('PROGRAM_PBBT', 1);
define('PROGRAM_KBMI', 2);
define('PROGRAM_EXPO', 3);
define('PROGRAM_WORKSHOP', 4);
define('PROGRAM_STARTUP', 5);
define('PROGRAM_STARTUP_MEETUP', 6);
define('PROGRAM_PENULISAN_OPINI', 7);
define('PROGRAM_POSTER', 8);
define('PROGRAM_VIDEO_OPINI', 9);

// Jenis User
define('TIPE_USER_NORMAL', 1);
define('TIPE_USER_REVIEWER', 2);
define('TIPE_USER_VERIFIKATOR', 3);
define('TIPE_USER_MAHASISWA', 4);
define('TIPE_USER_ADMIN', 99);

// Tahapan Proposal
define('TAHAPAN_EVALUASI', 1);
define('TAHAPAN_MONEV', 2);
define('TAHAPAN_SELEKSI_EXPO', 3);
define('TAHAPAN_KMI_AWARD', 4);
define('TAHAPAN_STAN_EXPO', 5);
define('TAHAPAN_STARTUP_SUMMIT', 6);