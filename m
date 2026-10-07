Delivery-date: Wed, 07 Oct 2026 12:57:17 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xEPKm-00AuE4-2D
	for lore@lore.pengutronix.de;
	Wed, 07 Oct 2026 12:57:17 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8BA09201D41
	for <lore@pengutronix.de>; Wed, 07 Oct 2026 12:57:16 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="GsMbMH/Z";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=OzfnEGaH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791370636; a=rsa-sha256;
	cv=pass;
	b=fWmJT5xLOeBWOvyPaJr0zzmrkwMzkaPqdGPkXisvk47x85NJpsnFOW9ZRrDePqDAt6KaNn
	YCIonGreXfRG/0pBYKW3TZhMWp532Gj7D8bZr+giUjnRoROXsl7/vERImD4Q1tE7NQJvLn
	XTQYda7k1MjxSnLPiGuSphFGDGFLk1bF4nQPLPZTkllhGLYHUCuymVtOJ3a58//VSR9/OL
	w5yDUkCW3JiGehQYSG3noAdWSC8TbmOBq8JyVOU2TMiCwpCvsc0uH/YqdDryf4l+KaJQwv
	PkDJAY3b+1TTkpRtrdASrZH7uNINb8pzvodwhfL2AZ8R7qxRdV8xkoAYL4BG+A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="GsMbMH/Z";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=OzfnEGaH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370636;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=8MoLMh5YVhNuOMx8NEk9AAE3yl8EqWUhjA63DJKs5Rw=;
	b=GxiwG71F5wvZedxpECroRz8xG0Wu9Y8hVYR4fwcAe2fyaaOktnDMNczSUBI2hzBBdUT+CJ
	HxGSqtGTZktzRS+YpY2B0+fXiw4XxAQeFHCYOWwKSCPr2RJ7CmVrl25jiN6tXDupbaGxzk
	yz9SrPgl2qibdPhx3Kgiky8OSzWAcUJxqkb3iP1vZtnNs9IGjJQuaEEjEokGZrQ9CoDwcA
	io3vhELjKZVxIOWpKcODccF6ItZRXEYVD+i0CSXn79PmVDwS5kBnabz2JhbIpi978Lj4Ta
	YoQkePC2R8DW3tFTTDlUVzK0/wDz4m6LvB00V3cv0bUuEeFOURNrZT0eMCr7ig==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8MoLMh5YVhNuOMx8NEk9AAE3yl8EqWUhjA63DJKs5Rw=; b=GsMbMH/ZRNH3x1fiQMoZE/PXuG
	Q6uHzBuzHZTYLjiwASDEj+B2HC7s5740Vej8PfXtaNro6Wo36nS1O/lHko2XogU85eI/0VqTctriV
	nBG80YL+o0ilfdkNuI7fDezbwVCGxAja/cRBj9l+1V3CiMG15pkzcAOgzdyhVDpFhzXfaWjykRfLQ
	g2HwAK4qN6W+5yQkEGwcxswU+uss+e5qUubqUrW3Ji/NdEsi2Eh1DD4S930/1hpB0ARloSSDoJFmB
	azb48UZPKGUnCOWu2GfJfrxWw5IG/xWkhK4kcVVLFZGllUZxbac5gcRFB7UgtsLmK6j/P/ltFGhoH
	5DQsrHig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJc-00000002FAy-1T5f;
	Wed, 07 Oct 2026 10:56:04 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJR-00000002F62-1Sbt
	for barebox@lists.infradead.org;
	Wed, 07 Oct 2026 10:55:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0044C201EFE;
	Wed, 07 Oct 2026 12:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8MoLMh5YVhNuOMx8NEk9AAE3yl8EqWUhjA63DJKs5Rw=;
	b=OzfnEGaHScUup3Pz41AdGHMBdWvWG9N00VjQo8N5io7VqBcXW1JnqDeDJygr2w1TyYeOj4
	eA4wmJPClix46+DEd7fcIBVpVWOAeRgckdFcNgeAcQkQDkI49fNod+t4i/iXIqW2Eg2a4q
	jab/YEQ1PHmZSOLK5ovZvXnbDJHPhJAojIgf1D6tarsG+OqrU4LqQCDi2gmbaSUVvHWxQM
	iSdaMPQhuYprskn43b6I17jenAJ4QB3VSaD/DPP5JVrVcBLmjkDrbgKhWZZK6uxY7GLvNX
	dMhnA94Cj6Be4KZ+/A9LRwznPnueo+yOvfXja8Knz7HRlUjmWYEEmGJ/QL8ksA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791370548; a=rsa-sha256;
	cv=none;
	b=GvmO1YJogl5JXDy4lIYDopjy0xkMpXyUCulyP7obf/y/0yXxxeRaoumHR5SIjrpL6Uoxu1
	0pI5fIB9/dpQ9dKs+s2FS+O6CsT8sUotAE8tdVG9vVbjSPNR0ahbLAHVMSDnex6JjUAZiR
	rPDIKLlmDTDAGzl+ojcxYvUjKAPwOvRzs8aVDx/F74Ldlg5rajrRoEnxM9vEhfrfE6MKkb
	1+n1k3YXRFXWHhJXhMQa3WVgU0Pq6Q4RUBwSjlkeGXfrLdILkaGpc2OZn07cezd+LhNwur
	glikwSd4qeGlX1v1wnu0Hy0ZF130XJLe9TBYBL6zftZWloAxcHwq0q7+UcsAew==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8MoLMh5YVhNuOMx8NEk9AAE3yl8EqWUhjA63DJKs5Rw=;
	b=HChkFTaQDDBDUNRsVDdpvtsnfj0UsYuxhMRUnVORid9ESffRLjoKzwVhMfFPstH87aCKtm
	XW+a5OgZ3B587bWv6ddlIa1B2nfzI3xhdSHtgpQeDkN52t+WGPTqyWt6wthout6QBpSht1
	AEkB87vDQxABw4dtre2DpusI1/Wzcqhdn4aeU7HLcHEbC5sobgkZ93iONCU0D19sH8THue
	QErh1OWQ7A9nLc9QSMbo/OwrqqHFdE+QkkyztWAKJadx4TPWk18CkBoqgup5lZd++ACbSN
	TbThmHlFEL8jR/ZCk+supGuxcn5pXrAWgNJInjd6UxF2U3peU4fnNYoP9vlFxw==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xEPJL-004haR-2s;
	Wed, 07 Oct 2026 12:55:47 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 07 Oct 2026 12:55:47 +0200
Subject: [PATCH 02/11] mtd: spi-nor: enable module in PBL
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261007-socfpga-agilex5-xload-v1-2-f8fb2d2819da@pengutronix.de>
References: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
In-Reply-To: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_035553_882391_3F0271D7 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Enable the spi-nor module in the PBL to be able to use the
    helper functions in the PBL. This allows to have SPI NOR flash drivers in
    the PBL and load barebox proper from flash. Signed-off-by: Michael Tretter
    <m.tretter@pengutronix.de> --- drivers/mtd/spi-nor/Makefile | 2 +- 1 file
    changed, 1 insertion(+), 1 deletion(-) 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
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
X-Rspamd-Queue-Id: 8BA09201D41
X-Stat-Signature: ja39a786qyi1asdaeyst49hq5bqd41o1

Enable the spi-nor module in the PBL to be able to use the helper
functions in the PBL. This allows to have SPI NOR flash drivers in the
PBL and load barebox proper from flash.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/mtd/spi-nor/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index 61cf789182fd..54d870a6f45c 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -1,4 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_MTD_SPI_NOR)		+= spi-nor.o
+obj-pbl-$(CONFIG_MTD_SPI_NOR)		+= spi-nor.o
 obj-$(CONFIG_SPI_CADENCE_QUADSPI)	+= cadence-quadspi.o
 obj-$(CONFIG_SPI_SYNOPSYS_OCTALSPI_NOR) += dw-ospi-nor.o

-- 
2.47.3



