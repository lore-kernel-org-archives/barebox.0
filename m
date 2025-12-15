Delivery-date: Mon, 15 Dec 2025 09:51:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4Ip-00BgQw-1K
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 09:51:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4Io-0003H1-Sw
	for lore@pengutronix.de; Mon, 15 Dec 2025 09:51:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2hYquJUb4v5YOSqwnuqMl3PEO7z6FsiwrSkyGXTMNvg=; b=Wg2J0Gk0HumGODlA0imgmCgFdc
	8GSmQhEvLJNCr9MCS1knyaf5mCV+EDbhbS0nXsKRI5YkU4YbVRTAcVSJ0FFwkt14xrf5wKc9W6Rp7
	ye5ItWTCfN8KT4fcOP4O0vKgV/J8F8GYOmfiMIh/RZNc0hN4m87xOd4BWcbbzlKB9hHUl05BYOCMw
	+xHxIQJfFddm7JhzwbnFbIi8SWodhdt78EgjP7413cAcRxLUsXpqEYM5tQ0OHjqxLvJoWfAJoMPaT
	T44gwzf+26PQr6u3th/yNMZvkbH5VR8kB4KphduBEHfdrSUQ4j9CIak8jabislh4Szs+lqBjlWAyZ
	p2yAiT2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4IN-00000003IlV-44hx;
	Mon, 15 Dec 2025 08:51:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4IJ-00000003IkO-05yH
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 08:51:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV4IH-00039K-Fr; Mon, 15 Dec 2025 09:51:01 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV4IH-005kcD-0l;
	Mon, 15 Dec 2025 09:51:01 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV4IH-0000000BWJb-0aYc;
	Mon, 15 Dec 2025 09:51:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Dec 2025 09:50:58 +0100
Message-ID: <20251215085059.2744440-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_005105_869002_F0374C53 
X-CRM114-Status: GOOD (  10.95  )
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
Subject: [PATCH] cache: provide <asm/cache.h> for x86 and sandbox as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This way we have a sync_caches_for_execution definition that can be used
for the EFI loader on all architectures.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/include/asm/cache.h | 8 ++++++++
 arch/x86/include/asm/cache.h     | 8 ++++++++
 2 files changed, 16 insertions(+)
 create mode 100644 arch/sandbox/include/asm/cache.h
 create mode 100644 arch/x86/include/asm/cache.h

diff --git a/arch/sandbox/include/asm/cache.h b/arch/sandbox/include/asm/cache.h
new file mode 100644
index 000000000000..65031c59f5d0
--- /dev/null
+++ b/arch/sandbox/include/asm/cache.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef _ASM_SANDBOX_CACHE_H
+#define _ASM_SANDBOX_CACHE_H
+
+#include <asm-generic/cache.h>
+
+#endif
diff --git a/arch/x86/include/asm/cache.h b/arch/x86/include/asm/cache.h
new file mode 100644
index 000000000000..9f0abfa3e8fb
--- /dev/null
+++ b/arch/x86/include/asm/cache.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef _ASM_X86_CACHE_H
+#define _ASM_X86_CACHE_H
+
+#include <asm-generic/cache.h>
+
+#endif
-- 
2.47.3



