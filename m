Delivery-date: Fri, 13 Jun 2025 13:31:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ2dX-006qeu-1e
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 13:31:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ2dW-0004SA-PY
	for lore@pengutronix.de; Fri, 13 Jun 2025 13:31:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rAUGYkQc89hamPG/Cs7Po5MdxbRp+Ty4QuMQ5NLxFZQ=; b=1Nwck93UMvE0pV
	F6mwK52S/QlE5TQ1B/u5bHf43z0WNzTQg+QCLC2kXElLXoEi1bxATzdNAxR2PvOTUlw58ul3CcYUx
	n/ZNQ8IZeGxTnv0UbXcIUNiU6CgNFMTb6nMmb97SKkRaVDEGyTu6hI9TL2+Jq0qdaRFak0zQvPjfG
	odlwTEOjZZZk4HKJWKV4fls+VbgixiYDt7l13g0ORg7kbBME22sfbMthu9FpX3OFKy87geSvA6rFh
	/gma+Y27oiVFIFWjVvWINqdkooILhAWb/m/ItwKzJSDV2sx8TPYf1BVH2XJmW4EqQE1ElqoaXi6pS
	UXH7ihxlQyyLmZeEOe/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ2cx-0000000GBfn-2552;
	Fri, 13 Jun 2025 11:31:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ1hp-0000000G52F-3f0j
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 10:32:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uQ1ho-00045H-Lo; Fri, 13 Jun 2025 12:32:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uQ1ho-003H4i-1a;
	Fri, 13 Jun 2025 12:32:16 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uQ1ho-006IJC-1D;
	Fri, 13 Jun 2025 12:32:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 13 Jun 2025 12:32:15 +0200
Message-Id: <20250613103215.1500101-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_033217_907017_C66E7AB6 
X-CRM114-Status: GOOD (  10.29  )
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
Cc: Michael Olbrich <m.olbrich@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: remove unused CONFIG_BOOTM_OFTREE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_BOOTM_OFTREE is entirely unused. Remove this Kconfig option.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/kvx/Kconfig |  1 -
 common/Kconfig   | 13 +------------
 2 files changed, 1 insertion(+), 13 deletions(-)

diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
index bb662e4fd8..285f140f44 100644
--- a/arch/kvx/Kconfig
+++ b/arch/kvx/Kconfig
@@ -4,7 +4,6 @@ config KVX
 	bool
 	select 64BIT
 	select BOOTM
-	select BOOTM_OFTREE
 	select BOOTM_INITRD
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
diff --git a/common/Kconfig b/common/Kconfig
index 987148847e..468a981f32 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -631,17 +631,6 @@ config BOOTM_INITRD
 	  -r INITRD  specify an initrd image
 	  -L ADDR    specify initrd load address
 
-config BOOTM_OFTREE
-	bool
-	depends on BOOTM
-	select OFTREE
-	prompt "device tree (oftree) support"
-	help
-	  Add support to pass a device tree (a.k.a Open Firmware Tree, oftree). Adds
-	  this command line option:
-
-	  -o DTS  specify device tree
-
 config BOOTM_UIMAGE
 	def_bool y
 	prompt "support the legacy uImage format"
@@ -654,7 +643,7 @@ config BOOTM_UIMAGE
 config BOOTM_OFTREE_UIMAGE
 	bool
 	prompt "support passing device tree (oftree) uImages"
-	depends on BOOTM_OFTREE && BOOTM_UIMAGE
+	depends on BOOTM_UIMAGE
 	help
 	  Support using oftree uImages. Without this only raw oftree
 	  blobs can be used.
-- 
2.39.5



