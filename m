Delivery-date: Fri, 26 May 2023 19:02:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2aqA-00FKKb-MJ
	for lore@lore.pengutronix.de; Fri, 26 May 2023 19:02:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2aq8-0007FJ-9g
	for lore@pengutronix.de; Fri, 26 May 2023 19:02:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nQgVOE44EMss8VCfLSMKqwDXKw287jhwurU2IXzwfQU=; b=z9TAV4MAtGa0KqtikcqhGMDTyR
	9G7uG0TCGXEbz958O8NAWUSZG9kSkqdJhjqcBslekIqpOmAnxSL3OR9jTLAaFmL7OYO4KZM9Sa9ju
	UGijRvVd+iwmhX4+OVqaUZUsVCkp7uPU724GW0GhGLWA2pH5BrGNucgsaGQa3fYyaNdP3ogxPQdMN
	zRG18QFQCk0dEeAMUkAtz3Sncu0zV3foDB5wHD4EonxIgEJS5HqW39jA2K9qdtblWZaLUqzycbh7N
	pDM+VMfzD170GnnC4u9z1uVpOM3Z2qk6AXbDw/vLgtlgqx8UQW9fUY/37uzC1WD8cl8KKsBKB6EBU
	pS5vF74g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2aom-003DBy-1N;
	Fri, 26 May 2023 17:01:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2aoi-003D9f-34
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 17:01:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1q2aob-0006sf-Jy; Fri, 26 May 2023 19:01:21 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <j.zink@pengutronix.de>)
	id 1q2aoa-002zr8-Na; Fri, 26 May 2023 19:01:20 +0200
Received: from localhost ([::1] helo=dude03.red.stw.pengutronix.de)
	by dude03.red.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <j.zink@pengutronix.de>)
	id 1q2aoZ-004YJF-MQ; Fri, 26 May 2023 19:01:19 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: kernel@pengutronix.de,
	ahmad@a3f.at,
	afa@pengutronix.de,
	patchwork-jzi@pengutronix.de,
	Johannes Zink <j.zink@pengutronix.de>
Date: Fri, 26 May 2023 18:59:48 +0200
Message-Id: <20230526165947.1079052-3-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230526165947.1079052-1-j.zink@pengutronix.de>
References: <20230526165947.1079052-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_100128_994507_4E4B130C 
X-CRM114-Status: GOOD (  10.74  )
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
Subject: [PATCH 2/2] imx-usb-loader: also add version information on target tool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The version information was not added to the target tool, which then
always showed "undefined" as version string. Fixed.

Fixes: c1b50061f4b3 ("imx-usb-loader: add commandline option for displaying version number")
Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
 scripts/imx/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
index b3be3886d8eb..d0d1f17e10bd 100644
--- a/scripts/imx/Makefile
+++ b/scripts/imx/Makefile
@@ -6,7 +6,7 @@ hostprogs-always-$(CONFIG_ARCH_IMX_USBLOADER)	+= imx-usb-loader
 HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0` -include $(objtree)/include/generated/utsrelease.h
 HOSTLDLIBS_imx-usb-loader  = `pkg-config --libs libusb-1.0`
 
-imx-usb-loader-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0`
+imx-usb-loader-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0` -include $(objtree)/include/generated/utsrelease.h
 imx-usb-loader-target-userldlibs += `$(CROSS_PKG_CONFIG) --libs libusb-1.0`
 
 HOSTCFLAGS_imx.o = -I$(srctree)/include/mach
-- 
2.39.2



