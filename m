Delivery-date: Wed, 05 Mar 2025 15:00:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tppIZ-00AClU-1b
	for lore@lore.pengutronix.de;
	Wed, 05 Mar 2025 15:00:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tppIY-0007y5-C5
	for lore@pengutronix.de; Wed, 05 Mar 2025 15:00:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7eSxBgT2XT6EKScy3bQpfrDFoceIebJJLTa070ihj8c=; b=2aViBxJon9BqY60FVjqD46EbR2
	sUGoGtfeCNIaIuFFBtMMe/uwE8iX4z53rSH6mQkLGmPmBKxaYUSQcWnf7OF/A9uE1keRuEicuEVjg
	TzDdDXps0Iv20y3RG0OYJ/1jKPp6rU4zXdpmsAFe63ieeY1ddcDtjQGEjbeoDINyehHgfJFQ+AI5+
	Rf43UIhwlvgodXihcFdYQHjxQVu36gV7/jgBrYyX1hdeSYRcws7aT5VmSRwZnUIvismdGlF7cqoKs
	AhbYHoZ94RV3z5GkWZqZS4p7tlspRaRjgXDaoOAUgGbinaHMFUhHMcaYFnYUGGVsjTbGLnarrKq7d
	keRoIzqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tppI7-00000008GiF-3Obk;
	Wed, 05 Mar 2025 14:00:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tppI4-00000008Ggs-2S2c
	for barebox@lists.infradead.org;
	Wed, 05 Mar 2025 14:00:05 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tppI1-0007td-SU; Wed, 05 Mar 2025 15:00:01 +0100
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>
Date: Wed,  5 Mar 2025 15:00:00 +0100
Message-Id: <20250305140000.1539572-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_060004_623561_E0D13809 
X-CRM114-Status: UNSURE (   8.56  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX9: tqma93xx: remove mach/imx/romapi.h include
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dd26bc1d5a0 ("ARM: i.MX93: add destination argument to
imx93_romapi_load_image()") added the imx93_romapi_load_image call to
imx93_load_and_start_image_via_tfa and removed the call from
board-specific lowlevel code. So drop the corresponding include as well.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 arch/arm/boards/tqma93xx/lowlevel.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boards/tqma93xx/lowlevel.c b/arch/arm/boards/tqma93xx/lowlevel.c
index cc5101a1a3c..fb61ae5c70b 100644
--- a/arch/arm/boards/tqma93xx/lowlevel.c
+++ b/arch/arm/boards/tqma93xx/lowlevel.c
@@ -9,7 +9,6 @@
 #include <soc/imx9/ddr.h>
 #include <mach/imx/atf.h>
 #include <mach/imx/xload.h>
-#include <mach/imx/romapi.h>
 #include <mach/imx/esdctl.h>
 #include <pbl/i2c.h>
 #include <boards/tq/tq_eeprom.h>
-- 
2.39.5



