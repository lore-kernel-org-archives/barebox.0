Delivery-date: Thu, 18 Dec 2025 12:40:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCN3-00CoWR-1g
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:40:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCMP-0002BP-Jd
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:40:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eCBImVrNbVTsqrdI+nfYL2iJZaRGHSBG3eGmSqedozs=; b=V08F92B4ROFILjflEz17mYMtCi
	IQaXPJCN4W1TlS9F1uVO6mJKfApBw4eHIr/d8OW8lRjWlexOwrioEzDahcTQ0xdqLR2rGMY2UNMrg
	sK0Z3qmKWHbBgEIyr6u36JqiRgnNFIKC/JJFiywXK2G2ZUySpIJ3Mqs5pvk65Nq654MiBlOHov/ya
	A+C/3uujoibvjhVSJEuiCxKvvHEpwti9Zk80tF6ax+1/iCHff+eNDUNwK4ML3iPfM7HioDEAKsESw
	xiPEG8fOBXK+Tx8WDZgwpzR5LBEwJt4Dv0pS1E0ub5ihzYFQQHRhKgcHxvhoOlPiWBOi8gORCe8YC
	34bYWiYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCKF-00000008LKF-49Fl;
	Thu, 18 Dec 2025 11:37:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJZ-00000008KQ7-2rEM
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:37:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=eCBImVrNbVTsqrdI+nfYL2iJZaRGHSBG3eGmSqedozs=; b=nuDtaJwO4RB1yquGG9MxPMYCtj
	5LKCbHhREtEsjF0V8jlDQg7Fw4dzbeNphq0jt2PkzAEvTHVwOdlfRakpm7LkRWT6P7OWVW8eJFkaa
	uK12U/Lty9rxEOsxIYe0bwZpFPhSHUBEFXYXGCQlMQgieVHzeRqPeYcm7s9ODNwIzRVBHpUR99NE2
	Lny3DyuN2xOqdJnDZmHN041vacWBaixb6ru7G3hf2Qv7JdUrpOUlcDzFN01V6ijffVWxGGW7iZout
	Qu6+OMzQsmMxtz4kTUgfdmXNu0LbHx8CchDVAm2ADBRVJj6VWX3n5apb1bSea0U5cybRBrRaDPBPF
	pbHUPL1g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBS0-00000008fRY-4C3i
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 10:41:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-0008Dc-Tw; Thu, 18 Dec 2025 12:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-006Gw6-2C;
	Thu, 18 Dec 2025 12:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-3PB8;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:57 +0100
Message-ID: <20251218111242.1527495-38-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_104141_687067_E54D73B0 
X-CRM114-Status: GOOD (  12.09  )
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
Subject: [PATCH v1 37/54] poweroff: allow drivers to register runtime poweroff handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A runtime poweroff handler needs to be usable from within the barebox EFI
runtime services, even when everything else in barebox has been
discarded and barebox no longer has exclusive access to peripherals.
This driver allows existing drivers for boot time barebox to probe as
normal and optionally register a runtime poweroff handler, which is
suitable for being called from within EFI runtime code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/poweroff.c  | 36 ++++++++++++++++++++++++++++++++++++
 include/poweroff.h |  2 ++
 2 files changed, 38 insertions(+)

diff --git a/common/poweroff.c b/common/poweroff.c
index 896716bb258c..dfbd727b969c 100644
--- a/common/poweroff.c
+++ b/common/poweroff.c
@@ -7,10 +7,33 @@
 #include <common.h>
 #include <poweroff.h>
 #include <malloc.h>
+#include <efi/types.h>
+#include <asm/sections.h>
 #include <of.h>
 
 static LIST_HEAD(poweroff_handler_list);
 
+static __efi_runtime_data void (*rt_poweroff)(unsigned long flags);
+static int rt_poweroff_prio = INT_MIN;
+
+static void rt_poweroff_handler_register(struct poweroff_handler *handler)
+{
+	if (!IS_ENABLED(CONFIG_EFI_RUNTIME))
+		return;
+	if (!handler->rt_poweroff)
+		return;
+	if (!in_barebox_efi_runtime((ulong)handler->rt_poweroff)) {
+		/* Check if __efi_runtime attribute is missing */
+		pr_warn("handler outside EFI runtime section\n");
+		return;
+	}
+	if (handler->priority <= rt_poweroff_prio)
+		return;
+
+	rt_poweroff = handler->rt_poweroff;
+	rt_poweroff_prio = handler->priority;
+}
+
 /**
  * poweroff_handler_register() - register a handler for poweroffing the system
  * @rst:	The handler struct
@@ -26,6 +49,8 @@ int poweroff_handler_register(struct poweroff_handler *handler)
 	if (!handler->priority)
 		handler->priority = POWEROFF_DEFAULT_PRIORITY;
 
+	rt_poweroff_handler_register(handler);
+
 	list_add_tail(&handler->list, &poweroff_handler_list);
 
 	pr_debug("registering poweroff handler \"%s\" with priority %d\n",
@@ -61,6 +86,17 @@ int poweroff_handler_register_fn(void (*poweroff_fn)(struct poweroff_handler *,
 	return ret;
 }
 
+/**
+ * rt_poweroff_machine() - power off the machine from a runtime service
+ */
+void __noreturn __efi_runtime rt_poweroff_machine(unsigned long flags)
+{
+	if (rt_poweroff)
+		rt_poweroff(flags);
+
+	__hang();
+}
+
 /**
  * poweroff_machine() - power off the machine
  */
diff --git a/include/poweroff.h b/include/poweroff.h
index 3e86003563a9..d8b2856ced9f 100644
--- a/include/poweroff.h
+++ b/include/poweroff.h
@@ -6,10 +6,12 @@
 #include <linux/types.h>
 
 void __noreturn poweroff_machine(unsigned long poweroff_flags);
+void __noreturn rt_poweroff_machine(unsigned long poweroff_flags);
 
 struct poweroff_handler {
 	void (*poweroff)(struct poweroff_handler *,
 			 unsigned long flags);
+	void (*rt_poweroff)(unsigned long flags);
 	int priority;
 	const char *name;
 	struct list_head list;
-- 
2.47.3



