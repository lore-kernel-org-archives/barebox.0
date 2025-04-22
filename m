Delivery-date: Tue, 22 Apr 2025 10:38:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7992-003yUD-2c
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:38:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7990-0001IU-5L
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:38:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JY/ZTw7BF3hBEQhFt1lDTb8g4b4s/mxfAdV/Y4saozI=; b=KVwKp9Hwx1lhJtayUDWox5tsIn
	0ZKtVIU84yVgo5GxpcyXyPwaLz32ooII7sVp0gdtwBssg6eEKOBccFeWXwzvWS+WOQbhNEBOMxzKT
	9MBMJokAT4gkPcSUseo+S9JbSE4UoK5XNcbPMiK1BkfGuxxa4uX0L0otK137K2oJm3PMQ4VYlOw5c
	yAZrsqfA7y2EMn7qONcHP2OvfqN0WGgtEeBNQNlEbfvh4t7IsEeL6BOxvwBWH2t941rguZQyjsiCr
	xO2R1VC+FR9+Ws9IYNnW7GddwVsZ/aiWsmpoZjkUN5rwylDpuv8kkngPlaP0vywH2qjaSHiZbmI++
	lgQwCmuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u798Z-00000006M2c-10Di;
	Tue, 22 Apr 2025 08:37:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78TR-00000006C4P-22t6
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:55:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78TQ-0000VK-By
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:55:20 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78TQ-001VvA-0b
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:55:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78TQ-000uz2-0I
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:55:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:55:16 +0200
Message-Id: <20250422075519.219029-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005521_523367_91DC51F8 
X-CRM114-Status: GOOD (  10.22  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/4] KASan: fix possible breakage with CONFIG_INIT_STACK_ALL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

With CONFIG_INIT_STACK_ALL_PATTERN or CONFIG_INIT_STACK_ALL_ZERO,
the compiler emits calls to memset to initialize variables on the stack.

With kasan enabled, this would end up calling KASAN memset, which can
lead to access of global variables prior to relocation.

Brace ourselves for this situation by sidestepping KASAN prior to
relocation.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 lib/kasan/generic.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/lib/kasan/generic.c b/lib/kasan/generic.c
index 66eebac15600..dda80f790151 100644
--- a/lib/kasan/generic.c
+++ b/lib/kasan/generic.c
@@ -17,6 +17,7 @@
 #define pr_fmt(fmt) "kasan: generic: " fmt
 
 #include <common.h>
+#include <asm/reloc.h>
 
 #include "kasan.h"
 
@@ -160,6 +161,16 @@ static __always_inline bool check_memory_region_inline(unsigned long addr,
 						size_t size, bool write,
 						unsigned long ret_ip)
 {
+	/*
+	 * Hardening options like -ftrivial-auto-var-init=zero can end up
+	 * emitting memset calls to initialize stack variables.
+	 * This can lead to this function reached before relocation.
+	 *
+	 * Play it safe by ensuring we are relocated before proceeding.
+	 */
+	if (global_variable_offset() != 0)
+		return true;
+
 	if (!kasan_initialized)
 		return true;
 
-- 
2.39.5



