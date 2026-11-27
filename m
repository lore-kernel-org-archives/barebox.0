Delivery-date: Fri, 27 Nov 2026 11:11:10 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xWsv8-003n5q-1y
	for lore@lore.pengutronix.de;
	Fri, 27 Nov 2026 11:11:10 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DED18205A77
	for <lore@pengutronix.de>; Fri, 27 Nov 2026 11:11:09 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hN7apgBL;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=WCGvaEsD;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795774270;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=u60SRuIIh7J0aMADDZe7XlWnIGd+gSNi1pJLVoTvIr4=;
	b=I8yyvfGKbX+2613lG2K0yaMMdJOCFK5mEeFjyRkfu4d5FBoU7uoldAWcYbm//zeYRA6Zf0
	HQ5dTAhvgXaerQJ+olOmS0uFKQ0hMnzCgi/J3fieu5FNhmmW4R1OnQ6jY634lwULzCiPZc
	stcbVc5dKjF+fZliQrVC+fIFsPPPBdU3A5XhALCxiO3bMAvcuDsHI37nDxyda287CiPWX5
	8cc7CTEg8IwIDNo4nP/fHNGExaWkt5H7jOFVrmA/64S3/Ef3X6hDDtC2iy5pqfZIMySinb
	wdEgG8h+hpGrkIZGWo0FAowAPFiu4m3Js6PjigsuoxTcn9q1Exi9/H3lcasR9g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hN7apgBL;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=WCGvaEsD;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795774270; a=rsa-sha256;
	cv=pass;
	b=LL8vXEeiqnZxI9DyCX/8BXCO6CCLKgn3H5igwM+euUWMMzFiHA9Fg9liTVH3cNRnBypZDw
	WseQmU/spgxRlEuhuGutn8APblIH7DPi/SswTx1UKtLaj7tcrpiIvbSWJvSChxMX75SvPb
	JYaw3VEdrNlt5kLTZol7ORhidjLcxtrKe59L1ZOMdX1zzk97oV0vLrsX4qVf22lpqfgSVT
	BSLjFb/Pt6lldL2E7CVtbnbipXZ7NBfiX9u5gQm1VPLhPbU3t56odOR/cmkpDM5OJ1dsXR
	6X9FLBNBfUQG941CDH5W1VT3Efo/HsuTt4Fg+cKCO/LH6HdG4BfqVp+Nbqrx8A==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=u60SRuIIh7J0aMADDZe7XlWnIGd+gSNi1pJLVoTvIr4=; b=hN7apgBLl+K8SW
	GmwddYDgV0hgFLb4MiIkKAKldt1XzHMnXDmCcFo5CcK2q/WfHuc4mDKVjkTsxk938WjuXyOEHTzJw
	r/3zPn0BpHt6gBP2qdK5muyBcVWKv92ga/MJ5mZxUvCLoRLumcH9h6WDYnJzzpWvAYwNE7NHV8DWr
	bvlPzI+dfxJyikoCpONMZHIM8AID6aj2hrTYOGKECnxHZY2qzYM9qBwun17sB54S4Q8pJvoTq/O3V
	yIq2FvWWXRar3U41h9+XG2DNc1rKgFbRl3EmBYQsEzgiQU8ifupwbnDTJ6okS5tZG1KkH1MXwB/iQ
	Ea86Xgd6kfh7ucTg4Qeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWsT3-0000000FTAn-020e;
	Fri, 27 Nov 2026 09:42:09 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWsSw-0000000FT6h-1nOz
	for barebox@lists.infradead.org;
	Fri, 27 Nov 2026 09:42:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 98802205A77;
	Fri, 27 Nov 2026 10:42:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795772520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u60SRuIIh7J0aMADDZe7XlWnIGd+gSNi1pJLVoTvIr4=;
	b=WCGvaEsDQe4aARu6YnplL4T02FcG/QVLtxzBMZEHR6/Y5ZchdkaB5caTp9BwDuJuubJ26X
	aQVqU6sl5E/jAGjMqs6+IT8VqFsy3JxecNrdozSRw5t91c5E/T94ojrmNiHi0M4BwpGVSG
	q7coQRFKTyd54I+DEmzkjuetaO9+UmcrOf5M+K2OyYV5ajuXU20LPU3b2WkAXlQ04+jq1y
	ZF30YNjUeP8CfgmyibtLW95Oro1Fn9+buzveCMKOWxc7Xkq6ooBqP+tfTQ6gUW7MY+wY3y
	dfpahBuN+BL0oHINv5/KnkC2n2PppF/KkpC7XhYF7nQovhtbRGDsHSXdT0DsGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795772520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u60SRuIIh7J0aMADDZe7XlWnIGd+gSNi1pJLVoTvIr4=;
	b=APi4GKWcml6u/QyyxZcW5usJbg3tAmLd0qtUwBms3PUR4iVs49qwH+0NTH62bWM7iQSk27
	A+YeH0scgxKrNIKNtqbzHcBj60VhCiAdN4gzSvnILsfBGPHAhs5DGBQcqpwS6Tk4DUM8Ek
	KUmwT9/N6i7u3VTQxWniKstJS+PlTIx/zWSCfZPb6vR9gcSSlOPB2OKJNVcWSEAOEY+rYW
	xKPDYlLH1pVLH4sQFbJIaE9xkC3inoDtKyhaiOK82aBnne6R3JESXusWjicM5mlYEwG3lg
	pJsAvgdGh1MziBTWiT4D09ggEpGHL6BGqQigl22LqociOvBg4FtIQ4nITUSHfA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=f.diener@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795772520; a=rsa-sha256;
	cv=none;
	b=YIQ/Lzr/byMCuv4Z4HAL9vzPL1fzdcPBTf20M5MlTLr5G2T47gAT4hT5xyHpRHAzRCoIYU
	p/doOd7HlBn9fq5iJmkGQ+5BX49vkUL2bVqATzkULKVY1fAwmUi32NbLdZU6Ei+m+HztJd
	a8wASZjg8bP9qeIdK4e1ohwtCZRdH4ed4Vzg4vcMsmsFp28Pf8+R7Oo5M52AGSnGWl2YxB
	SpkBqdjnv1uQcbOBy8tbMybhRM8IEBpqGQIY0miCQSwv/+xgrKAdGnBGfMY05a4eMsnmuU
	N5Sn0N05uvP1xYAMK+yxB9jhNS+3wGO5BgzyyZvgOgNrQMK9HMsxQXcCNPUu2Q==
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.2])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <f.diener@pengutronix.de>)
	id 1xWsSu-001iwi-1i;
	Fri, 27 Nov 2026 10:42:00 +0100
From: Freimut Diener <f.diener@pengutronix.de>
Date: Fri, 27 Nov 2026 10:41:59 +0100
Subject: [PATCH 1/5] ARM: nxp-imx93-frdm: name the existing DDR timings for
 1CS
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261127-imx93-frdm-2cs-ddr-v1-1-64f5a99b3e4b@pengutronix.de>
References: <20261127-imx93-frdm-2cs-ddr-v1-0-64f5a99b3e4b@pengutronix.de>
In-Reply-To: <20261127-imx93-frdm-2cs-ddr-v1-0-64f5a99b3e4b@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Freimut Diener <f.diener@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_014202_952539_98A8E584 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Make room for a second timing table by adding a 1CS infix
   to the existing LPDDR4 timing filename and exported symbol. Update the build
    and board references without changing any timing values. Signed-off-by: Freimut
    Diener <f.diener@pengutronix.de> --- arch/arm/boards/nxp-imx93-frdm/Makefile
    | 2 +- arch/arm/boards/nxp-imx93-frdm/lowlevel.c | 4 ++-- .../nxp-imx93-frdm/{lpddr4x_2gb_timing.c
    = [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Stat-Signature: wocbkqdnjrtr9ybjmqr6caz9i9iyonu4
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[f.diener@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[f.diener@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: DED18205A77

Make room for a second timing table by adding a 1CS infix to the
existing LPDDR4 timing filename and exported symbol. Update the build
and board references without changing any timing values.

Signed-off-by: Freimut Diener <f.diener@pengutronix.de>
---
 arch/arm/boards/nxp-imx93-frdm/Makefile                               | 2 +-
 arch/arm/boards/nxp-imx93-frdm/lowlevel.c                             | 4 ++--
 .../nxp-imx93-frdm/{lpddr4x_2gb_timing.c => lpddr4x_1cs_2gb_timing.c} | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/nxp-imx93-frdm/Makefile b/arch/arm/boards/nxp-imx93-frdm/Makefile
index ac419ef7c2..82e7bbc821 100644
--- a/arch/arm/boards/nxp-imx93-frdm/Makefile
+++ b/arch/arm/boards/nxp-imx93-frdm/Makefile
@@ -1,2 +1,2 @@
-lwl-y += lowlevel.o lpddr4x_2gb_timing.o
+lwl-y += lowlevel.o lpddr4x_1cs_2gb_timing.o
 obj-y += board.o
diff --git a/arch/arm/boards/nxp-imx93-frdm/lowlevel.c b/arch/arm/boards/nxp-imx93-frdm/lowlevel.c
index bc48160431..d797b3b215 100644
--- a/arch/arm/boards/nxp-imx93-frdm/lowlevel.c
+++ b/arch/arm/boards/nxp-imx93-frdm/lowlevel.c
@@ -12,7 +12,7 @@
 #include <mach/imx/esdctl.h>
 
 extern char __dtb_z_imx93_frdm_start[];
-extern struct dram_timing_info frdm_imx93_dram_timing;
+extern struct dram_timing_info frdm_imx93_dram_timing_1cs;
 
 static noinline void frdm_imx93_continue(void)
 {
@@ -27,7 +27,7 @@ static noinline void frdm_imx93_continue(void)
 	putchar('>');
 
 	if (current_el() == 3) {
-		imx93_ddr_init(&frdm_imx93_dram_timing, DRAM_TYPE_LPDDR4);
+		imx93_ddr_init(&frdm_imx93_dram_timing_1cs, DRAM_TYPE_LPDDR4);
 		imx93_load_and_start_image_via_tfa();
 	}
 
diff --git a/arch/arm/boards/nxp-imx93-frdm/lpddr4x_2gb_timing.c b/arch/arm/boards/nxp-imx93-frdm/lpddr4x_1cs_2gb_timing.c
similarity index 99%
rename from arch/arm/boards/nxp-imx93-frdm/lpddr4x_2gb_timing.c
rename to arch/arm/boards/nxp-imx93-frdm/lpddr4x_1cs_2gb_timing.c
index 84164094d8..083e85c899 100644
--- a/arch/arm/boards/nxp-imx93-frdm/lpddr4x_2gb_timing.c
+++ b/arch/arm/boards/nxp-imx93-frdm/lpddr4x_1cs_2gb_timing.c
@@ -1890,7 +1890,7 @@ static struct dram_fsp_msg ddr_dram_fsp_msg[] = {
 };
 
 /* ddr timing config params */
-struct dram_timing_info frdm_imx93_dram_timing = {
+struct dram_timing_info frdm_imx93_dram_timing_1cs = {
 	.ddrc_cfg = ddr_ddrc_cfg,
 	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg),
 	.ddrphy_cfg = ddr_ddrphy_cfg,

-- 
2.56.0



