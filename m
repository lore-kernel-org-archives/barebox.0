Delivery-date: Tue, 18 May 2021 13:45:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyA2-00049J-4i
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:45:18 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyA1-0000gt-4X
	for lore@pengutronix.de; Tue, 18 May 2021 13:45:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CjpZollQBWqSrsAP3q/dBSuvZLpNFnxrHRTqhCAxq+Q=; b=QucXuAh3VxUqvwSpXEWzilBsh
	SQz/nO6IXST9QKrk7xQpxVzlprNzAGzy56r9uJGzHrgVIlWmycsobdT67nqMxzp0NUItQVTfeJRoH
	0GyWh/NMMf5iQzoAE0+akTJNIKlPdeMNjrMoltyZYw5u8aTx4g+PIbhsPCG2Ry5riUaC3bPTLohpV
	SF+IuMMppO53oPl5x+pnTk6IZiGCjqbxf5GgAT0ICNxnOeKzXMEjalqAquWQQX4X8YL6YUz/kYPLv
	NuOPpcCt46Od7qpULjFNp1pcwRxn7C5vQ3NXKvOtWGrhN39PWmlV+YkHVswVPn95fJzWVl/NjO5Gq
	0KgS6ao2A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liy98-000cK3-9X; Tue, 18 May 2021 11:44:22 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liy8v-000cId-NB
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:44:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=akSaQI2jOfAh1A3PYDrRELFXLFmnxYzpVSveilaTKaM=; b=2LRNtohqm9rUvVPwiodYkp4Gn8
 H2izfsEXzyjLGk3/OnN5nxTDAUKY3/5dLqTKtZF2SOUuYESVxk4XDRqpgVGRafBqcRkB3gy9xffrG
 ZfKVvJAiu6A8jgSdUyashC1bBUkBaF2qr23moJLSEeaMftB7dBiZojQasd08XNJe8DJkmR/pVL4bc
 KgyPe8LLMevTD7XsjvFEVGOXk0ti789T2T4yO2BmcpLMye0fi2Z+0J63+ZpZVHKZRviEppbE7U8J+
 E33txD/4VLPI8KU61bYlu4xbv3HICLZJ+gnJI2w2377ErhjvwSnlCyKmuVlFFfIPUvtfIpNN+jwTI
 CXo8hnwg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liy8t-00Ec1g-5O
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:44:08 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liy8r-0000VC-VP; Tue, 18 May 2021 13:44:05 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liy8r-0001Ng-NA; Tue, 18 May 2021 13:44:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 May 2021 13:44:04 +0200
Message-Id: <20210518114404.5553-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210518114404.5553-1-s.hauer@pengutronix.de>
References: <20210518114404.5553-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_044407_228111_EFD28954 
X-CRM114-Status: GOOD (  11.22  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: rockchip: radxa-rock: build defaultenv
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/radxa-rock/Makefile                            | 1 +
 arch/arm/boards/radxa-rock/board.c                             | 3 +++
 .../radxa-rock/{env => defaultenv-radxa-rock}/boot/mshc1       | 0
 .../radxa-rock/{env => defaultenv-radxa-rock}/boot/mshc1-old   | 0
 .../radxa-rock/{env => defaultenv-radxa-rock}/init/bootsource  | 0
 .../radxa-rock/{env => defaultenv-radxa-rock}/nv/hostname      | 0
 .../{env => defaultenv-radxa-rock}/nv/linux.bootargs.console   | 0
 7 files changed, 4 insertions(+)
 rename arch/arm/boards/radxa-rock/{env => defaultenv-radxa-rock}/boot/mshc1 (100%)
 rename arch/arm/boards/radxa-rock/{env => defaultenv-radxa-rock}/boot/mshc1-old (100%)
 rename arch/arm/boards/radxa-rock/{env => defaultenv-radxa-rock}/init/bootsource (100%)
 rename arch/arm/boards/radxa-rock/{env => defaultenv-radxa-rock}/nv/hostname (100%)
 rename arch/arm/boards/radxa-rock/{env => defaultenv-radxa-rock}/nv/linux.bootargs.console (100%)

diff --git a/arch/arm/boards/radxa-rock/Makefile b/arch/arm/boards/radxa-rock/Makefile
index 79c8aec199..ec930bc264 100644
--- a/arch/arm/boards/radxa-rock/Makefile
+++ b/arch/arm/boards/radxa-rock/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_MACH_RADXA_ROCK) += board.o
 lwl-y += lowlevel.o
+bbenv-y += defaultenv-radxa-rock
diff --git a/arch/arm/boards/radxa-rock/board.c b/arch/arm/boards/radxa-rock/board.c
index 5c87f64897..0ada54a849 100644
--- a/arch/arm/boards/radxa-rock/board.c
+++ b/arch/arm/boards/radxa-rock/board.c
@@ -4,6 +4,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <envfs.h>
 #include <i2c/i2c.h>
 #include <i2c/i2c-gpio.h>
 #include <mach/rk3188-regs.h>
@@ -51,6 +52,8 @@ static int devices_init(void)
 	writel((RK_SOC_CON0_REMAP << 16) | RK_SOC_CON0_REMAP,
 	    RK_GRF_BASE + RK_GRF_SOC_CON0);
 
+	defaultenv_append_directory(defaultenv_radxa_rock);
+
 	return 0;
 }
 device_initcall(devices_init);
diff --git a/arch/arm/boards/radxa-rock/env/boot/mshc1 b/arch/arm/boards/radxa-rock/defaultenv-radxa-rock/boot/mshc1
similarity index 100%
rename from arch/arm/boards/radxa-rock/env/boot/mshc1
rename to arch/arm/boards/radxa-rock/defaultenv-radxa-rock/boot/mshc1
diff --git a/arch/arm/boards/radxa-rock/env/boot/mshc1-old b/arch/arm/boards/radxa-rock/defaultenv-radxa-rock/boot/mshc1-old
similarity index 100%
rename from arch/arm/boards/radxa-rock/env/boot/mshc1-old
rename to arch/arm/boards/radxa-rock/defaultenv-radxa-rock/boot/mshc1-old
diff --git a/arch/arm/boards/radxa-rock/env/init/bootsource b/arch/arm/boards/radxa-rock/defaultenv-radxa-rock/init/bootsource
similarity index 100%
rename from arch/arm/boards/radxa-rock/env/init/bootsource
rename to arch/arm/boards/radxa-rock/defaultenv-radxa-rock/init/bootsource
diff --git a/arch/arm/boards/radxa-rock/env/nv/hostname b/arch/arm/boards/radxa-rock/defaultenv-radxa-rock/nv/hostname
similarity index 100%
rename from arch/arm/boards/radxa-rock/env/nv/hostname
rename to arch/arm/boards/radxa-rock/defaultenv-radxa-rock/nv/hostname
diff --git a/arch/arm/boards/radxa-rock/env/nv/linux.bootargs.console b/arch/arm/boards/radxa-rock/defaultenv-radxa-rock/nv/linux.bootargs.console
similarity index 100%
rename from arch/arm/boards/radxa-rock/env/nv/linux.bootargs.console
rename to arch/arm/boards/radxa-rock/defaultenv-radxa-rock/nv/linux.bootargs.console
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

