Delivery-date: Sun, 08 Nov 2026 11:12:23 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPzss-008e4l-2Q
	for lore@lore.pengutronix.de;
	Sun, 08 Nov 2026 11:12:23 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F16AB20183A
	for <lore@pengutronix.de>; Sun, 08 Nov 2026 11:12:22 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=GS4zilk2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794132742;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=atmH7JbTcnGariQ14EignSpLST6NkgDXy8U+NMtf7VE=;
	b=bXqsioPsuVFpi5tn1d9hhbvozfFcaUvwA+SP+BLJFtHWA+7iDjZ3TK+Km5a2VrnrWCgHck
	vlqtS2XMktyQ+zBOdxKxaDmpZFAEQMLdvPakuPuUzpjKwd6lmt8IWAuypwK80XwSIxgS0i
	CgRxQkNl4FWdUqPC7AdWcPDyUMUGrb3l8hYJaxV+vXzXKEMqX2LryZs+wgW4LxREppO/H0
	+1TXq67plWvqRZoHnyHTT8yjUF/yoREmGv4Ga1PhQe5fvuklKmqEq9jEIDywQFn5JuW0Uh
	gq9oB0+7qlCRzTGKJeUU+zZn7vvWxEyOQVq88wcXJkomtkwHek40fzCO0O8aEA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=GS4zilk2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794132743; a=rsa-sha256;
	cv=none;
	b=hJj4JDBXkhrzxOPGYKxtjVmFAbnhTNbAJ34LMHV8UbDdODy8kT+Uu8PySEaaRcWW4L+I5f
	iLEBYUg93xzWZsVgYBqxqdLujF4fGIXef4/J8ChR4Xsy8t4Qn4YxymYB0aLQlkuprXkEzR
	xI++48Zxb0nzl+1N4ve7EAzRzuPWzOGanKsXWZd+9Gz/fOqXxfFSK1tnWmArplpQxyhHe/
	HT+AtajlAYrWmwuj6bXJ/k9iNfmZsRoAh8N7+c7cjmaAqh05kfJHriRPVz/di2uygJ/Rny
	vN+bBoGvf0puNNYqWzaDaZhZBJkC3WoRKR6XvTzR/P3dR4OEivUlJWYkfgGZbQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=atmH7JbTcnGariQ14EignSpLST6NkgDXy8U+NMtf7VE=; b=GS4zilk2z1zvVp
	aI+t+nV3rwmVgpKe/P7BCxmD6dkaJtFXrxXDEhTsnX6dQQ5dvz9xGuuQ956BKQRrPsW96CPxKiIOv
	D2F3OZZ9bwP4dUUH5AA/lYwNHAbpNMld5kQrjQceDmlCMwOSoGLFPKQjfz87ybcPUnz0CP3l0z5sn
	5v+Eqj4mTEZBonvgg6lRvsd+Q/bHDvleANgdVLJRyGw3kPnYqG3ht83SLVYrqu/9pGo9Udxlqlu/n
	dUbQdcAIVlIyAU4FLIrBsma39ghIV1p5Xj/aKKaMSnx2gjRqF4TnJs7nSlb+QEDmVmC7zKtBmDfsz
	UZNUJHX1EVNEfu62ksTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzro-0000000Fwv8-0oO1;
	Sun, 08 Nov 2026 10:11:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzrl-0000000Fwtb-10wa
	for barebox@lists.infradead.org;
	Sun, 08 Nov 2026 10:11:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xPzrj-0006Qx-Hy; Sun, 08 Nov 2026 11:11:11 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 3/4] video: dw_mipi_dsi: give transfers in video mode a frame to complete
Date: Sun,  8 Nov 2026 11:10:53 +0100
Message-ID: <20261108101110.1270196-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261108101110.1270196-1-a.fatoum@barebox.org>
References: <20261108101110.1270196-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_021113_285686_57E482D2 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Once the host is in video mode, DCS reads and long writes
   that don't fit into the horizontal blanking are deferred to the vertical blanking,
    so they can take up to a frame. On the STM32MP157C-DK2 at 49 Hz, i.e. 20
   ms per frame, a DCS read took up to 17.3 ms and a 13 byte write up to 19.9
    ms depending on when in the frame it was issued, and the occasional read
   failed with [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: F16AB20183A
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: uwh3fimi34i139txf5gq1yxrzfuh5hpi

Once the host is in video mode, DCS reads and long writes that don't
fit into the horizontal blanking are deferred to the vertical blanking,
so they can take up to a frame.

On the STM32MP157C-DK2 at 49 Hz, i.e. 20 ms per frame, a DCS read took
up to 17.3 ms and a 13 byte write up to 19.9 ms depending on when in
the frame it was issued, and the occasional read failed with "Timeout
during read operation".

Raise the timeout to 100 ms, which covers a frame down to 10 Hz. This
also covers the init sequence of panels like the ST7703, which is sent
on enable, after the host has switched to video mode.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/dw_mipi_dsi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/video/dw_mipi_dsi.c b/drivers/video/dw_mipi_dsi.c
index c936463261a5..a61a454be989 100644
--- a/drivers/video/dw_mipi_dsi.c
+++ b/drivers/video/dw_mipi_dsi.c
@@ -221,7 +221,8 @@
 #define MAX_RD_TIME_V131(lbcc)		((lbcc) & 0x7fff)
 
 #define PHY_STATUS_TIMEOUT_US		10000
-#define CMD_PKT_STATUS_TIMEOUT_US	20000
+/* in video mode, LP transfers may wait for the blanking of the next frame */
+#define CMD_PKT_STATUS_TIMEOUT_US	100000
 
 enum vpg_mode {
 	VPG_DISABLED,
-- 
2.47.3



