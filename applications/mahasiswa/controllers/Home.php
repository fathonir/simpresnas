<?php

/**
 * @author Fathoni <m.fathoni@mail.com>
 * @property Kegiatan_model $kegiatan_model 
 * @property Proposal_model $proposal_model
 */
class Home extends Mahasiswa_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->check_credentials();
		$this->load->model(MODEL_KEGIATAN, 'kegiatan_model');
		$this->load->model(MODEL_PROPOSAL, 'proposal_model');
	}
	
	public function index()
	{
		$kegiatan_kbmi = $this->kegiatan_model->get_aktif(PROGRAM_KBMI);
		$kegiatan_startup = $this->kegiatan_model->get_aktif(PROGRAM_STARTUP);
		
		$proposal_kbmi_set = $this->proposal_model->list_by_mahasiswa($this->session->user->mahasiswa->id, PROGRAM_KBMI);
		$proposal_startup_set = $this->proposal_model->list_by_mahasiswa($this->session->user->mahasiswa->id, PROGRAM_STARTUP);
		
		$this->smarty->assign('kegiatan_kbmi', $kegiatan_kbmi);
		$this->smarty->assign('kegiatan_startup', $kegiatan_startup);
		$this->smarty->assign('proposal_kbmi_set', $proposal_kbmi_set);
		$this->smarty->assign('proposal_startup_set', $proposal_startup_set);
		$this->smarty->display();
	}
}
