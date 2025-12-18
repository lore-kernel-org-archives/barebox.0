Delivery-date: Thu, 18 Dec 2025 12:40:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCNG-00CoYq-1A
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:40:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCMj-0002MR-9g
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:40:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YuQyysNFAtp0RVd0EWSSvvIHm/Y3DTeUcaZMRYR263A=; b=RoQJqXV6cFDJQtbjdc0Qn4bmPA
	E7LUZ3VE2rZSzioHhm/m1/7CCa3jFYF3UTRRKJu8NDaKZ00V9RTsN2K+bGex/UTPuW4zVEA1alA8Q
	qam+CAiYMyUuSxrQnpP5Bc4GQ6ANc18/P+S/v+G66qoCifhXFMqjPSjdDI6xlOsPuA5ZQ4BaXgNq1
	j3OXJz+FPQC0wjRFQzP8onNhnjBThZcVWe/pXBmKxfmApLL6yxCK/n3NyCKv2RrtWTQ4iwk+HQVuW
	CpAzxOVF3N7kCECAsMEdRDehTsulTUtebywa3Ng2KJqR4/F1ApIWKUK1BPkAYcqx1gxwIpKqFBP/z
	oAlr91qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCKJ-00000008LQO-07dL;
	Thu, 18 Dec 2025 11:37:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJY-00000008KPg-2FTr
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:37:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=YuQyysNFAtp0RVd0EWSSvvIHm/Y3DTeUcaZMRYR263A=; b=pjhyfWywbvJ+lqdtj4HBQsOOtE
	n8WzaHyy//R2h8s3hvGCwYUl0m+dm8mdrRwSqbmF71J4AIr75C3eFMKwNJqUxrM06og8RzrDGc1XE
	dt6Xl5vR7LjGnGQRMhUTYE2fP3Aqi6iLROaPnMd8SprC7MTbVMcC2EKQdlpMLtT7TDa05uEz4vFsU
	CnjB/zKCGDCI0IsdEkMPxzWxlgFthpZS7Q4hokeA3xhuTB5Ik4q9Ah0b4pPEnnxfL0+MnjYvgNcC7
	5jXBtNUBT9HPJHlJyxBKJVMesb1urISXCqgoGYinANwQeoTeF7lVVSqmQ9WE4z/WHnyBguXULiw31
	lLa6u5lw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBS0-00000008fRU-2y6u
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 10:41:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-0008Cj-Jl; Thu, 18 Dec 2025 12:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-006Gvu-1N;
	Thu, 18 Dec 2025 12:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw5-0000000AVre-2BCi;
	Thu, 18 Dec 2025 12:12:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:38:12 +0100
Message-ID: <20251218111242.1527495-53-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_104141_498191_27BB7372 
X-CRM114-Status: GOOD (  14.75  )
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
Subject: [PATCH v1 52/54] efi: loader: support ExitBootServices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With everything now in place, let's support ExitBootServices, so a
kernel can startup and communicate to barebox acting as EFI runtime.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/boot.c | 67 ++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 66 insertions(+), 1 deletion(-)

diff --git a/efi/loader/boot.c b/efi/loader/boot.c
index 29cab7acd1c0..93a3412f5794 100644
--- a/efi/loader/boot.c
+++ b/efi/loader/boot.c
@@ -27,7 +27,9 @@
 #include <efi/error.h>
 #include <efi/variable.h>
 #include <efi/devicepath.h>
+#include <efi/mode.h>
 #include <efi/loader/trace.h>
+#include <efi/runtime.h>
 #include <malloc.h>
 #include <pe.h>
 #include <asm/cache.h>
@@ -2049,9 +2051,72 @@ efi_status_t EFIAPI efiloader_load_image(bool boot_policy,
 static efi_status_t EFIAPI efi_exit_boot_services(efi_handle_t image_handle,
 						  efi_uintn_t map_key)
 {
+	struct efi_event *evt, *next_event;
+	efi_status_t ret = EFI_SUCCESS;
+
 	EFI_ENTRY("%p, %zx", image_handle, map_key);
 
-	return EFI_EXIT(EFI_UNSUPPORTED);
+	/* Check that the caller has read the current memory map */
+	if (map_key != efi_memory_map_key) {
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+
+	/* Check if ExitBootServices has already been called */
+	if (!systab.boottime)
+		goto out;
+
+	/* Notify EFI_EVENT_GROUP_BEFORE_EXIT_BOOT_SERVICES event group. */
+	list_for_each_entry(evt, &efi_events, link) {
+		if (evt->group &&
+		    !efi_guidcmp(*evt->group,
+				 efi_guid_event_group_before_exit_boot_services)) {
+			efi_signal_event(evt);
+			break;
+		}
+	}
+
+	/* Stop all timer related activities */
+	timers_enabled = false;
+
+	/* Add related events to the event group */
+	list_for_each_entry(evt, &efi_events, link) {
+		if (evt->type == EFI_EVT_SIGNAL_EXIT_BOOT_SERVICES)
+			evt->group = &efi_guid_event_group_exit_boot_services;
+	}
+	/* Notify that ExitBootServices is invoked. */
+	list_for_each_entry(evt, &efi_events, link) {
+		if (evt->group &&
+		    !efi_guidcmp(*evt->group,
+			     efi_guid_event_group_exit_boot_services)) {
+			efi_signal_event(evt);
+			break;
+		}
+	}
+
+	/* Make sure that notification functions are not called anymore */
+	efi_tpl = EFI_TPL_HIGH_LEVEL;
+
+	/* Remove all events except EFI_EVT_SIGNAL_VIRTUAL_ADDRESS_CHANGE */
+	list_for_each_entry_safe(evt, next_event, &efi_events, link) {
+		if (evt->type != EFI_EVT_SIGNAL_VIRTUAL_ADDRESS_CHANGE)
+			list_del(&evt->link);
+	}
+
+	/* Patch out unsupported runtime function */
+	efi_runtime_detach(&systab);
+
+	efi_loader_set_state(EFI_LOADER_RUNTIME);
+
+	resched();
+
+	shutdown_barebox();
+
+	/* Give the payload some time to boot */
+	efi_set_watchdog(0);
+out:
+
+	return EFI_EXIT(ret);
 }
 
 /**
-- 
2.47.3



