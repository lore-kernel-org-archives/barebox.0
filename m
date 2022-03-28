Delivery-date: Mon, 28 Mar 2022 14:11:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYoDg-008y9v-8h
	for lore@lore.pengutronix.de; Mon, 28 Mar 2022 14:11:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYoDi-0000yV-IQ
	for lore@pengutronix.de; Mon, 28 Mar 2022 14:11:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nXYDu9mHTDiqd3s9AFttwjCBdsSHT3zw8qPs/l6HPVg=; b=ubrqSgiOwkJBV/
	1I0SZSR+4lKaYBnQkYFZtF0YdhUAOo2b6T3DU3BBe4qXi7mJbjCtKeWIB+AhZhHMLuNoTwMagtTke
	3IT3UUK7mK7/glHD8U3WRMcx2qrn7O8Cxzw+jtoEzhBLMXMcyxqR6fhv+yxye6Zvq6hL69Z5NJYNX
	yrg4AYn4F9RfMJNPsXxyIwTWlv69s1RwomW2/qQdMh+YH6tR6j+02UHAfJU0jcExQQf5IC72lYvim
	p13GvV8H8fq+ZS2NO8SP301sHB7+2cU+0x7G7oaKP5UpAxSCgViX+IcUIYRRsN0a2+8LvIWoryXWb
	OlVHWSwXt7i+R7eNY9Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYoCE-008V4a-G3; Mon, 28 Mar 2022 12:10:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYoC9-008V3O-Od
 for barebox@lists.infradead.org; Mon, 28 Mar 2022 12:10:03 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nYoC5-0000gU-Vq; Mon, 28 Mar 2022 14:09:57 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nYoC5-00A4up-Gs; Mon, 28 Mar 2022 14:09:57 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 28 Mar 2022 14:09:56 +0200
Message-Id: <20220328120956.2402132-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_051001_825208_BD7B72BC 
X-CRM114-Status: GOOD (  15.63  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 1/1] ARM: boards: protonic-imx6: fix file system access
 warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We should not access a file system from the poller. So, do it from the
worker. This patch will fix warning on FS access for Protonic board
code.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index def155e6ba..c2706f92ff 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -21,6 +21,7 @@
 #include <sys/stat.h>
 #include <unistd.h>
 #include <usb/usb.h>
+#include <work.h>
 
 #define GPIO_HW_REV_ID  {\
 	{IMX_GPIO_NR(2, 8), GPIOF_DIR_IN | GPIOF_ACTIVE_LOW, "rev_id0"}, \
@@ -85,9 +86,10 @@ struct prt_imx6_priv {
 	unsigned int hw_id;
 	unsigned int hw_rev;
 	const char *name;
-	struct poller_async poller;
 	unsigned int usb_delay;
 	unsigned int no_usb_check;
+	struct work_queue wq;
+	struct work_struct work;
 };
 
 struct prti6q_rfid_contents {
@@ -290,9 +292,9 @@ exit_usb_mount:
 
 #define OTG_PORTSC1 (MX6_OTG_BASE_ADDR+0x184)
 
-static void prt_imx6_check_usb_boot(void *data)
+static void prt_imx6_check_usb_boot_do_work(struct work_struct *w)
 {
-	struct prt_imx6_priv *priv = data;
+	struct prt_imx6_priv *priv = container_of(w, struct prt_imx6_priv, work);
 	struct device_d *dev = priv->dev;
 	char *second_word, *bootsrc, *usbdisk;
 	char buf[sizeof("vicut1q recovery")] = {};
@@ -371,6 +373,7 @@ exit_usb_boot:
 	free(usbdisk);
 
 	return;
+
 }
 
 static int prt_imx6_env_init(struct prt_imx6_priv *priv)
@@ -462,7 +465,6 @@ exit_bbu:
 static int prt_imx6_devices_init(void)
 {
 	struct prt_imx6_priv *priv = prt_priv;
-	int ret;
 
 	if (!priv)
 		return 0;
@@ -477,14 +479,12 @@ static int prt_imx6_devices_init(void)
 	prt_imx6_env_init(priv);
 
 	if (!priv->no_usb_check) {
-		ret = poller_async_register(&priv->poller, "usb-boot");
-		if (ret) {
-			dev_err(priv->dev, "can't setup poller\n");
-			return ret;
-		}
+		priv->wq.fn = prt_imx6_check_usb_boot_do_work;
+
+		wq_register(&priv->wq);
 
-		poller_call_async(&priv->poller, priv->usb_delay * SECOND,
-				  &prt_imx6_check_usb_boot, priv);
+		wq_queue_delayed_work(&priv->wq, &priv->work,
+				      priv->usb_delay * SECOND);
 	}
 
 	return 0;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

