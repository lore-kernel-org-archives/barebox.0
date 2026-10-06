Delivery-date: Tue, 06 Oct 2026 08:42:57 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDyt7-00AOdv-2i
	for lore@lore.pengutronix.de;
	Tue, 06 Oct 2026 08:42:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A28492012A4
	for <lore@pengutronix.de>; Tue, 06 Oct 2026 08:42:57 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WRwRb2oP;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=OlR4RmNm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791268977; a=rsa-sha256;
	cv=pass;
	b=MkiRr2xFok5a6K+UGQknipftE0mxhAZE099xlfLl9dWOB1oWYKP730GXmTXU4d3qMMwaFw
	Qlc5RQpFGJevBZ4cdz6YzYMROFFUuBER/7Wn+LFfDONZqBduUCtRQSRRCYZJgzzG0eL6uF
	jhGYZxDA6Qd0TXOo78FPSFqvSDKpimMZZeNyWdTicVp2Zw9EegXXJhsReOR77Fwx4bEYQu
	Au8P3/n4ewBA+jdtxeE2V+LIEyEaVcy/lFqUAXI/nqjJzYb8qoEZfrAmkZiHyRb163JuaY
	Y8A1NBNpgvUprmENBlIHz42y2qjwVCPIMpAVi5i7fuxUiZpy/T4unHhf/iJmhQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WRwRb2oP;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=OlR4RmNm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791268977;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=SMf1SNFXLMeP4Q8xvphiyb/QQB51yQWgswjTbnKd89M=;
	b=XcKxOFmr+B2ltCPJZfBlC8OjfGhazIK2Nx4KF2pQ53pTbbgaBMrLiYHcEGtvZSkFM2opYU
	nRBnE0U5wkvV4zPSKrB+Eeg8WR1IZf3in/D1rOuiqwIZsy96zxrfQGpA1vopo0GAQCJyAV
	T7QHWv6fn7Ih+bhK+gndJHQ/g0B4qbQtDXeTA2LYhqdfGy4AG3NIzOyDg0J5esZIAfQfPw
	9aar+L06PFhWFFq679J162NOX1cIYzljPdjYAdzuHkZmhCMEn8arSPBnyutKNMmZdGKEm8
	6nMY7qQOTRA0PC73qa0nRbaka8UX3vg7FLNOyPiK7legnFr71VuR9NTVcKlw8g==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SMf1SNFXLMeP4Q8xvphiyb/QQB51yQWgswjTbnKd89M=; b=WRwRb2oP1rGyb15bN3bzkwhV0g
	fTToTImKX1puDzW7hCugtxkL1J8Iz6VQdgRB3q63Z3cRfwWeGe5ogFJ36pR+llfpSNfykNTXaqlWb
	L1zJD+baMMltppz5tXyWNcgJtE37IVB6EY/9qxP3RdD1oS09wg5Z72zJwM4WLAQOzOWoy+uJ6lM5h
	oreGdBMDTzxl28mEForScU05XRYPdOKhfAv5PHMgsZyLv0K7Nh+HSeRp/PlqIRGl8u28QDdrpuiU1
	ta8Cw05hC/8xTlPagM4iFD9WWDMfTn1haQTjcg0FcUUMiKHobilLIPSU3HfTc1ms4GP0HPax/SlTj
	RB4lfjSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDyrv-000000008kA-2cV7;
	Tue, 06 Oct 2026 06:41:43 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDyrp-000000008iE-2aJf
	for barebox@lists.infradead.org;
	Tue, 06 Oct 2026 06:41:41 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 038D3201CE0;
	Tue, 06 Oct 2026 08:41:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791268896;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SMf1SNFXLMeP4Q8xvphiyb/QQB51yQWgswjTbnKd89M=;
	b=OlR4RmNmD/QcorqihqkFYzRR0DtiqUgNreVTv6+RbnImi+cS0KnS7rR2j03/DFg2CClAnP
	QUqctzpi2o0OipQwXzkxRntZ67mm0NwuOacjziYtHFQmcagjz6Ex3vQ8ZGv28SsO+8Qps/
	VarNO+I+IXoSqFMqCjOSzyHSdVYaRM7DxzSBXqiha78TyNtir4shbnCHAhbHN1VgJjxVop
	OiRJoxNd8z3JA9mRCH6lG25NTVOubsweL8ye341HMtEG1bGE1pnplFuxAJX8H5fe9C6zIb
	vZVSKuZFcBI8a8NoeS0uqD6R9gcJI5f6LduTB6vpPrgyLdREr5hGRcdCFX3/Eg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791268896; a=rsa-sha256;
	cv=none;
	b=ECR3aPwv53ZMSAPvejrBBUS3+bPZ9w1OMDRc5jROamlT5P0hU/hE8KKJ2Uxr//7wjZNWfo
	VYyO4I1/GLY2u/xQluaa9O181JImuA18aoXOE2LLU3JjAyReDuAVY4J5i7rQx097XwMjaZ
	wxR2cZHisOh6GT6uQNnw/nIpn4uRWYJ7TJgMzeDiHaEpAA0swPof7qaZG1rHsd443bXaUw
	Wo9lfihGuv2MylVrryUPA6kVwlwbPzZpYfxPLlI39XlkL7vMmwDoAt5w+Mgd+oIec/b9QV
	36o+hy8Npp+OQ5nY4JfHg99gRZWpPb7Q4DVhI52ihcQvD5t2u01ac6PrC6XVgQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791268896;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SMf1SNFXLMeP4Q8xvphiyb/QQB51yQWgswjTbnKd89M=;
	b=cc7Wtp2HCqIxHpbyu9N7us1VzEGbduV7X/Bcx5ZeUImW+nwwtdFIoFyZy/nbiBT5ksMkN9
	maZFiv9RjBbwSBuDrGkuKOECcnKaP+h0+tvTkxUMp/+EfrmeXCJCV/rqnpT71SERc2XisG
	Z3k50lAUZ7rP9/XtAdp52FfxYbWkENBCwOd4cUHOxH/dhLtBxPLYCXUE0CIGLywizdBkPh
	FEJySG7saH5dA6AP5oxiDUQMiVeo4OcHLZPwdu0as7QrlZpj30Y8nAM0tX+brZypDu6We5
	aL9oduJVdEJJOaVHuLOtd8NiTjnJaoig+YeY/Imhscide4O6tfnEqW8K4qy1AQ==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id F13C9FFA39;
	Tue, 06 Oct 2026 08:41:35 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20261001-rockchip-early-boottime-v1-0-dd891bcdb74f@pengutronix.de>
References: <20261001-rockchip-early-boottime-v1-0-dd891bcdb74f@pengutronix.de>
Subject: Re: [PATCH 0/3] Rockchip: early boot time optimization
Message-Id: <179126889598.541158.11586029521374775772.b4-ty@pengutronix.de>
Date: Tue, 06 Oct 2026 08:41:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_234137_817270_F1C570AC 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 01 Oct 2026 09:42:50 +0200, Sascha Hauer wrote: >
    On Rockchip boards the ROM loads the barebox binary to the start of DRAM
   where > later the TF-A is placed, so the first thing all 64bit Rockc [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A28492012A4
X-Stat-Signature: 8zsog85jiap9f66ii13yuhd3yahuthm6


On Thu, 01 Oct 2026 09:42:50 +0200, Sascha Hauer wrote:
> On Rockchip boards the ROM loads the barebox binary to the start of DRAM where
> later the TF-A is placed, so the first thing all 64bit Rockchip boards do is
> to move away from that location. This is done with MMU disabled, so takes some
> time. Instead of letting each board repeat this pattern, do the move in atf.c
> at a place common for all Rockchip boards and turn on the MMU beforehand.
> 
> Also, both TF-A and OP-TEE hold the device tree passed to them in uncached memory,
> so accessing it is slow. calling fdt_pack() on the device tree before passing
> it squeezes the unused bytes out of the device tree and thus speed up TF-A
> and OP-TEE by a few 100ms.
> 
> [...]

Applied, thanks!

[1/3] ARM: rockchip: move to the load address with the MMU enabled
      https://git.pengutronix.de/cgit/barebox/commit/?id=cd026eb3766a (link may not be stable)
[2/3] ARM: rockchip: boards: leave moving to the load address to atf.c
      https://git.pengutronix.de/cgit/barebox/commit/?id=1c7bb14055c8 (link may not be stable)
[3/3] ARM: rockchip: pack the device tree passed to TF-A and OP-TEE
      https://git.pengutronix.de/cgit/barebox/commit/?id=95addf3ccffa (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



