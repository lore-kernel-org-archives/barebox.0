Delivery-date: Thu, 18 Dec 2025 12:37:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKM-00CoIX-2a
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:37:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCK9-0000Q1-Ab
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:37:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rvCfg+LuJ07RnoBN8McXggfMBo/h1oPHf0VlTt1AK6c=; b=j0La3bIUuPurtzCjaN3YamcMxW
	W/YpfoPpFW2nSWC4PkrqPRL0m3Yp4ZFoSx5NC5vAkJmnuJWCGa/MKMWvG90IgsUkMZ5ld29oay6AH
	keBDNXyUV+r8IJsJNQA6sFzsRIsLaFAAs32311Yn53WLm3zYKofrQVRZPTk9pLa0IhJ59S5ApLLej
	8lrmqJkKXbFIB2ME8FPNILvbN9aA9b/p5S6i4MdqOrxWkvPP9HvkVDKOXK7OzreTWashCuVIKDbfW
	N0y3nj/KTT8J57lamON0zRv8VKeAzP/dUeBavYq8iyfMUzG8Bm+KRq5PzaZkP9Phoc+fgY9hKMYj4
	zpHYtS1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJT-00000008KJA-1stC;
	Thu, 18 Dec 2025 11:36:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJN-00000008KBA-1cUB
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJL-00088G-T0; Thu, 18 Dec 2025 12:36:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJL-006GuY-2I;
	Thu, 18 Dec 2025 12:36:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-0DT5;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:41 +0100
Message-ID: <20251218111242.1527495-22-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_033649_427289_B35C16D8 
X-CRM114-Status: GOOD (  19.55  )
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
Subject: [PATCH v1 21/54] efi: loader: add watchdog support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The UEFI standard requires that the watchdog timer is set to five
minutes when invoking an EFI boot option.

Add the necessary support, so we can start configuring the watchdog
where appropriate.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/Makefile   |  1 +
 efi/loader/boot.c     |  2 +-
 efi/loader/watchdog.c | 94 +++++++++++++++++++++++++++++++++++++++++++
 include/efi/loader.h  |  3 ++
 4 files changed, 99 insertions(+), 1 deletion(-)
 create mode 100644 efi/loader/watchdog.c

diff --git a/efi/loader/Makefile b/efi/loader/Makefile
index bb739210ac1d..640c9707060c 100644
--- a/efi/loader/Makefile
+++ b/efi/loader/Makefile
@@ -8,3 +8,4 @@ obj-y += debug_support.o
 obj-y += boot.o
 obj-y += runtime.o
 obj-y += setup.o
+obj-y += watchdog.o
diff --git a/efi/loader/boot.c b/efi/loader/boot.c
index 1e2496f1ec53..263165135944 100644
--- a/efi/loader/boot.c
+++ b/efi/loader/boot.c
@@ -1831,7 +1831,7 @@ static efi_status_t EFIAPI efi_set_watchdog_timer(unsigned long timeout,
 {
 	EFI_ENTRY("%ld, 0x%llx, %zu, %p", timeout, watchdog_code,
 		  data_size, watchdog_data);
-	return EFI_EXIT(EFI_UNSUPPORTED);
+	return EFI_EXIT(efi_set_watchdog(timeout));
 }
 
 /**
diff --git a/efi/loader/watchdog.c b/efi/loader/watchdog.c
new file mode 100644
index 000000000000..a4715c149add
--- /dev/null
+++ b/efi/loader/watchdog.c
@@ -0,0 +1,94 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/e9c34fab18a9a0022b36729afd8e262e062764e2/lib/efi_loader/efi_watchdog.c
+/*
+ *  EFI watchdog
+ *
+ *  Copyright (c) 2017 Heinrich Schuchardt
+ */
+
+#define pr_fmt(fmt) "efi-loader: watchdog: " fmt
+
+#include <linux/printk.h>
+#include <efi/loader.h>
+#include <efi/loader/event.h>
+#include <efi/loader/trace.h>
+#include <efi/services.h>
+#include <efi/error.h>
+#include <init.h>
+
+/* Conversion factor from seconds to multiples of 100ns */
+#define EFI_SECONDS_TO_100NS 10000000ULL
+
+static struct efi_event *watchdog_timer_event;
+
+/**
+ * efi_watchdog_timer_notify() - resets system upon watchdog event
+ *
+ * Reset the system when the watchdog event is notified.
+ *
+ * @event:	the watchdog event
+ * @context:	not used
+ */
+static void EFIAPI efi_watchdog_timer_notify(struct efi_event *event,
+					     void *context)
+{
+	EFI_ENTRY("%p, %p", event, context);
+
+	pr_emerg("\nEFI: Watchdog timeout\n");
+	EFI_CALL_VOID(efi_runtime_services.reset_system(EFI_RESET_COLD,
+							EFI_SUCCESS, 0, NULL));
+
+	EFI_EXIT(EFI_UNSUPPORTED);
+}
+
+/**
+ * efi_set_watchdog() - resets the watchdog timer
+ *
+ * This function is used by the SetWatchdogTimer service.
+ *
+ * @timeout:		seconds before reset by watchdog
+ * Return:		status code
+ */
+efi_status_t efi_set_watchdog(unsigned long timeout)
+{
+	efi_status_t r;
+
+	if (timeout)
+		/* Reset watchdog */
+		r = efi_set_timer(watchdog_timer_event, EFI_TIMER_RELATIVE,
+				  EFI_SECONDS_TO_100NS * timeout);
+	else
+		/* Deactivate watchdog */
+		r = efi_set_timer(watchdog_timer_event, EFI_TIMER_CANCEL, 0);
+	return r;
+}
+
+/**
+ * efi_watchdog_register() - initializes the EFI watchdog
+ *
+ * Return:	status code
+ */
+static efi_status_t efi_watchdog_register(void *data)
+{
+	efi_status_t r;
+
+	/*
+	 * Create a timer event.
+	 */
+	r = efi_create_event(EFI_EVT_TIMER | EFI_EVT_NOTIFY_SIGNAL, EFI_TPL_CALLBACK,
+			     efi_watchdog_timer_notify, NULL, NULL,
+			     &watchdog_timer_event);
+	if (r) {
+		pr_err("Failed to register watchdog event\n");
+		return r;
+	}
+
+	return EFI_SUCCESS;
+}
+
+static int efi_watchdog_init(void)
+{
+	efi_register_deferred_init(efi_watchdog_register, NULL);
+	return 0;
+}
+late_initcall(efi_watchdog_init);
diff --git a/include/efi/loader.h b/include/efi/loader.h
index e1a3c1e298c5..ef82a2f5214e 100644
--- a/include/efi/loader.h
+++ b/include/efi/loader.h
@@ -26,6 +26,9 @@ extern struct efi_system_table systab;
 efi_status_t efi_alloc_system_table(void);
 efi_status_t efi_initialize_system_table(void);
 
+/* Called by efi_set_watchdog_timer to reset the timer */
+efi_status_t efi_set_watchdog(unsigned long timeout);
+
 /* Allocate boot service data pool memory */
 void *efi_alloc(size_t len, const char *name);
 /* Reallocate boot service data pool memory */
-- 
2.47.3



