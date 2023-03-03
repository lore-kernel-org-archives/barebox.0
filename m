Delivery-date: Fri, 03 Mar 2023 10:28:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1ii-007Nty-5i
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:28:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1ih-0003gi-BR
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:28:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I81RB3jiiM0Q2tm5OqP+NIOYG+kLIVOTzDOXAKc99bY=; b=l4vCIBpKm+sNTpyJs/IpZOj4W9
	ZA0IWsThsHnDpuIkLyTdE/3IcuIwB0VqPq3EKLeZDuI+9tUWrL6dOLIoD4yKx/GLqrhQ/cKVwHdFD
	BeNeqDhDQibJfnVeyPifG7y4W1k7Qb40oblWd2EYkGGbT73VkXC70NU6XYORmLuJ4+96EkyIuEAym
	RKzb2VaGXqJD4clUowRbstIXVMo471GpKgHF0aYl4/Xf62ibCjB9769QS7ZASB1eaneHe5IGXpCZv
	Z2K+grihPA7eBaNH9lvorQRsQjxaSNhU2iztjvq8RON6JlCikIXGgHd+aXi4isaIjKmjDWfOIIS6e
	/YYE25sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1hQ-005ibX-I2; Fri, 03 Mar 2023 09:27:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bv-005eX9-HC
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:21:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=I81RB3jiiM0Q2tm5OqP+NIOYG+kLIVOTzDOXAKc99bY=; b=lQsAUMps97H+7p8dpasyNaqjwT
	l8AxbzpbnxVb3fs5KfiQXaoIcgbx7O4rIjnPfYBQaG+ZUDRSKzAyZLGIasciJXG+0u2YjBnuVKl/y
	qfWg+KT+kSDfts1/5P6yJB9z83zbYWR/AoD0KY2h4lqlfiXNvLL82fTHLCx+edPxDVYh4qmVB+SGQ
	jgEbu+4uJJhQ9nwO+O6qvi2RjG2yOdZzcrjBj+KHxwgNc3Xz2YK0QLoXWfjW3DURi+kVmBMsxr07R
	bJBao6gbR/nnZ2Z5UpA4HC7jW3p8jYpE0yzxCAW07CjyIW7dy1tK7KtkAL+ReySIYTJBxXSiF3NKN
	RuUQ6lfA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY1bn-00FdL2-12
	for barebox@lists.infradead.org;
	Fri, 03 Mar 2023 09:21:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bh-0000EF-9o; Fri, 03 Mar 2023 10:21:41 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bg-001Wig-F5; Fri, 03 Mar 2023 10:21:40 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2eg-43; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:20:50 +0100
Message-Id: <20230303092131.3063587-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092150_022116_F6FDE3FF 
X-CRM114-Status: GOOD (  11.46  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/50] ARM: vexpress: Move mach header files to include/mach/vexpress
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
longer possible as there won't be a single mach anymore.

Move all vexpress specific header files to include/mach/vexpress/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/vexpress/init.c                                 | 2 +-
 arch/arm/include/asm/debug_ll.h                                 | 2 ++
 arch/arm/mach-vexpress/reset.c                                  | 2 +-
 arch/arm/mach-vexpress/v2m.c                                    | 2 +-
 .../include/mach => include/mach/vexpress}/debug_ll.h           | 0
 .../include/mach => include/mach/vexpress}/devices.h            | 0
 6 files changed, 5 insertions(+), 3 deletions(-)
 rename {arch/arm/mach-vexpress/include/mach => include/mach/vexpress}/debug_ll.h (100%)
 rename {arch/arm/mach-vexpress/include/mach => include/mach/vexpress}/devices.h (100%)

diff --git a/arch/arm/boards/vexpress/init.c b/arch/arm/boards/vexpress/init.c
index a60556d67b..d2f82c1d19 100644
--- a/arch/arm/boards/vexpress/init.c
+++ b/arch/arm/boards/vexpress/init.c
@@ -9,7 +9,7 @@
 #include <asm/armlinux.h>
 #include <asm/system_info.h>
 #include <generated/mach-types.h>
-#include <mach/devices.h>
+#include <mach/vexpress/devices.h>
 #include <environment.h>
 #include <linux/sizes.h>
 #include <io.h>
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index caf13e52f2..1a31083cbe 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -22,6 +22,8 @@
 #include <mach/stm32mp/debug_ll.h>
 #elif defined CONFIG_ARCH_ZYNQ
 #include <mach/zynq/debug_ll.h>
+#elif defined CONFIG_ARCH_VEXPRESS
+#include <mach/vexpress/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-vexpress/reset.c b/arch/arm/mach-vexpress/reset.c
index 01cd01e6df..f0fa75330e 100644
--- a/arch/arm/mach-vexpress/reset.c
+++ b/arch/arm/mach-vexpress/reset.c
@@ -10,7 +10,7 @@
 #include <restart.h>
 #include <linux/amba/sp805.h>
 
-#include <mach/devices.h>
+#include <mach/vexpress/devices.h>
 
 void __iomem *v2m_wdt_base;
 
diff --git a/arch/arm/mach-vexpress/v2m.c b/arch/arm/mach-vexpress/v2m.c
index c60e9dbd75..9181d7e2ef 100644
--- a/arch/arm/mach-vexpress/v2m.c
+++ b/arch/arm/mach-vexpress/v2m.c
@@ -7,7 +7,7 @@
 #include <common.h>
 #include <io.h>
 #include <asm/hardware/sp810.h>
-#include <mach/devices.h>
+#include <mach/vexpress/devices.h>
 
 void __iomem *v2m_sysreg_base;
 
diff --git a/arch/arm/mach-vexpress/include/mach/debug_ll.h b/include/mach/vexpress/debug_ll.h
similarity index 100%
rename from arch/arm/mach-vexpress/include/mach/debug_ll.h
rename to include/mach/vexpress/debug_ll.h
diff --git a/arch/arm/mach-vexpress/include/mach/devices.h b/include/mach/vexpress/devices.h
similarity index 100%
rename from arch/arm/mach-vexpress/include/mach/devices.h
rename to include/mach/vexpress/devices.h
-- 
2.30.2



