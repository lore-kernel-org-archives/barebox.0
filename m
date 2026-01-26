Delivery-date: Mon, 26 Jan 2026 11:45:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkK5r-005Vti-1G
	for lore@lore.pengutronix.de;
	Mon, 26 Jan 2026 11:45:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkK5q-0002Dz-BL
	for lore@pengutronix.de; Mon, 26 Jan 2026 11:45:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aKDlM1InXk77zhJepSUPSYHamk0CJIRaoYORZML4Hvs=; b=HFDgmGmW/skMhwEu0L30eEdb/l
	lEA1ec9FqOa/RqhiHLr8yxXsQSe+b+Wa+6iPgQLu2CyunZqcINV4pLt3aXonqkoA/3TLO/iHx5i6O
	fxYAsgLuQri53JHqMLLai6r9sYHvUvRSXQHF+iTgSimhAAgAZxDny7WbzmtNVf8KK1BrXNCm53yFX
	08QfeWLtfWOHr+xf6mulHtQ72awq+vIFQX5lCsqmFhvZ7TvO+f+ZYExGyNhl2j+Jzs10y/OXcCVEw
	y4vQjqQGncV7CWjA5VqCFwoSWcI+lXhTWE0fc/o9PMaFuKNyCgOX2ONF4zvnzUFHXYAwY84lGOgBA
	cruMtezg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkK5M-0000000CJWo-3WmG;
	Mon, 26 Jan 2026 10:44:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkK5E-0000000CJNa-2kov
	for barebox@lists.infradead.org;
	Mon, 26 Jan 2026 10:44:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkK5D-00022Q-41; Mon, 26 Jan 2026 11:44:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkK5D-002ZCF-1n;
	Mon, 26 Jan 2026 11:44:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkK5D-00000003EMO-1FeD;
	Mon, 26 Jan 2026 11:44:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Sonnet 4.5" <noreply@anthropic.com>
Date: Mon, 26 Jan 2026 11:44:29 +0100
Message-ID: <20260126104433.765071-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_024436_694784_4244FDC0 
X-CRM114-Status: GOOD (  12.13  )
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
X-Spam-Status: No, score=-2.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/2] FIT: fix double free issue with >1 reference count
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

fit_open() was recently changed to be reference counted. When the FIT is
already open, a handle will be returned with the canonical filename
being the only allocation incurred.

fit_close() however unconditionally frees the handle without regards to
the reference count.

Fix this and while at it, fix the memory leak for the canonical filename
as well.

Reported-by: Claude Sonnet 4.5 <noreply@anthropic.com>
Fixes: f3aadb274abe ("FIT: add support to cache opened fit images")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/image-fit.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index d8fa5a4c8a8b..b5d0e2e5381f 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -1020,6 +1020,7 @@ struct fit_handle *fit_open(const char *_filename, bool verbose,
 
 	handle = fit_get_handle(filename);
 	if (handle) {
+		free(filename);
 		refcount_inc(&handle->users);
 		return handle;
 	}
@@ -1053,10 +1054,10 @@ struct fit_handle *fit_open(const char *_filename, bool verbose,
 	return handle;
 }
 
-static void __fit_close(struct fit_handle *handle)
+static bool __fit_close(struct fit_handle *handle)
 {
 	if (!refcount_dec_and_test(&handle->users))
-		return;
+		return false;
 
 	if (handle->root)
 		of_delete_node(handle->root);
@@ -1066,12 +1067,13 @@ static void __fit_close(struct fit_handle *handle)
 
 	free(handle->filename);
 	free(handle->fit_alloc);
+	return true;
 }
 
 void fit_close(struct fit_handle *handle)
 {
-	__fit_close(handle);
-	free(handle);
+	if (__fit_close(handle))
+		free(handle);
 }
 
 static int do_bootm_fit(struct image_data *data)
-- 
2.47.3



