Delivery-date: Wed, 27 Apr 2022 11:40:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nje9V-00GrhK-UR
	for lore@lore.pengutronix.de; Wed, 27 Apr 2022 11:40:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nje9S-0004yV-Nx
	for lore@pengutronix.de; Wed, 27 Apr 2022 11:40:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OfL8/B7/5zRHijZ6Lt2UtQEHIhTjkqoAQN1Ju1Te7zU=; b=wBMjbZyjwu4m4x
	fXPMM48DL0jR7olYlvSpXK6q30c8jqbhw4RBvgwaWvgjSSCtDz5nZZi1kzJSrfzQl9OPYQ9i6NjMQ
	VZq9fNWMYQLF6+VFQVbdvx3SPwzrEORdfFh/MFQzeS/d614zYXMOMQn2nnPmdUjqZjJvm4tTXytLt
	a5NS4ffvb4Rb0RbG2DgCFpz9idF35fCBWRgbOhUhqlj940kzagCy0xvhE5ObhZp5bUTc9ZEnI2DTr
	i59nAowr0ERNdxBLiJHXPnOblRGGcFbganPea6FKrC5CnHPYgKSIdIzV1OnZ8IKRzg9lkloUDYmVE
	QX5Y8wpqSDX98fmTu+9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nje7s-000mlt-RS; Wed, 27 Apr 2022 09:38:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nje7S-000mXt-CX
 for barebox@lists.infradead.org; Wed, 27 Apr 2022 09:37:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nje7P-0004ca-42; Wed, 27 Apr 2022 11:37:55 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nje7P-005Wtj-S1; Wed, 27 Apr 2022 11:37:54 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nje7N-007KTG-9j; Wed, 27 Apr 2022 11:37:53 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 27 Apr 2022 11:37:50 +0200
Message-Id: <20220427093752.1746932-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220427093752.1746932-1-o.rempel@pengutronix.de>
References: <20220427093752.1746932-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_023758_469023_56258792 
X-CRM114-Status: GOOD (  10.45  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/4] ARM: boards: protonic-imx6: make use of
 barebox_set_serial_number()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Replace board specific serial-number fixup with common
barebox_set_serial_number().

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 20 +-------------------
 arch/arm/mach-imx/Kconfig             |  1 +
 2 files changed, 2 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 52cf39917a..0fadd148b4 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -196,30 +196,12 @@ static int prt_imx6_set_mac(struct prt_imx6_priv *priv,
 	return 0;
 }
 
-static int prt_of_fixup_serial(struct device_node *dstroot, void *arg)
-{
-	struct device_node *srcroot = arg;
-	const char *ser;
-	int len;
-
-	ser = of_get_property(srcroot, "serial-number", &len);
-	return of_set_property(dstroot, "serial-number", ser, len, 1);
-}
-
-static void prt_oftree_fixup_serial(const char *serial)
-{
-	struct device_node *root = of_get_root_node();
-
-	of_set_property(root, "serial-number", serial, strlen(serial) + 1, 1);
-	of_register_fixup(prt_of_fixup_serial, root);
-}
-
 static int prt_imx6_set_serial(struct prt_imx6_priv *priv,
 			       struct prti6q_rfid_contents *rfid)
 {
 	rfid->serial[9] = 0; /* Failsafe */
 	dev_info(priv->dev, "Serial number: %s\n", rfid->serial);
-	prt_oftree_fixup_serial(rfid->serial);
+	barebox_set_serial_number(rfid->serial);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 6b962dcf7e..ee313a1502 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -350,6 +350,7 @@ config MACH_PROTONIC_IMX6
 	select ARCH_IMX6
 	select ARCH_IMX6UL
 	select ARM_USE_COMPRESSED_DTB
+	select SERIAL_NUMBER_FIXUP
 
 config MACH_PROTONIC_IMX8M
 	bool "Protonic-Holland i.MX8Mx based boards"
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

