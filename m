Delivery-date: Sun, 16 Aug 2026 20:16:33 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvfPM-003qSb-1D
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 20:16:33 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 011AF201CD3
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 20:16:33 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="r/OLiXuV";
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QhCAymLiGkg5pzjtmBpsrzIpb+N4QhzlFvcVt6wZJdw=; b=r/OLiXuVMpJvYXhdFMCm7zrEGh
	KgUBQFgT/INyGIGuYSnXS1hjKRtsnl0zzD0zvqXWMCH36NqQXwj22egduNnDB5LcS18oJ/4TlnIe9
	SgJvbPWAr8lNdpjkTuaWwxgxqX55sHRTjSmsfKkLbEh60Iw3Lb/329aO2OH7xPxjko62HjL+pHgvl
	Uaa712MweWesX70tUdKuflItfRddzSxIE3G86UoNGzOVbndLYkL2DR3IQYmJHFV+2YNAUNFuO5b//
	1n/nPsdDT7cnf98KkjT5XcQMPHY0R25iznCjBqo20NYR+1KfS62//Ej+N4clfxf92Hu0WmREWzTrf
	W1lKcmhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvf62-00000004wdP-3hl5;
	Sun, 16 Aug 2026 17:56:34 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvf5z-00000004wbp-2ai0
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 17:56:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9DC1D201EA3;
	Sun, 16 Aug 2026 19:56:26 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-001oeT-1F;
	Sun, 16 Aug 2026 19:56:26 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-10vh;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:26 +0200
Subject: [PATCH 06/27] serial: pxa: get the clock from the clk API
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-6-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=2392;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Xg8aA9PPBcB1lrV/ZZzx2bM05ICa+F8fRLRcvBmItHs=;
 b=ajjm/0+F4ELdIHbuEmbVXopAZFUuEaZDRNnhT5mxvbrdJPgwfmZVAoNhKsuAJWJ1XyZrCcTtb
 b2LgMzydSL+DAPOcio4zDJTw4qiO0M+31MiKJsJrpyMmg1gl913OYo+
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_105631_823004_050D687B 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  pxa_get_uartclk() was a per SoC constant, and the PXA25x and
    PXA27x versions of it are gone. Use the clk api to handle clocks. A clk driver
    for PXA is not yet present in the tree, but PXA has no board support currently,
    so we can safely break bisectability here. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: or18zcgp9gy5cuy66fngwkmyxjpq9c6e
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 011AF201CD3

pxa_get_uartclk() was a per SoC constant, and the PXA25x and PXA27x
versions of it are gone. Use the clk api to handle clocks.

A clk driver for PXA is not yet present in the tree, but PXA has
no board support currently, so we can safely break bisectability
here.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_pxa.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/serial/serial_pxa.c b/drivers/serial/serial_pxa.c
index 97342f923e..a0bebef811 100644
--- a/drivers/serial/serial_pxa.c
+++ b/drivers/serial/serial_pxa.c
@@ -9,7 +9,7 @@
 #include <init.h>
 #include <malloc.h>
 
-#include <mach/pxa/clock.h>
+#include <linux/clk.h>
 #include <asm/io.h>
 
 #define RBR		0x00	/* Receive Buffer Register (read only) */
@@ -90,6 +90,7 @@
 struct pxa_serial_priv {
 	void __iomem *regs;
 	struct console_device cdev;
+	struct clk *clk;
 };
 
 static void __iomem *to_regs(struct console_device *cdev)
@@ -124,6 +125,8 @@ static void pxa_serial_flush(struct console_device *cdev)
 
 static int pxa_serial_setbaudrate(struct console_device *cdev, int baudrate)
 {
+	struct pxa_serial_priv *priv =
+		container_of(cdev, struct pxa_serial_priv, cdev);
 	unsigned char cval = LCR_WLEN8;			/* 8N1 */
 	unsigned int quot;
 
@@ -131,7 +134,7 @@ static int pxa_serial_setbaudrate(struct console_device *cdev, int baudrate)
 	writel(IER_UUE, to_regs(cdev) + IER);
 
 	/* write divisor */
-	quot = (pxa_get_uartclk() + (8 * baudrate)) / (16 * baudrate);
+	quot = (clk_get_rate(priv->clk) + (8 * baudrate)) / (16 * baudrate);
 
 	writel(cval | LCR_DLAB, to_regs(cdev) + LCR);	/* set DLAB */
 	writel(quot & 0xff, to_regs(cdev) + DLL);
@@ -154,6 +157,7 @@ static int pxa_serial_probe(struct device *dev)
 	struct resource *iores;
 	struct console_device *cdev;
 	struct pxa_serial_priv *priv;
+	int ret;
 
 	priv = xzalloc(sizeof(*priv));
 	cdev = &priv->cdev;
@@ -162,6 +166,14 @@ static int pxa_serial_probe(struct device *dev)
 		return PTR_ERR(iores);
 	priv->regs = IOMEM(iores->start);
 
+	priv->clk = clk_get(dev, NULL);
+	if (IS_ERR(priv->clk))
+		return PTR_ERR(priv->clk);
+
+	ret = clk_enable(priv->clk);
+	if (ret)
+		return ret;
+
 	dev->priv = priv;
 	cdev->dev = dev;
 	cdev->tstc = pxa_serial_tstc;

-- 
2.47.3



