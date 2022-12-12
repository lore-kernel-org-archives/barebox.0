Delivery-date: Mon, 12 Dec 2022 17:43:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p4lu5-001ppe-3s
	for lore@lore.pengutronix.de; Mon, 12 Dec 2022 17:43:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p4lu4-0006rU-IZ
	for lore@pengutronix.de; Mon, 12 Dec 2022 17:43:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PT4mtG5fk7lCF8n5lJkDlaXrUHdBHt09k5ljBJhS6FU=; b=Tin/LMwkKQ8bH5+AM3xr96JIQs
	rtbpAXmYSuyCyW07gg9IfCuaZtS7yY0wBpDgNa+bnWGJQyi99Q773nKW2AGgFXEJSX40Du4AGm027
	lE2zMAnjI+5yK1bll9YRR43frP8nuO6fXqtWyrR0raNOYjpNWOqLYe3q0Vdz5yzc+5bLMu3QJ7gqu
	OMAGCVbicfAQftKC7gB7MCYWIMfGycRrpQLCDqrJaDYiGxgG3baqU1F+mXTitgG3siNrwKaYUIB68
	wjWKBITa91KGbd05zbn8x6Bx60OAC1woAN63yUOIe0KTjWxTaPt0u5tSSM/J6r/4LhyFRCyVps29K
	DBJpA3Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p4lsr-002FF5-6A; Mon, 12 Dec 2022 16:42:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p4lse-002F8Q-8t
	for barebox@lists.infradead.org; Mon, 12 Dec 2022 16:42:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p4lsd-0006eO-0i; Mon, 12 Dec 2022 17:42:15 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p4lsb-0043p3-M3; Mon, 12 Dec 2022 17:42:14 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p4lsb-009v8z-GN; Mon, 12 Dec 2022 17:42:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Dec 2022 17:42:11 +0100
Message-Id: <20221212164212.2358450-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221212164212.2358450-1-a.fatoum@pengutronix.de>
References: <20221212164212.2358450-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221212_084216_360153_913108DB 
X-CRM114-Status: UNSURE (   8.89  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] RISC-V: start: print debugging info when CONFIG_DEBUG_INITCALLS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

CONFIG_INITCALL_DEBUG can be very useful to debug early barebox hangs,
but it doesn't help when the hang happens just before. In this case,
enable the early barebox proper debug messages.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 arch/riscv/boot/start.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/riscv/boot/start.c b/arch/riscv/boot/start.c
index 27d9066243f9..92991d0f6a84 100644
--- a/arch/riscv/boot/start.c
+++ b/arch/riscv/boot/start.c
@@ -3,6 +3,10 @@
 
 #define pr_fmt(fmt) "start.c: " fmt
 
+#ifdef CONFIG_DEBUG_INITCALLS
+#define DEBUG
+#endif
+
 #include <common.h>
 #include <init.h>
 #include <linux/sizes.h>
-- 
2.30.2



