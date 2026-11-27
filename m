Delivery-date: Fri, 27 Nov 2026 11:07:52 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xWsrw-003n3X-2K
	for lore@lore.pengutronix.de;
	Fri, 27 Nov 2026 11:07:52 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 38773205ABC
	for <lore@pengutronix.de>; Fri, 27 Nov 2026 11:07:52 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=elRD4ltj;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Jil0+3Vh;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795774072;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=a3my2p3cC03O1AY4oTdm0ROCp7mwkf6ppkW16aNkCCE=;
	b=TH5vKNGq6v0aCyc+towBFkTa+mVlEhU+C983ngL4K7ZJP0RlU8zpCVJcSY6MbGtxnW3kDB
	0PFuAVQ4JYKlrXx6cOxB9LCkt3ec5fSacJznw+HiFqCt6giyd9kA46bdhBJihHeVgc3Ceu
	on/VvaeTMLlp7y3p+hufmAWzL7FKqpRyJFEDV+BfcwdL3gqryJNtYSULnJkkExjzyC2J+G
	aDDhlM2+SCn7zB9e+1gPB/y9FWMt52xeqN3pmbA2ujnb9mQ/UiZtR7KGh7FXMmncz8fXcG
	/zXbZlfqREQ2HdD0ZXkeoQXmNKeC6MFTGpreLnSiILMtz8pdzvz2/37L+Sx3bw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=elRD4ltj;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Jil0+3Vh;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795774072; a=rsa-sha256;
	cv=pass;
	b=J7C6H7MZFA8Z774tlELrqTfk4vexm0SBKAj+2C/zUn+0HpgZnPcxmpaxCD+eAbbGidbczI
	OaEbJGRKqvdVczeawu24wfqcD4J5NFaBTM3l4quYHiQAy6gPbtQZq4nNgR0Jw/6x7mXyP8
	74CyC4DDY7gbJmTU2dBHykRXDhVNIIQ0EJsfgmMNwhBxv/WMCaTW328lqvioKk4D5HK5lt
	aYXpibyfkh0cMQJ8SqVEaKtRa7bRY8NIF/Z/+pi0HDgwfLcAm5FxpyCmQGPEV4R2DO9vGm
	Jah79UD1SIzT4K9sM/+2rCPpc91BPob50lJfGGyUQdDV/provMfe34JskNVBEg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=a3my2p3cC03O1AY4oTdm0ROCp7mwkf6ppkW16aNkCCE=; b=elRD4ltjBeA7Pl
	1UA1NJXer8BzkAcyIm1ktxFWfu6Bb7PHGCVgxLP/nP49KmDFlkwAz3S9tEgqfIFo+wXeuMtESguIw
	cEBf50QqCiMpN7Y7Xw1c2f7x53svQicStg7W/fvTdyUGEwUrnd4n0dSqbyhnOiyRA+dCrKOCgje6u
	gUXJZX/uKgWwPnJiXjVVBUDdj30TTuSX4fvL+VRqpuLyJhr4/je/DjKrvfuhMNP7BGKsu336B7gJx
	EBIwKJRq1sjBYFAOsBiI5rxCgWYqtyOwIwGOx+5OuYnGuKasHDo9K+h/BYd7xqXoZ/9QfumbPYAfy
	e2cXMsZNCDxTnrFou+XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWsT3-0000000FTCB-2laf;
	Fri, 27 Nov 2026 09:42:09 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWsSz-0000000FT8E-3pP2
	for barebox@lists.infradead.org;
	Fri, 27 Nov 2026 09:42:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id ECE2C205AC0;
	Fri, 27 Nov 2026 10:42:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795772520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=a3my2p3cC03O1AY4oTdm0ROCp7mwkf6ppkW16aNkCCE=;
	b=Jil0+3VhLdzcj2SPBXmPfAreJcR5hywTKeX709J1ouvp+t1s8JmoJtxgLAGW3bFpKd+tyj
	96qU43+M6J8DUF0B1m4KSb/SzLTZHVQYEybB5HwMJ0Mg9LXJneyHHhD5n8vV6JiJLhOCxI
	cFE4F6l22NLaZJeaO25YjW559UG89S2YyMRPuF5Luk++W0Hnqh/K4l8JMs6VjQH8mM+5u+
	FBFxFTaLPhjv5cWZveaKZIfgN5jVlmYw0VnyvsXMpewmSdX/MaTVvinTDrHBqF3bbWcfrE
	KKIhpAvUP3FEVjNDMkTnkewMMwNJaa2hgi8sLX23TsrOGl05FzUAn4rR2SkuDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795772520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=a3my2p3cC03O1AY4oTdm0ROCp7mwkf6ppkW16aNkCCE=;
	b=TEQnYBW6cGdQHTHWQxf1NTEm0Trc3hxS3jd7Ud62CyFc5GMBxnp0LYUpl7aWdzOF8zJ3l/
	7crH6ZhSuEfrLsajua0lKsuuAEA5y1xk8ihljWUnKgluGauDjQI491g9xi2hfCmmcuNZcE
	0nuFs3O1FLwtV3pf58n5T9WWdgZ2jgznjI+3uOd9gVN0RZG0ftkiUo2JE4OT6auOZW4rXt
	CbiJ9rgus0YlisJVHWjQdIsb0DCZuUmRkC1PVw/nq0ua+E34rYnifoYN1r71ab3btXP1EO
	CahEf0FHxtEu1fXKvIcjUKADzfsNnxw2ST03ymC0zG+MAytwN1/7NsUcncm5vA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=f.diener@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795772520; a=rsa-sha256;
	cv=none;
	b=JhF+yCUvUnZCcGmRB0ES+j5+rm/e6uVjEQzpyGiR1jkermfgmaYpARs4lzBNkUnaTJuUkC
	h6xErYB3hs3ryiJeJv560WNVWIUzFEFIRFUPlA8lbnrIPRvtG5U8cE/seS70QJvTvzxkLu
	RlsJjlAFHrLJ3RdlNqB+oZAppolyUkIq6l12nh4LDeOM55JXInVxXDAxHrRZPFymshfOUW
	0HJf9NwVfvbXE8Kx68caTE/TvuMHMnbJwRkWX5wcFPzipWZS1R2FBLgXlgz6RDCYSNNHLZ
	CJqBavhWnBdunyHvYi6oFQ1FjylMWTi78kP5JPNP0+92Kn+3tuSBGw9KVqeswQ==
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.2])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <f.diener@pengutronix.de>)
	id 1xWsSu-001iwi-2q;
	Fri, 27 Nov 2026 10:42:00 +0100
From: Freimut Diener <f.diener@pengutronix.de>
Date: Fri, 27 Nov 2026 10:42:03 +0100
Subject: [PATCH 5/5] ARM: nxp-imx93-frdm: select DDR timings at boot
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261127-imx93-frdm-2cs-ddr-v1-5-64f5a99b3e4b@pengutronix.de>
References: <20261127-imx93-frdm-2cs-ddr-v1-0-64f5a99b3e4b@pengutronix.de>
In-Reply-To: <20261127-imx93-frdm-2cs-ddr-v1-0-64f5a99b3e4b@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Freimut Diener <f.diener@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_014206_109945_6611E427 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Build both timing tables into the same image so it can boot
    i.MX93 FRDM boards with either single-rank or dual-rank 2 GiB LPDDR4. Try
    the 2CS table first using imx93_ddr_init_try(). A PHY training failure returns
    to the probe loop so it can try the 1CS table. After successful training,
    the helper checks the rank density in MR8 a [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [185.203.200.13 listed in list.dnswl.org]
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
X-Stat-Signature: 3gddktob636xuze1adrqt3paux33k1eu
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:900:1d::77:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[f.diener@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[f.diener@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	RCVD_IN_DNSWL_NONE(0.00)[185.203.200.13:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 38773205ABC

Build both timing tables into the same image so it can boot i.MX93
FRDM boards with either single-rank or dual-rank 2 GiB LPDDR4.

Try the 2CS table first using imx93_ddr_init_try(). A PHY training
failure returns to the probe loop so it can try the 1CS table. After
successful training, the helper checks the rank density in MR8 and
power-cycles DDRMIX only if that density does not match the table.

Stop before handing off to TF-A if neither timing table matches.

Signed-off-by: Freimut Diener <f.diener@pengutronix.de>
---
 arch/arm/boards/nxp-imx93-frdm/Makefile   |  2 +-
 arch/arm/boards/nxp-imx93-frdm/lowlevel.c | 24 +++++++++++++++++++++++-
 drivers/ddr/imx/imx9_ddr_init.c           | 27 +++++++++++++++++++++++++++
 include/soc/imx9/ddr.h                    | 16 +++++++++++++---
 4 files changed, 64 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/nxp-imx93-frdm/Makefile b/arch/arm/boards/nxp-imx93-frdm/Makefile
index 82e7bbc821..992910c317 100644
--- a/arch/arm/boards/nxp-imx93-frdm/Makefile
+++ b/arch/arm/boards/nxp-imx93-frdm/Makefile
@@ -1,2 +1,2 @@
-lwl-y += lowlevel.o lpddr4x_1cs_2gb_timing.o
+lwl-y += lowlevel.o lpddr4x_1cs_2gb_timing.o lpddr4x_2cs_2gb_timing.o
 obj-y += board.o
diff --git a/arch/arm/boards/nxp-imx93-frdm/lowlevel.c b/arch/arm/boards/nxp-imx93-frdm/lowlevel.c
index d797b3b215..d174bd19a2 100644
--- a/arch/arm/boards/nxp-imx93-frdm/lowlevel.c
+++ b/arch/arm/boards/nxp-imx93-frdm/lowlevel.c
@@ -13,6 +13,28 @@
 
 extern char __dtb_z_imx93_frdm_start[];
 extern struct dram_timing_info frdm_imx93_dram_timing_1cs;
+extern struct dram_timing_info frdm_imx93_dram_timing_2cs;
+
+static const struct {
+	u8 density;
+	struct dram_timing_info *timing;
+} frdm_drams[] = {
+	{ 0x4, &frdm_imx93_dram_timing_2cs }, /* 8 Gbit per rank */
+	{ 0x6, &frdm_imx93_dram_timing_1cs }, /* 16 Gbit per rank */
+};
+
+static void frdm_imx93_dram_init(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(frdm_drams); i++) {
+		if (!imx93_ddr_init_try(frdm_drams[i].timing,
+					frdm_drams[i].density))
+			return;
+	}
+
+	panic("No matching FRDM i.MX93 DRAM timing\n");
+}
 
 static noinline void frdm_imx93_continue(void)
 {
@@ -27,7 +49,7 @@ static noinline void frdm_imx93_continue(void)
 	putchar('>');
 
 	if (current_el() == 3) {
-		imx93_ddr_init(&frdm_imx93_dram_timing_1cs, DRAM_TYPE_LPDDR4);
+		frdm_imx93_dram_init();
 		imx93_load_and_start_image_via_tfa();
 	}
 
diff --git a/drivers/ddr/imx/imx9_ddr_init.c b/drivers/ddr/imx/imx9_ddr_init.c
index 9163b289ce..f96873b3c9 100644
--- a/drivers/ddr/imx/imx9_ddr_init.c
+++ b/drivers/ddr/imx/imx9_ddr_init.c
@@ -30,6 +30,7 @@
 #define REG_DDR_SDRAM_MPR5	(MX9_DDR_CTL_BASE + 0x290)
 
 #define REG_DDR_ERR_EN		(MX9_DDR_CTL_BASE + 0x1000)
+#define REG_SRC_DDRC_SW_CTRL			(MX9_SRC_BASE_ADDR + 0x1020)
 #define REG_SRC_DPHY_SW_CTRL			(MX9_SRC_DPHY_BASE_ADDR + 0x20)
 #define REG_SRC_DPHY_SINGLE_RESET_SW_CTRL	(MX9_SRC_DPHY_BASE_ADDR + 0x24)
 
@@ -699,3 +700,29 @@ int imx9_ddr_init(struct dram_timing_info *dram_timing, enum dram_type dram_type
 
 	return 0;
 }
+
+int imx93_ddr_init_try(struct dram_timing_info *dram_timing, u8 expected_density)
+{
+	int ret;
+	u32 density;
+
+	ret = __imx93_ddr_init(dram_timing, DRAM_TYPE_LPDDR4);
+	if (ret)
+		return ret;
+
+	density = FIELD_GET(GENMASK(5, 2), lpddr4_mr_read(1, 8));
+	if (density == expected_density)
+		return 0;
+
+	/* Power-cycle DDRMIX before trying another timing table. */
+	setbits_le32(REG_SRC_DPHY_SINGLE_RESET_SW_CTRL, BIT(0));
+	setbits_le32(REG_SRC_DDRC_SW_CTRL, BIT(31));
+	udelay(50);
+	clrbits_le32(REG_SRC_DDRC_SW_CTRL, BIT(31));
+	setbits_le32(REG_SRC_DDRC_SW_CTRL, BIT(0));
+	udelay(10);
+	clrbits_le32(REG_SRC_DDRC_SW_CTRL, BIT(0));
+	udelay(10);
+
+	return -ENODEV;
+}
diff --git a/include/soc/imx9/ddr.h b/include/soc/imx9/ddr.h
index bb3864f8c6..e0a69043fb 100644
--- a/include/soc/imx9/ddr.h
+++ b/include/soc/imx9/ddr.h
@@ -8,12 +8,22 @@
 
 int imx9_ddr_init(struct dram_timing_info *dram_timing, enum dram_type dram_type);
 
-static inline int imx93_ddr_init(struct dram_timing_info *dram_timing,
-				 enum dram_type dram_type)
+/* Try an LPDDR4 timing table and power-cycle DDRMIX if the density differs. */
+int imx93_ddr_init_try(struct dram_timing_info *dram_timing,
+		       u8 expected_density);
+
+static inline int __imx93_ddr_init(struct dram_timing_info *dram_timing,
+				   enum dram_type dram_type)
 {
 	ddr_get_firmware(dram_type);
 
-	if (imx9_ddr_init(dram_timing, dram_type))
+	return imx9_ddr_init(dram_timing, dram_type);
+}
+
+static inline int imx93_ddr_init(struct dram_timing_info *dram_timing,
+				 enum dram_type dram_type)
+{
+	if (__imx93_ddr_init(dram_timing, dram_type))
 		hang();
 
 	return 0;

-- 
2.56.0



