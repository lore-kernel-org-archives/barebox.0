Delivery-date: Fri, 03 Mar 2023 10:30:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1k6-007O0U-1A
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:30:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1k5-0004EA-GR
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:30:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M37C73q6jET46Mea0PGR28y2srIy9AuJuxQ2ZPwvf1Y=; b=1uQrOJikRyXUbUttZKgYBhcFmu
	QVYjk4nAFIICt9gKJjOmaPOeHYyXDHGNh8v0vUEx3BWt5LJUG89kNH3DJW7KcRJMN2l3s/JfV15Qr
	As/WQ1HcQDxO5WGKxu/Lv1qn3ATJrh1X8hw6L9h+wHK3PvtsptUQj4lY/g+AVA3wWplhX9Qz1aGsG
	z9EfDLu1nM29BvsL2tx34jx/FGmfSXKjYMriGX4idHisHzC8ACRSy0kZ1UUmUbDG2zcaeEzwRALez
	BvJEwmWd62dBsaELHSI0T5qvm/pk6k8MEHRIAo2G56xsL7gproQnwJ6PHLnpu9bMKk0jjNmx7ONDY
	cZNIo5dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1ir-005jiE-U6; Fri, 03 Mar 2023 09:29:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1c2-005ebj-QN
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:22:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=M37C73q6jET46Mea0PGR28y2srIy9AuJuxQ2ZPwvf1Y=; b=kR9xhYVbs0yPTVPzkGAjIhU9+j
	zVS1QVNZ1KZ91p3hkdBNFQLLpFk4jKtSBnpDViTfWIvgIHyk1VUG6ZX0BOOL9dibH3hS/qSNV+hKf
	xRIFEblLnqTCg/Q1v45rjuDiJO47zg5QIcCBSD8GkZQpn5TDMGhN/NkZWPrMowc4pQMU9KzbI7IXK
	EdLDVniFV9c5+4IqVojpUdFokfDi8zLw4nds6W9n/fsPJM36TYXTnblEDY3hzB045uzo7trMYJl6+
	sCbYtK6ZB/Xo5FdJS4KkOFahHXwAxFMZfWw6F3LB7uoz35/CQok8Tm1O3Q6yaP9shdTd36g8fS81v
	aXS6Zndw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY1bq-00FdL3-0D
	for barebox@lists.infradead.org;
	Fri, 03 Mar 2023 09:22:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bh-0000EH-MC; Fri, 03 Mar 2023 10:21:41 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bg-001Wis-RT; Fri, 03 Mar 2023 10:21:40 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2dH-0R; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:20:46 +0100
Message-Id: <20230303092131.3063587-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092152_029516_28A97323 
X-CRM114-Status: GOOD (  11.50  )
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
Subject: [PATCH 05/50] ARM: davinci: Move mach header files to include/mach/davinci
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
possible as there won't be a single mach anymore.

Move all davinci specific header files to include/mach/davinci/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/debug_ll.h                                 | 2 ++
 arch/arm/mach-davinci/time.c                                    | 2 +-
 .../include/mach => include/mach/davinci}/debug_ll.h            | 2 +-
 .../include/mach => include/mach/davinci}/hardware.h            | 0
 .../mach-davinci/include/mach => include/mach/davinci}/serial.h | 2 +-
 .../mach-davinci/include/mach => include/mach/davinci}/time.h   | 2 +-
 6 files changed, 6 insertions(+), 4 deletions(-)
 rename {arch/arm/mach-davinci/include/mach => include/mach/davinci}/debug_ll.h (95%)
 rename {arch/arm/mach-davinci/include/mach => include/mach/davinci}/hardware.h (100%)
 rename {arch/arm/mach-davinci/include/mach => include/mach/davinci}/serial.h (92%)
 rename {arch/arm/mach-davinci/include/mach => include/mach/davinci}/time.h (93%)

diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 37c40219bc..42160295e3 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -14,6 +14,8 @@
 #include <mach/zynqmp/debug_ll.h>
 #elif defined CONFIG_ARCH_MVEBU
 #include <mach/mvebu/debug_ll.h>
+#elif defined CONFIG_ARCH_DAVINCI
+#include <mach/davinci/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-davinci/time.c b/arch/arm/mach-davinci/time.c
index c54e49470b..5456820009 100644
--- a/arch/arm/mach-davinci/time.c
+++ b/arch/arm/mach-davinci/time.c
@@ -13,7 +13,7 @@
 #include <restart.h>
 #include <clock.h>
 
-#include <mach/time.h>
+#include <mach/davinci/time.h>
 
 /* Timer register offsets */
 #define PID12			0x0
diff --git a/arch/arm/mach-davinci/include/mach/debug_ll.h b/include/mach/davinci/debug_ll.h
similarity index 95%
rename from arch/arm/mach-davinci/include/mach/debug_ll.h
rename to include/mach/davinci/debug_ll.h
index 60a8d2a5f1..5867da8544 100644
--- a/arch/arm/mach-davinci/include/mach/debug_ll.h
+++ b/include/mach/davinci/debug_ll.h
@@ -8,7 +8,7 @@
 #define __INCLUDE_ARCH_DEBUG_LL_H__
 
 #include <asm/io.h>
-#include <mach/serial.h>
+#include <mach/davinci/serial.h>
 
 #define DEBUG_LL_UART_ADDR	DAVINCI_UART0_BASE
 #define DEBUG_LL_UART_RSHFT	2
diff --git a/arch/arm/mach-davinci/include/mach/hardware.h b/include/mach/davinci/hardware.h
similarity index 100%
rename from arch/arm/mach-davinci/include/mach/hardware.h
rename to include/mach/davinci/hardware.h
diff --git a/arch/arm/mach-davinci/include/mach/serial.h b/include/mach/davinci/serial.h
similarity index 92%
rename from arch/arm/mach-davinci/include/mach/serial.h
rename to include/mach/davinci/serial.h
index 03e8ef43dd..cc14c5cf29 100644
--- a/arch/arm/mach-davinci/include/mach/serial.h
+++ b/include/mach/davinci/serial.h
@@ -9,7 +9,7 @@
 #ifndef __ASM_ARCH_SERIAL_H
 #define __ASM_ARCH_SERIAL_H
 
-#include <mach/hardware.h>
+#include <mach/davinci/hardware.h>
 
 #define DAVINCI_UART0_BASE	(IO_PHYS + 0x20000)
 #define DAVINCI_UART1_BASE	(IO_PHYS + 0x20400)
diff --git a/arch/arm/mach-davinci/include/mach/time.h b/include/mach/davinci/time.h
similarity index 93%
rename from arch/arm/mach-davinci/include/mach/time.h
rename to include/mach/davinci/time.h
index 6456205859..d7d90efea9 100644
--- a/arch/arm/mach-davinci/include/mach/time.h
+++ b/include/mach/davinci/time.h
@@ -9,7 +9,7 @@
 #ifndef __ARCH_ARM_MACH_DAVINCI_TIME_H
 #define __ARCH_ARM_MACH_DAVINCI_TIME_H
 
-#include <mach/hardware.h>
+#include <mach/davinci/hardware.h>
 
 #define DAVINCI_TIMER0_BASE		(IO_PHYS + 0x21400)
 #define DAVINCI_TIMER1_BASE		(IO_PHYS + 0x21800)
-- 
2.30.2



