Delivery-date: Mon, 19 Sep 2022 14:40:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaG4b-009ZzL-QV
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 14:40:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaG4a-0001KU-MQ
	for lore@pengutronix.de; Mon, 19 Sep 2022 14:40:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MuURoloSeUCTGhDS8SawnjwEYQKIxlmllgLHFBtmOK4=; b=2CWnFeqVcE64CiQKW+MxV+X/U1
	1FKoR6PnUV2A2bT41WwkO6R0epEeMRqQYUjctvgAuPoVTWs8xbuTCpMMqrKClUyFY13w2GDJp0MT4
	6EtyVosPZceybWEbsUJMri5ePqIOvMTOYJKx+v8OitC0KvrbDaj9lib/oYMnqRzrphjRDAU77FEhB
	mgFiP7GU4URAMtL9yJ6ROJT/G3gm+Yose63OJ6OUthAZEvgR6SNMyZPP4vDJyNjdGsGJkhfvVS6Xr
	Cc2UME0uDT32OY/PFnF1KyUCLN7rit9tM4651hlQ4hnd9bRUjFw5l32wr7EEUCHkln3yLrcK1tmOt
	qg0FE88Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaG37-00BiMk-K1; Mon, 19 Sep 2022 12:38:57 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaG31-00BiDv-G2
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 12:38:53 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 28JCc6iU1005058
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 19 Sep 2022 14:38:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1663591086;
	bh=MuURoloSeUCTGhDS8SawnjwEYQKIxlmllgLHFBtmOK4=; l=917;
	h=From:To:Subject:Date;
	b=OUSx2MHYHhuVEFP+MUpk1k+4R2VQ+WFFwNGndLCaFCg7mKsV4aMbkLZ9A2CcMTt3u
	 KhBPFmtyVrIZbsEUwCwI1UunuFDc6K71pLbaaq4vwwdFC9xyTQ/ZaTkb8hPeHSkMwi
	 OzviVzZitRNlnn8SglnhlrDeAOwFGmBr+cU3fwIXiW9//xZlWYBWpMhn+Bhr8UomoG
	 9FIyX9CAbZPPC4cW/KxRbTBzOHFf9cqd+ZMiIPWfHq4h17V+J/K/cUMvcM/FrmktJC
	 2092L9dotly5Ojp1UWgS7fQnJvilNsK2/tq/plaJs3h0Rhxt4plLp0/ecTTIdRjuIK
	 foqQtv18nU5MQ==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 28JCc38N1244882
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 19 Sep 2022 14:38:04 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 1A1D0459175; Mon, 19 Sep 2022 14:38:01 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 28JCbxjm1138480
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <barebox@lists.infradead.org> from ensc@sigma-chemnitz.de; Mon, 19 Sep 2022 14:38:00 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.96)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oaG2B-000VK3-2L
	for barebox@lists.infradead.org;
	Mon, 19 Sep 2022 14:37:59 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Date: Mon, 19 Sep 2022 14:37:59 +0200
Message-ID: <ly7d1z1qvs.fsf@ensc-pc.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_053851_723743_DC7048D8 
X-CRM114-Status: UNSURE (   6.98  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: malloc() alignment on 32 bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

on an iMX6ull I stumpled across

| zstd_decomp_init:536 workspace=8ff1a004+161320
| ERROR: initcall ubifs_init+0x1/0xc4 failed: Invalid argument

which is caused by

| static int zstd_decomp_init(void)
|	void *wksp = malloc(wksp_size);
| ...
| ZSTD_DCtx* ZSTD_initStaticDCtx(void *workspace, size_t workspaceSize)
|    if ((size_t)workspace & 7) return NULL;  /* 8-aligned */


Trivial fix would be 'memalign(8, wksp_size)', but is it really ok that
malloc() for 32 bit has only an alignment of 4?

Relevant code seems to be in common/tlsf.c

| enum tlsf_private
| {
| #if defined (TLSF_64BIT)
| 	/* All allocation sizes and addresses are aligned to 8 bytes. */
| 	ALIGN_SIZE_LOG2 = 3,
| #else
| 	/* All allocation sizes and addresses are aligned to 4 bytes. */
| 	ALIGN_SIZE_LOG2 = 2,
| #endif

'ldrd/strd' require 8 byte alignment which might break with such
alignment.


Enrico


