Delivery-date: Wed, 22 Nov 2023 18:31:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5r4b-004dim-1W
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 18:31:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5r4b-0008Gm-DB
	for lore@pengutronix.de; Wed, 22 Nov 2023 18:31:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1UeHugvhYPwfp/SG03N5N9kovbtlDEjy84Xl1DU8+to=; b=plt48aWyPA3Tm8o9kaSAoKQW7J
	4ZeOHYwIjMuAlZfjgTX64h8B16xBdgxx7s+vXAbo7QWmJ/vw3as+tseBwe0y3kZ8xzPMcVU+xdKmT
	D1fwEdE0nU3hN95zmcKgpz3HjXhMzmmEnrxG69XwyP/G8mHfMC3NNYXfKi9XvVViTemL+aMWCG38g
	7jFCe2UYzYJfsSrKFb65Sq/rhB4VjB2yO8gE5zCXnA1HwkDq3qyR0U9vgSxWhgA26AxeRZ5RqxHUa
	ouccKQTU4CmUbghjAvs/jQ+PrvaR9Sze0yy5rlZlzAks3TvGyjXCh4mOvm6eaXrCEyMgmZtyG+/OI
	zR2qt4Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5r3B-002fAv-0f;
	Wed, 22 Nov 2023 17:30:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5r35-002f7y-1b
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 17:30:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r34-0007Sz-Aw; Wed, 22 Nov 2023 18:30:02 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r33-00ArSs-TG; Wed, 22 Nov 2023 18:30:01 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r33-001lAy-2Z;
	Wed, 22 Nov 2023 18:30:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 18:29:35 +0100
Message-Id: <20231122172951.376531-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122172951.376531-1-a.fatoum@pengutronix.de>
References: <20231122172951.376531-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_093003_531187_957D259C 
X-CRM114-Status: GOOD (  12.99  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 04/20] include: import <linux/instruction_pointer.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This header provides definitions for getting the instruction pointer and
the return address in a portable manner, which can be useful for
trace outputs where dump_stack would be overkill.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - unchanged
---
 include/linux/instruction_pointer.h | 11 +++++++++++
 include/linux/kernel.h              |  3 +--
 2 files changed, 12 insertions(+), 2 deletions(-)
 create mode 100644 include/linux/instruction_pointer.h

diff --git a/include/linux/instruction_pointer.h b/include/linux/instruction_pointer.h
new file mode 100644
index 000000000000..6564127a31ba
--- /dev/null
+++ b/include/linux/instruction_pointer.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_INSTRUCTION_POINTER_H
+#define _LINUX_INSTRUCTION_POINTER_H
+
+#define _RET_IP_		(unsigned long)__builtin_return_address(0)
+
+#ifndef _THIS_IP_
+#define _THIS_IP_  ({ __label__ __here; __here: (unsigned long)&&__here; })
+#endif
+
+#endif /* _LINUX_INSTRUCTION_POINTER_H */
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 0e4ba243915b..da6121888ebd 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -8,6 +8,7 @@
 #include <linux/limits.h>
 #include <linux/math64.h>
 #include <linux/container_of.h>
+#include <linux/instruction_pointer.h>
 #include <linux/minmax.h>
 
 #define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
@@ -117,8 +118,6 @@ extern long long simple_strtoll(const char *,char **,unsigned int);
 }							\
 )
 
-#define _RET_IP_             (unsigned long)__builtin_return_address(0)
-
 extern const char hex_asc[];
 #define hex_asc_lo(x)	hex_asc[((x) & 0x0f)]
 #define hex_asc_hi(x)	hex_asc[((x) & 0xf0) >> 4]
-- 
2.39.2



