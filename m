Delivery-date: Thu, 11 Dec 2025 21:43:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnVy-00AQVA-07
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:43:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnVx-0001BA-DK
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:43:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wWH9M3k0LDNqDQCVY17kSJzMfv+G0aIhG4yYoBKnmb8=; b=wUqOBs7EJExRxVhl7MAo/sddNV
	wVZNGkqfxYYxje06Gq/tKUbX8EHzrBv4f+RT+sYlT4w/6ebjoI4HEAZrMNy18qCSBj6+iu6UbR56l
	R67LVU3mZzbgNDqbJ5z6aQLPbW3L3qeqtZP/HId+axquWOEtCW022FwA28y+NqQeTTc0Vct4pYxGj
	b5kNO+2GDu86Gv+7fLfHJElmhJdZ6YIq/0vFHzjMGodu1xTsAU4lQ7VDL5q0ILmD3EEMO8uA4x0bT
	M1opBzU0r3JXwtPJJFHWCD5dFfoSQP+EHdPAQvHli/NdgMQMRLSWa0pY11xPOA2iBdhs4UA+S08KX
	nnL2w8OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnVZ-0000000HHGp-3qzF;
	Thu, 11 Dec 2025 20:43:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnVY-0000000HHGV-10xn
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:43:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=wWH9M3k0LDNqDQCVY17kSJzMfv+G0aIhG4yYoBKnmb8=; b=T2IsbWLvTK/xMYZwo20giRbak3
	NFwalQIfsa7EoSItc5jSvVC1c5IXsOWhoDi1i2Eqt44+eNGyFG623LFezZfe6cHprpM1VMPeMRQJ/
	DcKTBpSN2+V9612KdEoZoFPXPlA8nr+45GjHPudnJdDI5MbtLy5czXRWjukSop7e00jR1rOgnNXkZ
	J/joK+jn8IsNZqx7/wSyoOEitgSOmwujEc5Rn97fGYIM24YmkXjqXnHiO9B3RgBUikdoq0tq64z6A
	b8UqG/Lx0swj4x3WnIMUlsG8m5DXzP+hN//FKbHEYOQ6W1nwlRDQvBTfKfXtkATGOPd7uaQjQ1NDl
	nwOBSG3w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTme0-0000000Fa5s-2XD8
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:48:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnVV-00010t-5q; Thu, 11 Dec 2025 21:43:25 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnVU-005BXk-3D;
	Thu, 11 Dec 2025 21:43:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnVU-0000000AzOP-3mgV;
	Thu, 11 Dec 2025 21:43:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 11 Dec 2025 21:43:23 +0100
Message-ID: <20251211204324.2618644-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_194808_702722_86FD87ED 
X-CRM114-Status: GOOD (  11.36  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] libfile: use different memory types for os and initrd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

An initrd is not directly executable, so lets set the memory attributes
to reflect that.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/bootm.c    | 4 ++--
 include/libfile.h | 6 +++---
 lib/libfile.c     | 7 ++++---
 3 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 1fafb2a5cd06..22796b3522ac 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -276,7 +276,7 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 	if (!data->os_file)
 		return -EINVAL;
 
-	data->os_res = file_to_sdram(data->os_file, load_address);
+	data->os_res = file_to_sdram(data->os_file, load_address, MEMTYPE_LOADER_CODE);
 	if (!data->os_res)
 		return -ENOMEM;
 
@@ -401,7 +401,7 @@ bootm_load_initrd(struct image_data *data, unsigned long load_address)
 		goto done;
 	}
 
-	data->initrd_res = file_to_sdram(data->initrd_file, load_address);
+	data->initrd_res = file_to_sdram(data->initrd_file, load_address, MEMTYPE_LOADER_DATA);
 	if (!data->initrd_res)
 		return ERR_PTR(-ENOMEM);
 
diff --git a/include/libfile.h b/include/libfile.h
index 26571945f678..cdcad4b173d0 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -4,10 +4,9 @@
 
 #include <linux/types.h>
 #include <linux/compiler.h>
+#include <linux/ioport.h>
 #include <linux/bits.h>
 
-struct resource;
-
 int pread_full(int fd, void *buf, size_t size, loff_t offset);
 int pwrite_full(int fd, const void *buf, size_t size, loff_t offset);
 int write_full(int fd, const void *buf, size_t size);
@@ -55,6 +54,7 @@ char *make_temp(const char *template);
 
 int cache_file(const char *path, char **newpath);
 
-struct resource *file_to_sdram(const char *filename, unsigned long adr);
+struct resource *file_to_sdram(const char *filename, unsigned long adr,
+			       enum resource_memtype memtype);
 
 #endif /* __LIBFILE_H */
diff --git a/lib/libfile.c b/lib/libfile.c
index 7ca13a34b41d..a6690b0b904a 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -765,7 +765,8 @@ int cache_file(const char *path, char **newpath)
 
 #define BUFSIZ	(PAGE_SIZE * 32)
 
-struct resource *file_to_sdram(const char *filename, unsigned long adr)
+struct resource *file_to_sdram(const char *filename, unsigned long adr,
+			       enum resource_memtype memtype)
 {
 	struct resource *res;
 	unsigned memattrs;
@@ -786,7 +787,7 @@ struct resource *file_to_sdram(const char *filename, unsigned long adr)
 	while (1) {
 
 		res = request_sdram_region("image", adr, size,
-					   MEMTYPE_LOADER_CODE, memattrs);
+					   memtype, memattrs);
 		if (!res) {
 			printf("unable to request SDRAM 0x%08lx-0x%08lx\n",
 				adr, adr + size - 1);
@@ -816,7 +817,7 @@ struct resource *file_to_sdram(const char *filename, unsigned long adr)
 		if (now < BUFSIZ) {
 			release_sdram_region(res);
 			res = request_sdram_region("image", adr, ofs + now,
-						   MEMTYPE_LOADER_CODE, memattrs);
+						   memtype, memattrs);
 			goto out;
 		}
 
-- 
2.47.3



