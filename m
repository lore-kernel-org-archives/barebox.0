Delivery-date: Thu, 12 Mar 2026 16:03:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hZS-00Arhv-2z
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 16:03:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hZT-0000dl-6l
	for lore@pengutronix.de; Thu, 12 Mar 2026 16:03:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZIM2hWJ5Gv58K81HUqbimdgKnGi97FRNE/7YYjmwC+Y=; b=2RfPWI+UfDMo/Nlx4qGVF/sdoV
	FZWTttfqMdOC4hHUOEZiVunDsc2P2slj1VCxCuKbcYyGJhQTGjEcoMb9Mv5Z83nHMA3xMFnMFxVvl
	9Yh7JzmhmlMdrzAr655mZw7DmejnMB/pS0J/Iw97VzyViA5gomEjLXA3xlEAFl6I0Cocz6vwTgYi/
	wvWfOus+gWOuRXb/JH2lts+RMcNGfVAdsDDyALmOtpFql0IWgkcL3br+2Rbg+GGvAcxqyXq4kTenV
	I90tVNoq1guaaDJN/Jq0Kc3lA2wZ5QkY2Q1csHH9nHTNc7rsBri4JqD5MciKp8awH8jztx9msu6GD
	AKvZVHZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hYb-0000000EI6N-1IZU;
	Thu, 12 Mar 2026 15:02:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hYX-0000000EI35-2M2Y
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 15:02:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hYV-0008Um-Mf; Thu, 12 Mar 2026 16:02:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hYU-0052Pq-0X;
	Thu, 12 Mar 2026 16:02:31 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHe-000000093tN-1Jig;
	Thu, 12 Mar 2026 15:45:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 15:44:59 +0100
Message-ID: <20260312144505.2159816-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
References: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_080233_603226_5D004DF4 
X-CRM114-Status: GOOD (  11.25  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 16/16] libfile: remove file_to_sdram
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All users of file_to_sdram have now been switched to use
loadable_extract_into_sdram_all() or other loadable API, so it's now ok
to remove this function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/libfile.h |  3 ---
 lib/libfile.c     | 66 -----------------------------------------------
 2 files changed, 69 deletions(-)

diff --git a/include/libfile.h b/include/libfile.h
index c1e51a77b169..3f5ea5255af7 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -55,9 +55,6 @@ char *make_temp(const char *template);
 
 int cache_file(const char *path, char **newpath);
 
-struct resource *file_to_sdram(const char *filename, unsigned long adr,
-			       enum resource_memtype memtype);
-
 int fixup_path_case(int dirfd, const char **path);
 
 int open_fdt(const char *filename, size_t *size);
diff --git a/lib/libfile.c b/lib/libfile.c
index 0670ef0584cb..cf78c70354d9 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -830,72 +830,6 @@ int __read_full_anywhere(int fd, void *buf, size_t size)
 	return now < 0 ? now : now + nbytes;
 }
 
-#define BUFSIZ	(PAGE_SIZE * 32)
-
-struct resource *file_to_sdram(const char *filename, unsigned long adr,
-			       enum resource_memtype memtype)
-{
-	struct resource *res;
-	unsigned memattrs;
-	size_t size = BUFSIZ;
-	size_t ofs = 0;
-	ssize_t now;
-	int fd;
-
-	fd = open(filename, O_RDONLY);
-	if (fd < 0)
-		return NULL;
-
-	/* FIXME: EFI payloads are started with MMU enabled, so for now
-	 * we keep attributes as RWX instead of remapping later on
-	 */
-	memattrs = IS_ENABLED(CONFIG_EFI_LOADER) ? MEMATTRS_RWX : MEMATTRS_RW;
-
-	while (1) {
-
-		res = request_sdram_region("image", adr, size,
-					   memtype, memattrs);
-		if (!res)
-			goto out;
-
-		if (zero_page_contains(res->start + ofs)) {
-			void *tmp = malloc(BUFSIZ);
-			if (!tmp)
-				now = -ENOMEM;
-			else
-				now = read_full(fd, tmp, BUFSIZ);
-
-			if (now > 0)
-				zero_page_memcpy((void *)(res->start + ofs), tmp, now);
-			free(tmp);
-		} else {
-			now = read_full(fd, (void *)(res->start + ofs), BUFSIZ);
-		}
-
-		if (now < 0) {
-			release_sdram_region(res);
-			res = NULL;
-			goto out;
-		}
-
-		if (now < BUFSIZ) {
-			release_sdram_region(res);
-			res = request_sdram_region("image", adr, ofs + now,
-						   memtype, memattrs);
-			goto out;
-		}
-
-		release_sdram_region(res);
-
-		ofs += BUFSIZ;
-		size += BUFSIZ;
-	}
-out:
-	close(fd);
-
-	return res;
-}
-
 int fixup_path_case(int fd, const char **path)
 {
 	DIR *dir;
-- 
2.47.3



