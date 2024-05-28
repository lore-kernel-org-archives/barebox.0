Delivery-date: Tue, 28 May 2024 13:56:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBvQu-000uen-3D
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 13:56:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBvQu-0004oL-A2
	for lore@pengutronix.de; Tue, 28 May 2024 13:56:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:To:From:MIME-Version:Date:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ysr+VmubdqaCeFxxnuG5LHblYClPZBAjnZ/pfOuGADA=; b=qoiGlL0bKXVl7YsNEo1Sr0TcnL
	0qs2tVGy9iNlJ4R289pdJbUSWcRwI14TENly2geuyrHE7AXuDwMvE5rA+9TPHLVEneadrQFeNPkgr
	Mjfh4198hN7YsFrYrhwu4YulDx6aSr/rFGEL90GcIjQC0GxFcg+JXAmrFfLLtB8qgs38G4o8D24BR
	RHDTKE8WMwHytX8pvutGbUI3f4p1C9VYDrw83pxAcyt2D11epuPZCnLiNPt+GnzcubsHCfn19J8Sd
	oJbsuoKPmX+ys26lLpiuypaWpA1QY8HJ3eEjjI4rW5/BdYb+3kWK2ELtBY8p1Z+rR5DP8iMAqapeK
	wMpUYRRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBvQR-00000000TCR-43qv;
	Tue, 28 May 2024 11:55:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBvQP-00000000TBg-2W4d
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 11:55:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sBvQO-0004kF-Dn; Tue, 28 May 2024 13:55:28 +0200
Message-ID: <f8ce07a1-af83-4cdd-a6d4-1c800ec5458a@pengutronix.de>
Date: Tue, 28 May 2024 13:55:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_045529_672848_0DE80543 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: MTD/NAND layer size increase after update
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

The recent MTD/NAND layer sync with Linux made barebox a good deal fatter with the result
that the DistroKit configuration[1] for am335x MLO now fails to compile on v2024.05.0:

  images/start_am33xx_afi_gf_sram.pblb size 113544 > maximum size 111616

[1]: https://git.pengutronix.de/cgit/DistroKit/plain/configs/platform-v7a/barebox-am335x-mlo.config?h=next&id=5db984fcb018f57bc19553a7c95be58ab8cc8b5f

I looked at the diff and found that the sync commit inadvertently dropped CONFIG_MTD_WRITE
checks. I added back these checks to save some Kilobytes, but there is still some size increase,
which I think is unreasonable for existing users that didn't need the newly imported
functionality. Can you take a look and perhaps add some IS_ENABLED() checks?

Here is bloaty output that shows some of the symbols responsible for the size increase
(Some may be false positives due to symbol rename or refactoring):

bloaty build/barebox --domain=vm -- barebox.old  -d symbols -n 40 
     VM SIZE    
 -------------- 
  [NEW] +1.12Ki    onfi_nvddr_timings
  [NEW]   +1000    nand_lp_exec_cont_read_page_op
   +34%    +588    nand_scan_tail
  [NEW]    +428    nanddev_mtd_max_bad_blocks
 -98.5%    +396    [163 Others]
  [NEW]    +342    nand_read_page_syndrome
  +1.6%    +332    [section .rodata]
  [NEW]    +324    of_get_nand_ecc_user_config
  [NEW]    +256    onfi_find_closest_nvddr_mode
   +13%    +236    nand_scan_ident
  [NEW]    +192    nand_read_oob_syndrome
  [NEW]    +190    nand_read_page_raw_syndrome
   +22%    +180    nand_read_page_op
  [NEW]    +170    nand_read_page_swecc
   +16%    +168    nand_read_oob
   +77%    +144    nand_read_data_op
  [NEW]    +132    handoff_data_reserve
  [NEW]    +122    nand_choose_best_nvddr_timings
  [NEW]    +108    rawnand_cap_cont_reads
   +28%    +100    nand_get_features
  [NEW]     +92    barebox_hostname_is_valid
   +32%     +88    nand_readid_op
   +55%     +84    onfi_fill_interface_config
  +6.9%     +80    nand_onfi_detect
  [NEW]     +74    nand_ecc_is_strong_enough
  [NEW]     +64    nand_isreserved_bbt
  [NEW]     +60    console_set_stdoutpath
  [NEW]     +56    broken_get_timings.5
  +8.7%     +52    macronix_nand_init
   +12%     +48    nand_read_param_page_op
   +20%     +48    nand_setup_interface
   +13%     +44    nand_set_features
  [NEW]     +40    handoff_data_get
  +8.3%     +40    nand_exec_prog_page_op
  -8.2%     -40    console_register
  [DEL]     -56    broken_get_timings.4
  [DEL]     -60    of_get_nand_ecc_mode
  [DEL]     -96    nand_block_markgood
  [DEL]    -102    nand_mark_bbt
  [DEL]    -104    reparse_partition_table
 -45.5%    -120    barebox_non_pbl_start
  +4.0% +6.69Ki    TOTAL


Thanks,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


