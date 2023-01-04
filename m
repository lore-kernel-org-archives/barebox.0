Delivery-date: Wed, 04 Jan 2023 08:22:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pCy6i-001DZF-SU
	for lore@lore.pengutronix.de; Wed, 04 Jan 2023 08:22:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pCy6h-0005vZ-0D
	for lore@pengutronix.de; Wed, 04 Jan 2023 08:22:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xUpzXiJWkm4V8VUpbxH7dSLnFwj9g/zibzXEoK+xNqM=; b=CftFHux8vAFB3N
	Z1ZDRfYWnJuUd0Iw1SHGK0YYBEEZyDGmixlgfwh5gymZQJ5rLilgxg8uJReFnGmvj5f1uB7FmwzXd
	kNgA0za9abefcW/7jkTaUjE4kfzopewQ8l7A8eC6s/dmWNesoCnzOHCRXw53XHGxDUlaCAAwmk++5
	ga5R/oDC+/0UJznYNSpWbhYd/uJuGRK/dvlxS9g8fntaEf0uQFxzciGC528GG3SV87QZSO3pvcjvu
	90HyLC4jC+37IVFxzfYhwgyYTt3nipoaDiLiFFpOkzV/XnTFI4GQ9zKv+hREZiC94px7lH9HIrmrY
	xvqYfsMxr9S+4w2+U6Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCy5M-007LuC-0Z; Wed, 04 Jan 2023 07:21:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCy4x-007Lpa-OX
	for barebox@lists.infradead.org; Wed, 04 Jan 2023 07:20:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pCy4w-0005i8-8v; Wed, 04 Jan 2023 08:20:50 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pCy4v-003jPd-L3; Wed, 04 Jan 2023 08:20:49 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pCy4u-00FUGp-Er; Wed, 04 Jan 2023 08:20:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  4 Jan 2023 08:20:40 +0100
Message-Id: <20230104072040.3691226-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230103215448.3655459-1-a.fatoum@pengutronix.de>
References: <20230103215448.3655459-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230103_232051_871219_4B7A7AD1 
X-CRM114-Status: GOOD (  11.66  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! Documentation: i.MX8M: add EVK barebox installation documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

s/as an/at an/

Cc: Ulrich Ölmann <u.oelmann@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/imx/nxp-imx8mn-evk.rst | 2 +-
 Documentation/boards/imx/nxp-imx8mp-evk.rst | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/imx/nxp-imx8mn-evk.rst b/Documentation/boards/imx/nxp-imx8mn-evk.rst
index 4c07b949dafb..978dfa2db66a 100644
--- a/Documentation/boards/imx/nxp-imx8mn-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mn-evk.rst
@@ -77,7 +77,7 @@ to the eMMC boot partition requires special handling:
   - The barebox image includes a 32KiB preamble that allows the image
     to be directly writable to the start of the SD-Card or eMMC user area.
     Unlike older i.MX8M, the i.MX8MN BootROM expects the bootloader to not
-    start as an offset when booting from eMMC boot partitions, thus the first
+    start at an offset when booting from eMMC boot partitions, thus the first
     32KiB must be stripped.
 
 The ``barebox_update`` command takes care of this and need just be
diff --git a/Documentation/boards/imx/nxp-imx8mp-evk.rst b/Documentation/boards/imx/nxp-imx8mp-evk.rst
index 60e9f9eaea5d..dde57a37faf9 100644
--- a/Documentation/boards/imx/nxp-imx8mp-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mp-evk.rst
@@ -85,7 +85,7 @@ to the eMMC boot partition requires special handling:
   - The barebox image includes a 32KiB preamble that allows the image
     to be directly writable to the start of the SD-Card or eMMC user area.
     Unlike older i.MX8M, the i.MX8MP BootROM expects the bootloader to not
-    start as an offset when booting from eMMC boot partitions, thus the first
+    start at an offset when booting from eMMC boot partitions, thus the first
     32KiB must be stripped.
 
 The ``barebox_update`` command takes care of this and need just be
-- 
2.30.2



