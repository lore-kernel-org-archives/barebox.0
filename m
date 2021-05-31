Delivery-date: Mon, 31 May 2021 09:14:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc7l-0002tq-0O
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:14:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc7j-0003dY-Tz
	for lore@pengutronix.de; Mon, 31 May 2021 09:14:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KoQxQzIy40RZoCUz9Q+ARkHThRIwALFRIPkKJ1bEmMY=; b=mZMVuj/LcLn+3J
	/iJOS/WGR8bi9EIfY7a2rPP1m9bpiWdXJXRiQYSSZLsQrAfXhXw0TfhxoWEgJhPvXaj5vcituTzv8
	hSH3o8NTDPbgJfPxxJsWLR4wlvsZxq01JTthKYDdd0pDSYL1x6nRqpcspsMArA0FxWEm3DWIaL+XD
	xz81EALQSiLUr5LfY2pdQfjkTz5UKQNkkZ56Ph3bGwBIhPvtFSMTd20bvyJbCQRyU6YPKaEZGnRze
	fg4fgRdTxEZQWa82UuPrBubI9gPcmhCR1ugJWTUejDUBOEr/efu0aU6KuVgz4hKntZqXpxVEAqbUS
	mJ2eInC4gpiFgGBDeW2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnc6W-00B7av-P3; Mon, 31 May 2021 07:12:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnc6M-00B7Xt-5T
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:12:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnc6K-0003Dp-O2; Mon, 31 May 2021 09:12:40 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnc6K-0007zS-CL; Mon, 31 May 2021 09:12:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mol@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:12:34 +0200
Message-Id: <20210531071239.30653-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531071239.30653-1-a.fatoum@pengutronix.de>
References: <20210531071239.30653-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_001242_287048_1AA39EE1 
X-CRM114-Status: GOOD (  14.76  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] common: memory: allocate all memory devices at once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Follow-up commit will fuse overlapping RAM banks. As all memory is
supposed to be registered during mem_initcall or before, we can postpone
device creation to mmu_initcall, so we can directly allocate devices
spanning the correct region.

The mem driver and the devinfo command are the only consumers of these
devices, so it's ok to register the devices at mmu_initcall.

While at it, drop the struct memory_bank::dev member.
It's unused anywhere.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/memory.c  | 17 +++++++++++++----
 include/memory.h |  1 -
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 392522bfc3db..612ed87168b5 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -115,15 +115,11 @@ int barebox_add_memory_bank(const char *name, resource_size_t start,
 				    resource_size_t size)
 {
 	struct memory_bank *bank = xzalloc(sizeof(*bank));
-	struct device_d *dev;
 
 	bank->res = request_iomem_region(name, start, start + size - 1);
 	if (IS_ERR(bank->res))
 		return PTR_ERR(bank->res);
 
-	dev = add_mem_device(name, start, size, IORESOURCE_MEM_WRITEABLE);
-
-	bank->dev = dev;
 	bank->start = start;
 	bank->size = size;
 
@@ -132,6 +128,19 @@ int barebox_add_memory_bank(const char *name, resource_size_t start,
 	return 0;
 }
 
+static int add_mem_devices(void)
+{
+	struct memory_bank *bank;
+
+	for_each_memory_bank(bank) {
+		add_mem_device(bank->res->name, bank->start, bank->size,
+			       IORESOURCE_MEM_WRITEABLE);
+	}
+
+	return 0;
+}
+mmu_initcall(add_mem_devices);
+
 /*
  * Request a region from the registered sdram
  */
diff --git a/include/memory.h b/include/memory.h
index 906d9f7b2689..c793bb51ed77 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -11,7 +11,6 @@ ulong mem_malloc_end(void);
 
 struct memory_bank {
 	struct list_head list;
-	struct device_d *dev;
 	unsigned long start;
 	unsigned long size;
 	struct resource *res;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

