Delivery-date: Fri, 26 May 2023 09:10:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2RaQ-00EjeB-7z
	for lore@lore.pengutronix.de; Fri, 26 May 2023 09:10:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2RaN-0002sN-QA
	for lore@pengutronix.de; Fri, 26 May 2023 09:10:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+pCwzpq6HZJT9rMFCGTu4UaTQsJ3jaOrQKcmDRzwUJU=; b=LMoCL4ATCpunhXT48tVZmtFXZA
	8Jcv9/LpoT7e0jzwERs0YbEo7uQve5xph86mLuOkcUJr3ovep9LE27aPDhCSkFfHPNeNELc7EtI6/
	fjtvCEOwLyR3WrpWNWlOesUm/SZLwj+u9d1it7CWoaMKxPxMnhrydje+5CukwHvS5YBI1CIpSflBG
	cPCkbJOGNseHEBD9psh5r5p1qVJinfyXqUmsjRz45WG68enLa8/Ouz5ot64CpUt1S4xm5+U7nsiY9
	1+YK/BJu6mcvMoNPvJK4VVt6EqNuf3sHOsEs+TAXXbpm86y+NsK9U9LOMylUFwKZ46N8aqu23AQVD
	gUlmEItQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2RZJ-001MYV-0E;
	Fri, 26 May 2023 07:08:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2RZG-001MXh-01
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 07:08:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1q2RZD-0002lp-QS; Fri, 26 May 2023 09:08:51 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <j.zink@pengutronix.de>)
	id 1q2RZD-002tcQ-2K; Fri, 26 May 2023 09:08:51 +0200
Received: from localhost ([::1] helo=dude03.red.stw.pengutronix.de)
	by dude03.red.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <j.zink@pengutronix.de>)
	id 1q2RZC-000Dso-3o; Fri, 26 May 2023 09:08:50 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: patchwork-jzi@pengutronix.de,
	kernel@pengutronix.de,
	=ahmad@a3f.at,
	afa@pengutronix.de,
	Johannes Zink <j.zink@pengutronix.de>
Date: Fri, 26 May 2023 09:08:47 +0200
Message-Id: <20230526070847.52738-1-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_000854_063338_0EBFC6D1 
X-CRM114-Status: GOOD (  12.50  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! imx-usb-loader: add commandline option for displaying version number
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

As Ahmad pointed out in [1], compilation failed if the prepare make
target was not called before compiling the imx-usb-loader, which caused
the generated file not to exist when building for the sandbox target and
broke the build.

As the included utsrelease file only contains a UTS_RELEASE macro
generated from the KERNELVERSION make variable: use the variable
directly and pass it via HOSTCFLAGS as a define. Leave the remaining
code untouched to still support compiling the imx-usb-loader from an
external makefile which does not define the UTS_RELEASE macro.

while at it: also propagate the version number to the target imx-usb-loader.

Fixes: c1b50061f4b3 ("imx-usb-loader: add commandline option for
displaying version number")

[1] 20230525181320.2277320-1-ahmad@a3f.at

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
 scripts/imx/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
index b3be3886d8eb..dca6be2fe1f4 100644
--- a/scripts/imx/Makefile
+++ b/scripts/imx/Makefile
@@ -3,10 +3,10 @@
 hostprogs-always-$(CONFIG_ARCH_IMX_IMXIMAGE)	+= imx-image
 hostprogs-always-$(CONFIG_ARCH_IMX_USBLOADER)	+= imx-usb-loader
 
-HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0` -include $(objtree)/include/generated/utsrelease.h
+HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0` -DUTS_RELEASE='"$(KERNELVERSION)"'
 HOSTLDLIBS_imx-usb-loader  = `pkg-config --libs libusb-1.0`
 
-imx-usb-loader-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0`
+imx-usb-loader-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0` -DUTS_RELEASE='"$(KERNELVERSION)"'
 imx-usb-loader-target-userldlibs += `$(CROSS_PKG_CONFIG) --libs libusb-1.0`
 
 HOSTCFLAGS_imx.o = -I$(srctree)/include/mach
-- 
2.39.2



