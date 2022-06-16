Delivery-date: Thu, 16 Jun 2022 15:12:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pIh-003ufD-EX
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 15:12:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pIh-0001Xv-FS
	for lore@pengutronix.de; Thu, 16 Jun 2022 15:12:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wq+dIKnRAKOwn9/a0M2slOZz+9COohaPD/nNmSo+P6g=; b=dsefP6GtoFdc76
	Y3p35mmsZ+lspFQW2OwqFP7210H0O/3ww7SO+ynM3iyHD3AvQhMRJBrxItt1wPaEyxej+mlWuFH1v
	LTw4A1QRe8O87Iq28vGk/TrrkCM9YYsr4pYlSeB7pMwmnJBVr1nO5FlzSk/m8PLp8OLQkb5vHKVmS
	UvABtIUaRM4aAR96ZMcCdhqS1M889v93Mluhzv018fcemsyW/gNejge0/1kxAIqDHW/UVQfoAYpDl
	bNioogR41Z/GlhGzd1npSgt+Fx4OJbet3+pMWelN7q9hLmOHqJC9+Gs4a1EZ5/YWsH3+yentFdLLg
	8JbRf6jf/oAeVCcWk5SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pHW-002OxV-U7; Thu, 16 Jun 2022 13:11:31 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pHF-002Oqd-Ah
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 13:11:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=Wq+dIKnRAKOwn9/a0M2slOZz+9COohaPD/nNmSo+P6g=;
	b=fxbT1DKmAS5zVdNlkEvldHeJxkm1LCqIBOFgyj11wnFCSUXS6XzwItOtG8czJ6zUXVnKr5AlS/862
	 WDWOPDwHj+8asoK7B/P08L70ra+Fmd1cW3Di1sjqWIrGmxxmPYzwsq4UkRgATB5C48aTyQRbJUUlVE
	 WzpPvyn7TQcd1+LGy2czBjmOunCW5qiYxuYjH0RoJYgFEG39XzilgIwrDSm0zQx3Gf0o/WlHAv9Ga2
	 qjbSjoiQfEmAYKI9ZwJtANPv/zdcLH6zr3dJJ5ziWLwQ6CZSQRHZ9oClik62Lfcgx5UYAPRQjKAqSD
	 l9rNZPj+3uF7tSWo4g7Szrl68HQAI8g==
X-MSG-ID: c9e74557-ed75-11ec-8a45-0050569d11ae
From: Robin van der Gracht <robin@protonic.nl>
To: barebox@lists.infradead.org
Date: Thu, 16 Jun 2022 15:11:10 +0200
Message-Id: <20220616131114.214628-6-robin@protonic.nl>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616131114.214628-1-robin@protonic.nl>
References: <20220616131114.214628-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_061113_615779_81B7408D 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
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
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Robin van der Gracht <robin@protonic.nl>, david@protonic.nl
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/9] ARM: boards: protonic-imx6: Remove unsused argument from prt_imx6_usb_mount
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Removing this unused pointer pointer relieves the caller from freeing the
memory afterwards.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 arch/arm/boards/protonic-imx6/board.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 7978553cb8..e67d8d2f3b 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -248,7 +248,7 @@ static int prt_imx6_read_i2c_mac_serial(struct prt_imx6_priv *priv)
 	return 0;
 }
 
-static int prt_imx6_usb_mount(struct prt_imx6_priv *priv, char **usbdisk)
+static int prt_imx6_usb_mount(struct prt_imx6_priv *priv)
 {
 	struct device_d *dev = priv->dev;
 	const char *path;
@@ -267,8 +267,6 @@ static int prt_imx6_usb_mount(struct prt_imx6_priv *priv, char **usbdisk)
 		ret = mount(path, NULL, "usb", NULL);
 		if (ret)
 			goto exit_usb_mount;
-
-		*usbdisk = strdup("disk0.0");
 		return 0;
 	}
 
@@ -278,8 +276,6 @@ static int prt_imx6_usb_mount(struct prt_imx6_priv *priv, char **usbdisk)
 		ret = mount(path, NULL, "usb", NULL);
 		if (ret)
 			goto exit_usb_mount;
-
-		*usbdisk = strdup("disk0");
 		return 0;
 	}
 
@@ -294,7 +290,7 @@ static void prt_imx6_check_usb_boot_do_work(struct work_struct *w)
 {
 	struct prt_imx6_priv *priv = container_of(w, struct prt_imx6_priv, work);
 	struct device_d *dev = priv->dev;
-	char *second_word, *bootsrc, *usbdisk;
+	char *second_word, *bootsrc;
 	char buf[sizeof("vicut1q recovery")] = {};
 	unsigned int v;
 	ssize_t size;
@@ -306,7 +302,7 @@ static void prt_imx6_check_usb_boot_do_work(struct work_struct *w)
 
 	usb_rescan();
 
-	ret = prt_imx6_usb_mount(priv, &usbdisk);
+	ret = prt_imx6_usb_mount(priv);
 	if (ret)
 		return;
 
@@ -363,12 +359,10 @@ static void prt_imx6_check_usb_boot_do_work(struct work_struct *w)
 	if (ret)
 		goto exit_usb_boot;
 
-	free(usbdisk);
 	return;
 
 exit_usb_boot:
 	dev_err(dev, "Failed to run usb boot: %s\n", strerror(-ret));
-	free(usbdisk);
 
 	return;
 }
-- 
2.34.1



