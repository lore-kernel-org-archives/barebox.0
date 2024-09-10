Delivery-date: Tue, 10 Sep 2024 13:49:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snzMz-0038u6-3B
	for lore@lore.pengutronix.de;
	Tue, 10 Sep 2024 13:49:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snzMy-0001Oz-Pg
	for lore@pengutronix.de; Tue, 10 Sep 2024 13:49:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bj5vma6JsfWsr4AjURrbbn1YOUPgjNQ2I3HDVLvxBk0=; b=jvYm3LQgfFGVxe5PR0LzkdVECC
	1tMbHZhSc7SzUesQIExtAmNSjWs6fMdCQXh1M1zX5ErkaGPVl3eXMSzyUxOShJKRsbWjMIeIO+F4B
	Te07VS2KfDnSBeGRr9lyNAeuBv9N1dWqeomY27JdlvUDTklXqkOohQmFCvNe9K7zT0MixwuTLQNcP
	vsXF8An2mcE0caf1RQWQi/d17e3xZu+/qB73VpQCJv5i77yL2N85LY+JTK2PaFMN2tUWaKLuM2V3y
	otn8FK8dYPBITGQeerkcNTV37okr0vPbS40w/3ket6DrfXeagDI58LHUp4KBCZgMnbNC9FoqcJsD/
	VpU0cFVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snzMO-00000005R8C-1pu8;
	Tue, 10 Sep 2024 11:48:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snzMK-00000005R6U-3fbe
	for barebox@lists.infradead.org;
	Tue, 10 Sep 2024 11:48:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snzMJ-0000q7-6k; Tue, 10 Sep 2024 13:48:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snzMI-006sx9-QT; Tue, 10 Sep 2024 13:48:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snzMI-00CWph-0s;
	Tue, 10 Sep 2024 13:48:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Sep 2024 13:48:30 +0200
Message-Id: <20240910114832.2984195-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240910114832.2984195-1-a.fatoum@pengutronix.de>
References: <20240910114832.2984195-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_044837_002404_81AD2992 
X-CRM114-Status: GOOD (  13.81  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] KASan: implement non-warning kasan_is_poisoned_shadow
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We export kasan_poison_shadow and kasan_unpoison_shadow for use by
allocators, but provide no API to query whether a region is poisoned
without triggering a stack trace.

This can be useful however for more unconventional "allocators" like the
DMA API debug code, which can use it to detect double poisons/unpoisons
that should not occur if the DMA API is correctly used.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/kasan.h |  2 ++
 lib/kasan/generic.c   | 37 +++++++++++++++++++++++++++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/include/linux/kasan.h b/include/linux/kasan.h
index 5fa0bebb796b..7812e0fa805b 100644
--- a/include/linux/kasan.h
+++ b/include/linux/kasan.h
@@ -69,6 +69,7 @@ extern void kasan_disable_current(void);
 
 void kasan_poison_shadow(const void *address, size_t size, u8 value);
 void kasan_unpoison_shadow(const void *address, size_t size);
+int kasan_is_poisoned_shadow(const void *address, size_t size);
 
 bool kasan_save_enable_multi_shot(void);
 void kasan_restore_multi_shot(bool enabled);
@@ -77,6 +78,7 @@ void kasan_restore_multi_shot(bool enabled);
 
 static inline void kasan_poison_shadow(const void *address, size_t size, u8 value) {}
 static inline void kasan_unpoison_shadow(const void *address, size_t size) {}
+static inline int kasan_is_poisoned_shadow(const void *address, size_t size) { return -1; }
 
 static inline void kasan_enable_current(void) {}
 static inline void kasan_disable_current(void) {}
diff --git a/lib/kasan/generic.c b/lib/kasan/generic.c
index 3709b8da9aae..2432f9274401 100644
--- a/lib/kasan/generic.c
+++ b/lib/kasan/generic.c
@@ -177,6 +177,43 @@ static __always_inline bool check_memory_region_inline(unsigned long addr,
 	return !kasan_report(addr, size, write, ret_ip);
 }
 
+int kasan_is_poisoned_shadow(const void *_addr, size_t size)
+{
+	unsigned long addr = (unsigned long)_addr;
+	unsigned long ret;
+
+	if (!kasan_initialized)
+		return -1;
+
+	if (addr < kasan_shadow_start)
+		return -1;
+
+	if (addr > kasan_shadowed_end)
+		return -1;
+
+	if (unlikely(size == 0))
+		return -1;
+
+	if (unlikely(addr + size < addr))
+		return -1;
+
+	if (addr < kasan_shadow_base)
+		return -1;
+
+	ret = memory_is_nonzero(kasan_mem_to_shadow((void *)addr),
+			kasan_mem_to_shadow((void *)addr + size - 1) + 1);
+
+	if (unlikely(ret)) {
+		unsigned long last_byte = addr + size - 1;
+		s8 *last_shadow = (s8 *)kasan_mem_to_shadow((void *)last_byte);
+
+		if (unlikely(ret != (unsigned long)last_shadow ||
+			((long)(last_byte & KASAN_SHADOW_MASK) >= *last_shadow)))
+			return 1;
+	}
+	return 0;
+}
+
 void kasan_init(unsigned long membase, unsigned long memsize,
 		unsigned long shadow_base)
 {
-- 
2.39.2



