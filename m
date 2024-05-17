Delivery-date: Fri, 17 May 2024 08:45:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7rLl-000wpn-2v
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 08:45:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7rLl-0006uy-4X
	for lore@pengutronix.de; Fri, 17 May 2024 08:45:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vJ+UMuPKyk/f7oFcKKyvlWTuQ6Y5c+Uv/7UmEAud0Ic=; b=HowglY0SgIOt0UqkicEC1pmFZS
	HPn9MWigRIzcXKkatYKjHsAE9YHfU2k5sAGr39zr8J3Vps7IY+0tjpb3CmBkEOtwe6bGLKz4Cxuin
	lpt1XJJ88lFN3HiYihe/Vt0jTr1a7VDXVCDQ6Gjya1GOfUV3CdxmTGoTD9sHZUBKEJbBaR5rjN54w
	PN9jijFpaK6WPGSTsXFf6UZD/nOZAzATCR6SL5g+RDUg54+nabJDLieAKaDKp7iXiX9NdME2WYOh+
	NSfnnpbEgt+H1ZIGMfRdjwg7i6EA++zOSOiuRKO0dtbsNJKSm3szbRB25JfyhYmMrFtjd0c1Q56z9
	yK306AAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7rLF-00000006yUB-0Q9o;
	Fri, 17 May 2024 06:45:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7rL8-00000006yR3-0lDV
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 06:45:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7rL6-0006Wr-N3; Fri, 17 May 2024 08:45:12 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7rL6-001pej-Au; Fri, 17 May 2024 08:45:12 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7rL6-00Emcc-0j;
	Fri, 17 May 2024 08:45:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 08:45:06 +0200
Message-Id: <20240517064511.3307462-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517064511.3307462-1-a.fatoum@pengutronix.de>
References: <20240517064511.3307462-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_234514_303770_DE710CD7 
X-CRM114-Status: GOOD (  16.31  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/6] memory: add support for requesting barebox area as a whole
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox-specific code and data is normally located at the end of
early-known memory. To ensure it's not overwritten, parts of it are
reserved with request_sdram_region at different places.

Gaps in the reservation lead to multiple issues in the past.
So for documentation purposes and to avoid functiosn like
memory_bank_first_find_space finding vacant area where there isn't,
allow architectures call register_barebox_area to do one full
SDRAM request for the area.

Region requests for subsets of this area will be switched in the
follow-up commit to use the new request_barebox_region, which allocates
a subregion if it lies inside a registered barebox area and defers
to request_sdram_region otherwise.

The motivation for this patch is that with the addition of handoff data,
doing separate memory reservation for every accounting structure (cookie
and linked list) in addition to the data could make iomem output a bit
unwieldy, but we really want to avoid anyone else overwriting it.

While at it, we also rename the regions for barebox code and bss to be
more descriptive.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 common/memory.c  | 38 ++++++++++++++++++++++++++++++++++++--
 include/memory.h |  6 ++++++
 2 files changed, 42 insertions(+), 2 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 583843cc34c0..8e68b5e8bb20 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -57,6 +57,40 @@ void mem_malloc_init(void *start, void *end)
 	mem_malloc_initialized = 1;
 }
 
+static struct resource *barebox_res;
+static resource_size_t barebox_start;
+static resource_size_t barebox_size;
+
+void register_barebox_area(resource_size_t start,
+			   resource_size_t size)
+{
+	barebox_start = start,
+	barebox_size = size;
+}
+
+static int mem_register_barebox(void)
+{
+	if (barebox_start && barebox_size)
+		barebox_res = request_sdram_region("barebox", barebox_start,
+						   barebox_size);
+	return 0;
+}
+postmem_initcall(mem_register_barebox);
+
+struct resource *request_barebox_region(const char *name,
+					resource_size_t start,
+					resource_size_t size)
+{
+	resource_size_t end = start + size - 1;
+
+	if (barebox_res && barebox_res->start <= start &&
+	    end <= barebox_res->end)
+		return __request_region(barebox_res, start, end,
+					name, IORESOURCE_MEM);
+
+	return request_sdram_region(name, start, size);
+}
+
 static int mem_malloc_resource(void)
 {
 #if !defined __SANDBOX__
@@ -69,7 +103,7 @@ static int mem_malloc_resource(void)
 	request_sdram_region("malloc space",
 			malloc_start,
 			malloc_end - malloc_start + 1);
-	request_sdram_region("barebox",
+	request_sdram_region("barebox code",
 			(unsigned long)&_stext,
 			(unsigned long)&_etext -
 			(unsigned long)&_stext);
@@ -77,7 +111,7 @@ static int mem_malloc_resource(void)
 			(unsigned long)&_sdata,
 			(unsigned long)&_edata -
 			(unsigned long)&_sdata);
-	request_sdram_region("bss",
+	request_sdram_region("barebox bss",
 			(unsigned long)&__bss_start,
 			(unsigned long)&__bss_stop -
 			(unsigned long)&__bss_start);
diff --git a/include/memory.h b/include/memory.h
index d8691972ec9b..571effd3b0d6 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -61,4 +61,10 @@ static inline u64 memory_sdram_size(unsigned int cols,
 	return (u64)banks * width << (rows + cols);
 }
 
+void register_barebox_area(resource_size_t start, resource_size_t size);
+
+struct resource *request_barebox_region(const char *name,
+					resource_size_t start,
+					resource_size_t size);
+
 #endif
-- 
2.39.2



