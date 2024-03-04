Delivery-date: Mon, 04 Mar 2024 20:01:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDZ7-008cq0-0J
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:01:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDZ5-00056E-E2
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:01:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EA6/26Lqbs0MIjLKoO3mauXjZvkPMxON+aY7xZ6Iu9s=; b=gA1fwYtuC4KVF9SwuFOW1uOfmc
	nxWytJAc1RPQ92Ir0ZdehgoBC2c7lb7WahC3fGOcM0D5uqcw817rgeNELGrH3eedXsm4E1hh8JbFD
	mKw0jEwCEaai5pLWT0lyj2XL90esC7oklUjaydQQA/VC6xLWIuaDJTsexYardkiODvghfnEifm47u
	043OELbXC0j5AVpmk1td1bbvSOSb/zcRANz2PFOZptPHHrp/RB7F3Sa3cjTdvsPR3pbICZ2PjnrT5
	Vtr3CUugv6FBuBWHTQ15K8mXhFKONHsHC0hrJip2MVteOiqgmF2EoWriLmvhaVX84xE4bEAv/CKYt
	CkLlgf4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDYS-0000000AHUm-18iB;
	Mon, 04 Mar 2024 19:00:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDYL-0000000AHPo-3JTy
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:00:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-0004VZ-F5; Mon, 04 Mar 2024 20:00:44 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-004PFl-Vo; Mon, 04 Mar 2024 20:00:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-00Ed9V-1G;
	Mon, 04 Mar 2024 20:00:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:58:52 +0100
Message-Id: <20240304190038.3486881-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_110045_921777_0A1AAD74 
X-CRM114-Status: GOOD (  10.80  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 007/113] common: efi: move directory to top-level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The EFI code will grow considerably with the addition of loader support,
so it makes sense to move it to top-level to shorten the path and to
improve visibility.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Kconfig                                                   | 1 +
 Makefile                                                  | 1 +
 common/Kconfig                                            | 2 --
 common/Makefile                                           | 1 -
 {common/efi => efi}/Kconfig                               | 0
 {common/efi => efi}/Makefile                              | 0
 {common/efi => efi}/devicepath.c                          | 0
 {common/efi => efi}/efivar-filename.c                     | 0
 {common/efi => efi}/errno.c                               | 0
 {common/efi => efi}/guid.c                                | 0
 {common/efi => efi}/payload/Makefile                      | 0
 {common/efi => efi}/payload/env-efi/network/eth0-discover | 0
 {common/efi => efi}/payload/fdt.c                         | 0
 {common/efi => efi}/payload/image.c                       | 0
 {common/efi => efi}/payload/init.c                        | 0
 {common/efi => efi}/payload/iomem.c                       | 0
 16 files changed, 2 insertions(+), 3 deletions(-)
 rename {common/efi => efi}/Kconfig (100%)
 rename {common/efi => efi}/Makefile (100%)
 rename {common/efi => efi}/devicepath.c (100%)
 rename {common/efi => efi}/efivar-filename.c (100%)
 rename {common/efi => efi}/errno.c (100%)
 rename {common/efi => efi}/guid.c (100%)
 rename {common/efi => efi}/payload/Makefile (100%)
 rename {common/efi => efi}/payload/env-efi/network/eth0-discover (100%)
 rename {common/efi => efi}/payload/fdt.c (100%)
 rename {common/efi => efi}/payload/image.c (100%)
 rename {common/efi => efi}/payload/init.c (100%)
 rename {common/efi => efi}/payload/iomem.c (100%)

diff --git a/Kconfig b/Kconfig
index 4c076026b0c9..9c3a20a9a9a3 100644
--- a/Kconfig
+++ b/Kconfig
@@ -11,6 +11,7 @@ source "scripts/Kconfig.include"
 source "arch/Kconfig"
 
 source "common/Kconfig"
+source "efi/Kconfig"
 source "commands/Kconfig"
 source "net/Kconfig"
 source "drivers/Kconfig"
diff --git a/Makefile b/Makefile
index 6c70767e9070..358cd4140ce8 100644
--- a/Makefile
+++ b/Makefile
@@ -601,6 +601,7 @@ common-y		:= common/ drivers/ commands/ lib/ crypto/ net/ fs/ firmware/
 
 include $(srctree)/arch/$(SRCARCH)/Makefile
 
+common-$(CONFIG_EFI)	+= efi/
 common-y		+= test/
 
 ifdef need-config
diff --git a/common/Kconfig b/common/Kconfig
index cb0fef46ccbe..a7034a166189 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1800,8 +1800,6 @@ config WERROR
 
 endmenu
 
-source "common/efi/Kconfig"
-
 config HAS_DEBUG_LL
 	bool
 
diff --git a/common/Makefile b/common/Makefile
index c31cbab9e48f..42edb40999b1 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -70,7 +70,6 @@ obj-$(CONFIG_BOOTCHOOSER)	+= bootchooser.o
 obj-$(CONFIG_UIMAGE)		+= image.o uimage.o
 obj-$(CONFIG_FITIMAGE)		+= image-fit.o
 obj-$(CONFIG_MENUTREE)		+= menutree.o
-obj-$(CONFIG_EFI)		+= efi/
 lwl-$(CONFIG_IMD)		+= imd-barebox.o
 obj-$(CONFIG_IMD)		+= imd.o
 obj-y				+= file-list.o
diff --git a/common/efi/Kconfig b/efi/Kconfig
similarity index 100%
rename from common/efi/Kconfig
rename to efi/Kconfig
diff --git a/common/efi/Makefile b/efi/Makefile
similarity index 100%
rename from common/efi/Makefile
rename to efi/Makefile
diff --git a/common/efi/devicepath.c b/efi/devicepath.c
similarity index 100%
rename from common/efi/devicepath.c
rename to efi/devicepath.c
diff --git a/common/efi/efivar-filename.c b/efi/efivar-filename.c
similarity index 100%
rename from common/efi/efivar-filename.c
rename to efi/efivar-filename.c
diff --git a/common/efi/errno.c b/efi/errno.c
similarity index 100%
rename from common/efi/errno.c
rename to efi/errno.c
diff --git a/common/efi/guid.c b/efi/guid.c
similarity index 100%
rename from common/efi/guid.c
rename to efi/guid.c
diff --git a/common/efi/payload/Makefile b/efi/payload/Makefile
similarity index 100%
rename from common/efi/payload/Makefile
rename to efi/payload/Makefile
diff --git a/common/efi/payload/env-efi/network/eth0-discover b/efi/payload/env-efi/network/eth0-discover
similarity index 100%
rename from common/efi/payload/env-efi/network/eth0-discover
rename to efi/payload/env-efi/network/eth0-discover
diff --git a/common/efi/payload/fdt.c b/efi/payload/fdt.c
similarity index 100%
rename from common/efi/payload/fdt.c
rename to efi/payload/fdt.c
diff --git a/common/efi/payload/image.c b/efi/payload/image.c
similarity index 100%
rename from common/efi/payload/image.c
rename to efi/payload/image.c
diff --git a/common/efi/payload/init.c b/efi/payload/init.c
similarity index 100%
rename from common/efi/payload/init.c
rename to efi/payload/init.c
diff --git a/common/efi/payload/iomem.c b/efi/payload/iomem.c
similarity index 100%
rename from common/efi/payload/iomem.c
rename to efi/payload/iomem.c
-- 
2.39.2



