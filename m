Delivery-date: Thu, 18 Dec 2025 12:40:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCN5-00CoXE-34
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:40:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCMU-0002EU-Go
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:40:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0vwbyqgDOW9qPLfueuDiEz0U/2cZTUN7upi/upDGweE=; b=DTgEywg52DVcLNdzgBKt+FKOw4
	gnIlmk1U70KtvfPWBHhTGh+6IElTX6D60azqBVDn0CL/MP5SPcTvq3FdqyJQPOk2GYQIUIf0R0ZdC
	xwO4gYiXsSEgR2lBPVqcdmfuJhoQEYORwcM4amIvTnEhsgPJY634OQW2rOsBafqx2kAOLwhDOZuv7
	CcpyGmWQW3Vu55lCJ4PSN3m9MYXlugybji9g9zb1f7y+HOQ4h6Wj+8A5Vzsemy57hFDi6BStVWaoW
	NjSSka7vWO3XpovX5nd4o0dCdyd7gTuRPgIvW16AUQ+oXY2EyqOcBAkAwHK/zImWMU4EJF9SquU8B
	L/zN1K1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCKK-00000008LSx-1MvL;
	Thu, 18 Dec 2025 11:37:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJb-00000008KQn-2iOE
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:37:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=0vwbyqgDOW9qPLfueuDiEz0U/2cZTUN7upi/upDGweE=; b=PAlXTkxE48Ni5cPDWACM69ECuA
	vXTXJhYpRpL5bRw7KXMag+j2Pvv8VO/VaeWnrpVLHvBS5SDh5zQxxYmaHTOfSRYgSKLFafuSKPXCr
	2iuLK0dv9QyOv59eerRaVQ/C6fkrsj8h/lUCAENCX9ha02lTK3X8gy2KSteEV55W2eEx5QVYdYl4N
	l07AcPTxKP65Whlc4rjC4NNWhtJhxe4H7oWGHw8a2rFYeB34dXka6ExGWTbzLs84R7o7QvahcSjJx
	SxvLlBx0NdSdsxkaeCRPxdTvJ+7UJWx6U4T8tL80IC1WuetMxXcR8LSJ7ZQiLs4fqdM0qm66fhP6u
	/92KK7Ug==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBS2-00000008fRW-0DgN
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 10:41:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-0008Cu-Mn; Thu, 18 Dec 2025 12:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-006Gvy-1d;
	Thu, 18 Dec 2025 12:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-3DmF;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:56 +0100
Message-ID: <20251218111242.1527495-37-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_104143_225356_E2D9FF69 
X-CRM114-Status: GOOD (  13.14  )
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
Subject: [PATCH v1 36/54] restart: allow drivers to register runtime restart handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

A runtime restart handler needs to be usable from within the barebox EFI
runtime services, even when everything else in barebox has been
discarded and barebox no longer has exclusive access to peripherals.

This driver allows existing drivers for boot time barebox to probe as
normal and optionally register a runtime restart handler, which is
suitable for being called from within EFI runtime code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/restart.c  | 46 ++++++++++++++++++++++++++++++++++++++++++++++
 include/restart.h |  3 +++
 2 files changed, 49 insertions(+)

diff --git a/common/restart.c b/common/restart.c
index d0ceeab7acd0..391d7bd3773c 100644
--- a/common/restart.c
+++ b/common/restart.c
@@ -7,11 +7,42 @@
 #include <common.h>
 #include <restart.h>
 #include <malloc.h>
+#include <asm/sections.h>
+#include <efi/types.h>
 #include <of.h>
 
 static LIST_HEAD(restart_handler_list);
 static unsigned resetidx;
 
+static __efi_runtime_data void (*rt_restart)(unsigned long flags);
+static int rt_restart_prio = INT_MIN;
+static __efi_runtime_data void (*rt_restart_warm)(unsigned long flags);
+static int rt_restart_warm_prio = INT_MIN;
+
+static void rt_restart_handler_register(struct restart_handler *handler)
+{
+	if (!IS_ENABLED(CONFIG_EFI_RUNTIME))
+		return;
+	if (!handler->rt_restart)
+		return;
+	if (!in_barebox_efi_runtime((ulong)handler->rt_restart)) {
+		/* Check if __efi_runtime attribute is missing */
+		pr_warn("handler outside EFI runtime section\n");
+		return;
+	}
+
+	if (handler->priority > rt_restart_prio) {
+		rt_restart = handler->rt_restart;
+		rt_restart_prio = handler->priority;
+	}
+
+	if (handler->priority > rt_restart_warm_prio &&
+	    handler->flags & RESTART_WARM) {
+		rt_restart_warm = handler->rt_restart;
+		rt_restart_warm_prio = handler->priority;
+	}
+}
+
 /**
  * restart_handler_register() - register a handler for restarting the system
  * @rst:	The handler struct
@@ -35,6 +66,8 @@ int restart_handler_register(struct restart_handler *rst)
 			rst->flags |= RESTART_WARM;
 	}
 
+	rt_restart_handler_register(rst);
+
 	list_add_tail(&rst->list, &restart_handler_list);
 
 	pr_debug("registering restart handler \"%s\" with priority %d\n",
@@ -100,6 +133,19 @@ struct restart_handler *restart_handler_get_by_name(const char *name, int flags)
 	return rst;
 }
 
+/**
+ * rt_restart_machine() - reset the machine from a runtime service
+ */
+void __noreturn __efi_runtime rt_restart_machine(unsigned long flags)
+{
+	if ((flags & RESTART_WARM) && rt_restart_warm)
+		rt_restart_warm(flags);
+	if (rt_restart)
+		rt_restart(flags);
+
+	__hang();
+}
+
 /**
  * restart_machine() - reset the whole system
  */
diff --git a/include/restart.h b/include/restart.h
index 5414fc1fcb69..cafddc14c656 100644
--- a/include/restart.h
+++ b/include/restart.h
@@ -5,11 +5,13 @@
 #include <linux/compiler.h>
 #include <linux/types.h>
 #include <linux/bitops.h>
+#include <efi/types.h>
 
 struct device_node;
 
 void restart_handlers_print(void);
 #define RESTART_WARM			BIT(0)
+void __noreturn __efi_runtime rt_restart_machine(unsigned long flags);
 void __noreturn restart_machine(unsigned long restart_flags);
 struct restart_handler *restart_handler_get_by_name(const char *name, int flags);
 
@@ -17,6 +19,7 @@ struct device_node;
 
 struct restart_handler {
 	void (*restart)(struct restart_handler *, unsigned long);
+	void (*rt_restart)(unsigned long);
 	int priority;
 	int flags;
 	struct device_node *of_node;
-- 
2.47.3



