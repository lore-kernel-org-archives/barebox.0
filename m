Delivery-date: Mon, 29 Apr 2024 18:33:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1Twr-007v0u-3A
	for lore@lore.pengutronix.de;
	Mon, 29 Apr 2024 18:33:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1Twr-0002Sb-Fd
	for lore@pengutronix.de; Mon, 29 Apr 2024 18:33:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+JnroPaUi9WyVzWb4K9gEJ5mAIm1bkguaO73bgFJ0+Q=; b=YJCGIsR4SAHMforqrCMJberc3k
	I7KwCa4Yi3WX2v7+3NJItEjblMcqRzGrTkDbBFY7KAQwEKE8H5P/NI+Kcd9+ewuW94NxdoiDUyMgl
	cxM06yJS62FGhJ5+lZmwE3oTCOT8wj0gBQ6+X3GVndOqj20RZTwZmGxcVtMfphR4nPKtWOPgks4nJ
	o9urMc8x+07hTBcb9JlTo2C5TxdCx4NxhVoH8t6nnMZHVjOk0BNhzQEAxlVTd8n0lyVVkNimIHpHS
	Kc8rBfYehjfCFnPqgjp6MDQLy2FHSdkxMAbapQGxwWysBPAR2AyFYtSBktYmbE5Q2v79U4ESJPW2R
	wfiq32Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1TwF-00000003axV-1vGW;
	Mon, 29 Apr 2024 16:33:11 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1TwA-00000003atb-34Bl
	for barebox@lists.infradead.org;
	Mon, 29 Apr 2024 16:33:09 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTPS id 43TGWkQQ582698
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 29 Apr 2024 18:32:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1714408366;
	bh=+JnroPaUi9WyVzWb4K9gEJ5mAIm1bkguaO73bgFJ0+Q=; l=815;
	h=From:To:Subject:Date;
	b=etzVXnpD/XFb71cN2W6I7vuixqfTvTEI1mBabIf5Tx3AfHESg2CXXOfDUqMqdUaaW
	 cuA0/MgBtnhXqPJYRPpBYxej5Z1D0vFcLSo4t1FzpEYnYqL15q7+DpnVCG27Ix5sEZ
	 /RIxrgb0qUbf2NC9sx6qublKNQNexdKrkqGQwPGXHyfzDjpd6BmkJw2VHVN9MWWEt1
	 ooSErXsmqbMYeR3zqCQXRxApTR8hV8IlyzZPfowLeASZnJCYY8PSEkT0zMeMA4JppI
	 tkU1sOCc4ZRrQve0tT5WTInjaOSoIUfVDGSeFF1V/u9US3qsLaVPC9id3iOlKuBcTj
	 /Dr4cZ4dAVxUg==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTP id 43TGWixT805050
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 29 Apr 2024 18:32:45 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ([192.168.12.73])
	by reddoxx.intern.sigma-chemnitz.de with ESMTP
	id M34W1CBTY6; Mon, 29 Apr 2024 18:32:44 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 43TGWgvb568400
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <barebox@lists.infradead.org> from ensc@sigma-chemnitz.de; Mon, 29 Apr 2024 18:32:44 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.97.1)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1s1Tvm-00000006BJz-0FY4
	for barebox@lists.infradead.org;
	Mon, 29 Apr 2024 18:32:42 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Date: Mon, 29 Apr 2024 18:32:42 +0200
Message-ID: <lyv840ku39.fsf@ensc-pc.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
X-REDDOXX-Id: 662fcbacb121c496daa9b231
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_093307_281785_713BA132 
X-CRM114-Status: UNSURE (   5.49  )
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
X-Spam-Status: No, score=-105.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: imx8: 'struct dram_timing_info' incompatibilities
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

commit e6234f90 ("ddr: Initial i.MX9 support") adds unconditionally
fields to the dram timing info object (include/soc/imx/ddr.h):

|  struct dram_timing_info {
|       ...
| +	/* fsp config */
| +	struct dram_fsp_cfg *fsp_cfg;
| +	unsigned int fsp_cfg_num;


However, the iMX8 ATF ([1]) does not have this field and DRAM related
SMC calls like

|	arm_smccc_smc(FSL_SIP_DDR_DVFS, 0x11, i, 0, 0, 0, 0, 0, &res);

in the NXP busfreq-imx8mq.c driver will fail [2].


Am I missing something here or should the dram_timing_info table somehow
translated between these architectures (e.g. in dram_config_save())?



Enrico

Footnotes:
[1]  https://github.com/nxp-imx/imx-atf/blob/lf_v2.8/plat/imx/imx8m/include/dram.h

[2]  typical message: "imx_busfreq: probe of busfreq failed with error -22"


