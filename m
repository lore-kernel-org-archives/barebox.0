Delivery-date: Mon, 11 Oct 2021 16:57:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZwjq-0007h8-1t
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 16:57:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZwjo-0003BI-SD
	for lore@pengutronix.de; Mon, 11 Oct 2021 16:57:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NB8mTkeaL3Bm3Tf5ZAB4lBGZsvVWAN1prT64eAuSuT4=; b=pcj983/s1TYtHb
	Z3n46mtNT0LItnvdpNT8ohk4T67LtgrCJwm80OQzrT2hnfnt7rIK4uP3uQiklU6+IScHa+M37LAW+
	TfN88CCoksIgAlmwFF+217Ol8Pr7weVbrGzPUcz3+JO0gsiGFa85WbwqXrKlLrfI1kwUSExuraLPo
	pPf3u/5GmQcyYIyPl7x8ukf39xTSw764aWxB4R742H4jmlC8oLxb5wMa6sodatlvp1fA4UgIkNKd5
	bV6a4PdR3Ct5PecR0GkboZPsEGVNxG7uCffXQzQRLXCN46+p1UZMN4H375oUOI84R3uAcJaVRQ1DQ
	Wx9Bnodq4nf4v63KzofQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZwiX-009qLc-DX; Mon, 11 Oct 2021 14:55:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZwho-009q5X-Cc
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 14:55:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mZwhn-0002hq-4k; Mon, 11 Oct 2021 16:55:07 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mZwhm-0002e3-RQ; Mon, 11 Oct 2021 16:55:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Oct 2021 16:55:05 +0200
Message-Id: <20211011145506.23860-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_075508_471119_283D7643 
X-CRM114-Status: GOOD (  10.39  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] fixup! scripts: Add rk-usb-loader tool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Similar to d297e90323f3 ("scripts: omap3-usb-loader: make proper
use of pkg-config --cflags"), tools using libusb-1.0 should
include <libusb.h> and not assume its parent directory will be
found by the search path, regardless of pkg-config.

Also, .gitignore was missing an entry for the new tool and
hosttools_defconfig should enable all useful host tools.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/configs/hosttools_defconfig | 1 +
 scripts/.gitignore                       | 1 +
 scripts/rk-usb-loader.c                  | 2 +-
 3 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/configs/hosttools_defconfig b/arch/sandbox/configs/hosttools_defconfig
index 7d3385312488..0b62b648c744 100644
--- a/arch/sandbox/configs/hosttools_defconfig
+++ b/arch/sandbox/configs/hosttools_defconfig
@@ -4,3 +4,4 @@ CONFIG_ARCH_IMX_USBLOADER=y
 CONFIG_MVEBU_HOSTTOOLS=y
 CONFIG_OMAP3_USB_LOADER=y
 CONFIG_OMAP4_HOSTTOOL_USBBOOT=y
+CONFIG_RK_USB_LOADER=y
diff --git a/scripts/.gitignore b/scripts/.gitignore
index cf645ec74661..bc6e5dbc43df 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -31,6 +31,7 @@ omap4_usbboot
 omap4_usbboot-target
 omap3-usb-loader
 omap3-usb-loader-target
+rk-usb-loader
 mips-relocs
 rsatoc
 stm32image
diff --git a/scripts/rk-usb-loader.c b/scripts/rk-usb-loader.c
index 627af7259ed0..c742023c60d9 100644
--- a/scripts/rk-usb-loader.c
+++ b/scripts/rk-usb-loader.c
@@ -25,7 +25,7 @@
 #include <sys/types.h>
 #include <sys/stat.h>
 #include <fcntl.h>
-#include <libusb-1.0/libusb.h>
+#include <libusb.h>
 
 #include "../common.h"
 #include "../common.c"
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

