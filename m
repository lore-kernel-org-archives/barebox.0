Delivery-date: Fri, 27 Sep 2024 12:43:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8Rh-003N5n-1i
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 12:43:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RU-0005u0-Hr
	for lore@pengutronix.de; Fri, 27 Sep 2024 12:43:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=euxeEDDsN0V2fVUqwK9MdSbsR4saer+KmHr12s/Qz7k=; b=SRzGpnJhlqAsS3+jNNgHR6DNGi
	62H/rJ0YniSftOCHexF7SSTlSMOsba8fKoYYFiNaZZae3Omg02q1ZlZkUtuEIXMiuuJWVcTxvDhyY
	Fw7mOR2l3vhOxPZMH5+eQ6gDAFxMyXsAmpwrYzPpwf7K5OK2MTpt/SqVO2ZN+pPvz6bNrvsDzupe9
	GO2oAbdP9zS/Qe2p8FTvfKVUj6jGcsK+ppO4pxaXPtfWGzMxS8npmaG9/aD1PD0x/2QqzIPxkn3nv
	vJuiTu8WxubCeijtfdTfNCRCrBxppkfSbTbhS1sjSBf/cCExNOwakanS0mgLkSXoDpK3h8AXx0q33
	J7QViyRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su8QP-0000000Aqt7-1nhd;
	Fri, 27 Sep 2024 10:42:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Ow-0000000AqVl-02Ka
	for barebox@bombadil.infradead.org;
	Fri, 27 Sep 2024 10:40:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=euxeEDDsN0V2fVUqwK9MdSbsR4saer+KmHr12s/Qz7k=; b=nDVnglU0DrO9C3ManCGZau3RSM
	8Y9QfAcCuM6S1+Ketwe9fAV8/buwZhtfPKO34w9dWPOO6l+HsMUXf4ZRZL19ONPQP6h0FMUbYGlmc
	p8b0Y7gMj9OQM9DfhktjEZqQ/i/nxWhyMak25WNmWUfh0X7FJMnOG+y6sbqHFvbxAr8hztCQF4arU
	e0zliF7ON+/MJhvTu7oEW4WGvlcNV4Rklpd/De+Mng/xe4vlVzmKb4ebbyXpPsYZXN2eKGZdYpa2H
	ZBOIxokmk6AFOy1eaznR9iFXAdS9ebPr2urchlaMzZnaKhN7nB/ykTCjiPkq7elYPl957wDdG3yzk
	5KGDHBqA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Os-00000002Kcm-0XQf
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 10:40:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Or-00043Q-PD; Fri, 27 Sep 2024 12:40:37 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Or-001u4E-Cg; Fri, 27 Sep 2024 12:40:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-000PJg-1V;
	Fri, 27 Sep 2024 12:37:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2024 12:37:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240927-vop2-v2-12-dc8dcfc651d5@pengutronix.de>
References: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
In-Reply-To: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727433454; l=1708;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=NVb0p5g2PTsnf+sUrbNDSF72K4LWutHSXk2wmmFdDlU=;
 b=GsMjsG4YEuVVQXHnFFo0lFkf4yo+hdNH5yqS1D4WFfXYzkVIMv9dIo+ydyUqJmtD+vUiLAH2v
 p0C3ISasTDVA/bIDjH4Ehy+rr893qg7n+PdOHBs9aGCJWN4swvf4e+N
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_114038_322446_7F6817A7 
X-CRM114-Status: GOOD (  13.01  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 12/15] fbconsole: Adjust fbconsole names for overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fbconsole.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 01a091d07a..eec524318f 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -1,4 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt)     "fbconsole: " fmt
+
 #include <common.h>
 #include <errno.h>
 #include <malloc.h>
@@ -564,9 +567,24 @@ int register_fbconsole(struct fb_info *fb)
 	struct fbc_priv *priv;
 	struct console_device *cdev;
 	int ret;
+	const char *fbname;
 
 	priv = xzalloc(sizeof(*priv));
 
+	/*
+	 * fbconsoles are usually just numbered and happen to use the same
+	 * number as the fb they are registered on, so we have a nice match.
+	 * With overlays we can also have fb names like fb0_0 (for the first
+	 * overlay on fb0), and we want to have this name in the corresponding
+	 * fbconsole. Skip the "fb" though to keep the existing fbconsole name
+	 * for the non overlay framebuffers for compatibility.
+	 */
+	fbname = dev_name(&fb->dev);
+	if (strncmp(fbname, "fb", 2))
+		pr_notice("unexpected fb name %s\n", fbname);
+	else
+		fbname += 2;
+
 	priv->fb = fb;
 	priv->x = 0;
 	priv->y = 0;
@@ -578,8 +596,8 @@ int register_fbconsole(struct fb_info *fb)
 	cdev->tstc = fbc_tstc;
 	cdev->putc = fbc_putc;
 	cdev->getc = fbc_getc;
-	cdev->devname = "fbconsole";
-	cdev->devid = DEVICE_ID_DYNAMIC;
+	cdev->devname = basprintf("fbconsole%s", fbname);
+	cdev->devid = DEVICE_ID_SINGLE;
 	cdev->open = fbc_open;
 	cdev->close = fbc_close;
 

-- 
2.39.5



