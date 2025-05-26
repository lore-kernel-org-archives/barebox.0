Delivery-date: Mon, 26 May 2025 16:19:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYgG-000Xun-0R
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 16:19:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYgE-0002K0-Q9
	for lore@pengutronix.de; Mon, 26 May 2025 16:19:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6ENiTuedtOy/Ef9cqli3ADM39SPXsTN30ciYAjUiYhU=; b=1SnvlRKRgppe8gPv5BSD1Tk+li
	gOV9mOsxnBOsKqp3DzVncJ7kf4zP90VFfFgYZDg0vPKAy84eIxefHsfhTgNl2vLG3Bpe2pbxZHnDv
	otxSRJGNA2yPv/7Jg2ab66862mUp3L3I9VifCD74HyvYbXFYNagM5sX25c79830OUE6NBke0TeZ8N
	CwobZwRSMz8h+dW4+NypEScFATc8ESUJCaj8t+V+a+sjsZHE2z1pLNpMKsrDWPUaQFD1+VkJoHk0G
	62qAGLEOGfmRrsx8F0xlQytBCUS8483vSDAb3IaOW4Axsxg6piPXzU5W6cH/BX2dymJeyrM0tDo/Y
	X28LdW/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYfm-00000008zE3-3Ki8;
	Mon, 26 May 2025 14:19:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYfh-00000008z9E-1sv9
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 14:19:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uJYfd-0001p8-WF; Mon, 26 May 2025 16:19:18 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 26 May 2025 16:19:09 +0200
Message-Id: <20250526141914.185212-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250526141914.185212-1-a.fatoum@barebox.org>
References: <20250526141914.185212-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_071921_491116_3191757B 
X-CRM114-Status: UNSURE (   9.77  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/6] memory: export inside_barebox_area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Knowing whether some object lies with barebox memory area can be useful
beyond the memory resource code, so export the function for general use.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/memory.c  | 9 +++++++--
 include/memory.h | 6 ++++++
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index a5b081be2c70..4e3cb1571e93 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -72,14 +72,19 @@ static int mem_register_barebox(void)
 }
 postmem_initcall(mem_register_barebox);
 
+bool inside_barebox_area(resource_size_t start, resource_size_t end)
+{
+	return barebox_res && barebox_res->start <= start &&
+		end <= barebox_res->end;
+}
+
 struct resource *request_barebox_region(const char *name,
 					resource_size_t start,
 					resource_size_t size)
 {
 	resource_size_t end = start + size - 1;
 
-	if (barebox_res && barebox_res->start <= start &&
-	    end <= barebox_res->end) {
+	if (inside_barebox_area(start, end)) {
 		struct resource *iores;
 		iores = __request_region(barebox_res, start, end,
 					 name, IORESOURCE_MEM);
diff --git a/include/memory.h b/include/memory.h
index 09c10b773fac..707c0f13130d 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -64,6 +64,7 @@ static inline u64 memory_sdram_size(unsigned int cols,
 void register_barebox_area(resource_size_t start, resource_size_t size);
 
 #if IN_PROPER
+bool inside_barebox_area(resource_size_t start, resource_size_t end);
 struct resource *request_barebox_region(const char *name,
 					resource_size_t start,
 					resource_size_t size);
@@ -75,6 +76,11 @@ static inline struct resource *request_barebox_region(const char *name,
 
 		return NULL;
 }
+
+static inline bool inside_barebox_area(resource_size_t start, resource_size_t end)
+{
+	return false;
+}
 #endif
 
 #endif
-- 
2.39.5



