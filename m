Delivery-date: Tue, 03 Aug 2021 19:01:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAxnB-0008Fu-QE
	for lore@lore.pengutronix.de; Tue, 03 Aug 2021 19:01:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAxnA-0002Pk-Us
	for lore@pengutronix.de; Tue, 03 Aug 2021 19:01:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xeUDlnWn4XMnQY1tA7gY6+u5BCmmOLm+G5l1q+05dsY=; b=zy3TaSFtBSXxD8
	sYxl28c414Eu4R2YAQ50xaNOiBTWXBV6RmpE9S4eD2FkFD33bdRTdqkZJ/PcgY19U4QX6f1dddAzI
	874f9APRvkHm+kS7d3a28X9q+oZoOlMZu6lhu8P74IbliLNfimNuccuiZkMGplCRTe1ktbo8R5xTf
	XfKxhz8bB2ND1rTM5Y65nN72hFAXhKDenyDhfQ1CKJR4Mf/48prybtI8Gg/cWp8sX2NbtSdmhBjRM
	g2Ns/ywTABz4uvegWBSneUCd+o3UhmMZoOZ7fBrXsu+qTIAGiXaufe2w3OtLRUqRd92tQjrEArb0R
	0Ipav1/PEFxD6QwvKhoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAxld-003hwX-9u; Tue, 03 Aug 2021 16:59:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAxlY-003hv5-Mm
 for barebox@lists.infradead.org; Tue, 03 Aug 2021 16:59:46 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mAxlS-0001zL-N1; Tue, 03 Aug 2021 18:59:38 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mAxlS-0008FO-Em; Tue, 03 Aug 2021 18:59:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  3 Aug 2021 18:59:36 +0200
Message-Id: <20210803165937.31608-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210803_095944_781852_4C3A1C54 
X-CRM114-Status: GOOD (  11.48  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] watchdog: imxwd: register explicit warm reset handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With fsl,ext-reset-output and WDOG_B muxed correctly, the i.MX watchdog
will toggle an external signal to effect a PMIC reset.

That's good for normal use, but when exchanging information with the
BootROM over GPRs, a warm reset is required. This is needed e.g. to
set the reboot mode. Support this by defining a second, lower
priority, reset that will never toggle external lines.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/imxwd.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 26c62b7bcb31..a109f6fee712 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -39,6 +39,7 @@ struct imx_wd {
 	struct device_d *dev;
 	const struct imx_wd_ops *ops;
 	struct restart_handler restart;
+	struct restart_handler restart_warm;
 	bool ext_reset;
 	bool bigendian;
 };
@@ -183,6 +184,14 @@ static void __noreturn imxwd_force_soc_reset(struct restart_handler *rst)
 	hang();
 }
 
+static void __noreturn imxwd_force_soc_reset_internal(struct restart_handler *rst)
+{
+	struct imx_wd *priv = container_of(rst, struct imx_wd, restart_warm);
+
+	priv->ext_reset = false;
+	imxwd_force_soc_reset(&priv->restart);
+}
+
 static void imx_watchdog_detect_reset_source(struct imx_wd *priv)
 {
 	u16 val = imxwd_read(priv, IMX21_WDOG_WSTR);
@@ -284,9 +293,16 @@ static int imx_wd_probe(struct device_d *dev)
 
 	priv->restart.name = "imxwd";
 	priv->restart.restart = imxwd_force_soc_reset;
+	priv->restart.priority = RESTART_DEFAULT_PRIORITY;
 
 	restart_handler_register(&priv->restart);
 
+	priv->restart_warm.name = "imxwd-warm";
+	priv->restart_warm.restart = imxwd_force_soc_reset_internal;
+	priv->restart_warm.priority = RESTART_DEFAULT_PRIORITY - 10;
+
+	restart_handler_register(&priv->restart_warm);
+
 	return 0;
 
 error_unregister:
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

