Delivery-date: Wed, 14 Jan 2026 11:13:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfxsV-001CO1-0E
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 11:13:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfxsU-0000n5-2w
	for lore@pengutronix.de; Wed, 14 Jan 2026 11:13:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cAozgj+mGowwKDwOXDSeWKc7fTLp8LeQQEQp9r6GC44=; b=TJz31r8Q8pWWOrFdvaPD7JnV41
	zvQoZJd//1T5KHbzSz31s7BZV6tqVw2LdrITByDU0xAnfX2Yw6pskyiNtePDIgoCKXW/0u1+KJafB
	zHfjaUjHnwQn7zK6PqEHqM9RFxSjleY+k+/2UGRH13DyC3Z5kRENmDadXoiDATbwePcifMf0xo+wW
	Zs62KadXZVP6u0Vc/tgxE+A3C7glrKAG9Cm0ZGIncOybczjG7+HDEUZCyDWkqDrjCY1PCNsumd7nK
	Sd+fF4Ka/9UuOGCDv5MraTmPuvocYqXelTj/AvofnMoThd0b/oOEe7h/UI4xAuvHCx0EMTINP8Mhl
	V18FAQHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxrz-00000008j6O-1O1g;
	Wed, 14 Jan 2026 10:12:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxrt-00000008j5f-01Cn
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 10:12:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfxrr-0000bO-Ac; Wed, 14 Jan 2026 11:12:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfxrr-000ZWl-2Z;
	Wed, 14 Jan 2026 11:12:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfxrr-00000000TNN-31oj;
	Wed, 14 Jan 2026 11:12:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Jan 2026 11:12:20 +0100
Message-ID: <20260114101245.109763-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_021251_465930_19A0D0AC 
X-CRM114-Status: GOOD (  10.12  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] openrisc: bump reserved size to 1M
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The macro used to be 256K back in 2011, and was bumped to 512K in 2014.
Now 11 years later, the image is about to grow beyond it.

As this limit seems to be arbitrary anyway, just double it again to 1M.

If a smaller size is indeed needed, it should be enforced over
BAREBOX_MAX_IMAGE_SIZE instead. For QEMU and testing in CI, 1M is fine
though and we need not bother with keeping generic_defconfig small.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/openrisc/include/asm/config.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/openrisc/include/asm/config.h b/arch/openrisc/include/asm/config.h
index 85d777db8f63..d50d696e24fb 100644
--- a/arch/openrisc/include/asm/config.h
+++ b/arch/openrisc/include/asm/config.h
@@ -2,6 +2,8 @@
 #ifndef _OPENRISC_ASM_CONFIG_H_
 #define _OPENRISC_ASM_CONFIG_H_
 
+#include <linux/sizes.h>
+
 #define CFG_SYS_CLK_FREQ		50000000
 
 #define OPENRISC_TIMER_FREQ		CFG_SYS_CLK_FREQ
@@ -9,7 +11,6 @@
 #define OPENRISC_SOPC_MEMORY_BASE	0x00000000
 #define OPENRISC_SOPC_MEMORY_SIZE	0x02000000
 
-/* We reserve 512K for barebox */
-#define BAREBOX_RESERVED_SIZE		0x80000
+#define BAREBOX_RESERVED_SIZE		SZ_1M
 
 #endif
-- 
2.47.3



