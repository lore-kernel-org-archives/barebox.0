Delivery-date: Tue, 14 Mar 2023 15:50:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc5z7-00Ewue-P9
	for lore@lore.pengutronix.de; Tue, 14 Mar 2023 15:50:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc5z7-0004Q6-3o
	for lore@pengutronix.de; Tue, 14 Mar 2023 15:50:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pmgiA2lmpIQtB9QaD+0TFu9Xmr3aIf2SSzTl98uw7bM=; b=xUfWWLqYt1Cqzeo8yolmYBT2IL
	QJT3a18JwLiwpvU6Lfj41XNAjT4SMdI04QyzlexvGxqVUtUVUGlKCGlb7gABfYmZw7OBOjMyQAYgU
	Wq7oFh08zhTOfQ/kRUT4sDfWOTPUvH5WE/EuRuJ1X9r4EOPBVmV4yKMGZWqOBe7W6dBVknhBZtzSO
	W+V6zLAE9DKkiEGFvGcsfnujKofOv/Fv6OifxV2eM7uHMGlLJaa0tR0n1FWMFQpMdzZJmUtEthBnR
	l07ZvsGP6FLgacwxV3QsA7tuJM3quZDk+LcP/X/99Q/P8puT0edu160RCQ9+RDLp2DlbhS2w0PLmN
	xKcRACzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc5xt-00AW1K-16;
	Tue, 14 Mar 2023 14:49:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc5xm-00AVzS-1j
	for barebox@lists.infradead.org;
	Tue, 14 Mar 2023 14:49:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pc5xl-00047R-1O; Tue, 14 Mar 2023 15:49:17 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pc5xk-0046GV-4z; Tue, 14 Mar 2023 15:49:16 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pc5xj-004q2M-C7; Tue, 14 Mar 2023 15:49:15 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 14 Mar 2023 15:49:09 +0100
Message-Id: <20230314144909.2809581-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1109; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=KNUiGlYMuFhZU1SwKxaivyEM59ySuldp1L+83GbMP64=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkEIlhOx5DklrNFNM+xVBpC9WUKjF+LmIyJM1gd r0KejTlktOJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZBCJYQAKCRDB/BR4rcrs CQ1+B/oDPxR9BxCHddedEuhKMhayS8USmWXUZLCjI4N/VXa8NO8LMefI2qJbVcHbkMSpwV75n/W uuexQt43MSAAvfhOOMsrB2ygMs4TcCFr2I3yVOUdbtGzghsNl0OmPUymq4lEDLusHqQhQEt5KfS q+2Q0v2/KgqzE5VcBSQe2DVrRLVurJ1g2G/PxbovwolVPqqHPNzYBbliby0q6W6w7yRn1gIB6zU lWpw3PRuKNwhh8bgPlA5qjWsJifaxCwGEHO3sIIFeJCToBane10SAj9Uuk0QSA0SNnBnG7bTXUU Th8CNwQxPVEciclK6BABnFlhtWshjUiU56mQ0uh1XMlkAiWQ
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_074918_572975_5003D438 
X-CRM114-Status: UNSURE (   9.91  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Let NET_USB select PHYLIB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

drivers/net/usb/usbnet.c which is compiled with NET_USB=y uses
phy_device_connect() which is only available with PHYLIB=y. So select
PHYLIB from NET_USB and in turn remove the same select from some options
that depend on PHYLIB.

Fixes: 2263e27814f1 ("net: introduce phylib")
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/net/usb/Kconfig | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/usb/Kconfig b/drivers/net/usb/Kconfig
index 870f24ca9661..6dc6a24aee93 100644
--- a/drivers/net/usb/Kconfig
+++ b/drivers/net/usb/Kconfig
@@ -1,12 +1,12 @@
 # SPDX-License-Identifier: GPL-2.0-only
 menuconfig NET_USB
 	depends on USB_HOST
+	select PHYLIB
 	bool "USB network support"
 
 if NET_USB
 
 config NET_USB_ASIX
-	select PHYLIB
 	bool "Asix compatible"
 
 config USB_NET_AX88179_178A
@@ -21,7 +21,6 @@ config USB_NET_AX88179_178A
 	    * Sitcomm LN-032
 
 config NET_USB_SMSC95XX
-	select PHYLIB
 	bool "SMSC95xx"
 
 config NET_USB_RTL8152

base-commit: e3b5c9b60447eb266cb4895ee4662b1b613545b4
-- 
2.39.1



