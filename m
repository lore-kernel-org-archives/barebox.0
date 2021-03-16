Delivery-date: Tue, 16 Mar 2021 13:37:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM8x6-0002fo-Vs
	for lore@lore.pengutronix.de; Tue, 16 Mar 2021 13:37:36 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM8x6-0002y8-8g
	for lore@pengutronix.de; Tue, 16 Mar 2021 13:37:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Y6F0CV1rXoRwYEubosCRXOl2SuPcxPrRbayaqLPqJHw=; b=MhBMEPmM7HwnoO19DPq+TjAHiJ
	HWViCyddXfYHtt9XZuYfBBuSZoIJ8E/3Ck1wnEAZOyBKz+O2+SMI7dxE6iUXcZuAy6Kh1VqD+A8P2
	x6z1ZNydbgscpSnmNqvQj3ZqMCQPCUkcOIjJpXOPI23zqZaVJBNYy/N5tzawF4/4If6CwEBGiviMe
	VEsyuH9PJij3Z1h9r62+uK+PBkcTx9c8Zjg3ZruaHpZP377Z1jdCToq++kvbqww2IBfgQ0wLdjva5
	wlZb6V6gT/ry/2Bh9bj9Y/mly8CH7Qjkl2ENKdiQHV18SZUjdVopWxLrtHLhrGqWNnL+ibjDGpkQE
	cCu8GVWw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lM8vq-000iVV-2g; Tue, 16 Mar 2021 12:36:18 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lM8vb-000iUA-K5
 for barebox@lists.infradead.org; Tue, 16 Mar 2021 12:36:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1615898156; x=1618490156;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FuJMyD5bGpbgmU+RGqUyfAz27DINeG3CupFtJtQzWHY=;
 b=XlNunCGyYhvZwMtI85JY8rCL4Yo8PF8wow5fMRKtpVInLq/N1ogsHJdBhyKAQK23
 /NhYpBYrTYAsB6wm1i6UULEGtbPTU249pRejVH84WhByuEpQlkkJvuO9WwYrmJ4N
 PpfVNQBI0XNmT4/31WDDT2KlbebJEA/Vq4vOxN20wkE=;
X-AuditID: c39127d2-0d3b770000001c86-60-6050a62c4540
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 09.F1.07302.C26A0506;
 Tue, 16 Mar 2021 13:35:56 +0100 (CET)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2021031613371052-157529 ;
 Tue, 16 Mar 2021 13:37:10 +0100 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: barebox@lists.infradead.org
Cc: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Tue, 16 Mar 2021 13:35:46 +0100
Message-Id: <20210316123546.25769-1-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 16.03.2021 13:37:10,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 16.03.2021 13:37:10
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCJMWRmVeSWpSXmKPExsWyRoCBS1dnWUCCwe97hhYnFvczOzB6bF5S
 H8AYxWWTkpqTWZZapG+XwJVxYHIHa8ENwYrljzpZGxjb+boYOTkkBEwk3rZ/Zuli5OIQEtjK
 KPHj8w0mkISQwDVGidm7pUBsNgEjiQXTGsHiIgLyEnP3t7GC2MwCBhLXG1aDxYUFnCTm/PrH
 AmKzCKhK7P84FaiGg4NXwEZi3bEgiF3yEjMvfWcHsXkFBCVOznwCtldC4AqjxKdpb1ggioQk
 Ti8+ywwxX1ti2cLXzBMY+WYh6ZmFJLWAkWkVo1BuZnJ2alFmtl5BRmVJarJeSuomRmDIHJ6o
 fmkHY98cj0OMTByMhxglOJiVRHhN8wIShHhTEiurUovy44tKc1KLDzFKc7AoifNu4C0JExJI
 TyxJzU5NLUgtgskycXBKNTBGpm15wflL3U/yotk5BeXPTmyz9po6Cgvo++04EP/Gxl30vPra
 /DiBKTzXQ1ryrqycljG/YmmmMEvJgrUzf27q4j+4fvqkuVH6VgILhM59S8mWPKm0X0Eupv3o
 xrZ9nowNy8W2dlZv4pjNVfCl5Ont8J0Tv6bsbGf/8M72GYNw9ZLFW5gqL+QrsRRnJBpqMRcV
 JwIA9WxytgcCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_123606_671694_7363046A 
X-CRM114-Status: GOOD (  13.78  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fs: Fix default mount when device already mounted
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Let cdev_mount_default return an error in case the device is already
mounted to a different location than the default mount point.

Otherwise the automount routine can get stuck in an infinite loop
spamming:

mounted /dev/mmc0.0 on /mnt/mmc
mounted /dev/mmc0.0 on /mnt/mmc
mounted /dev/mmc0.0 on /mnt/mmc

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 fs/fs.c | 28 +++++++++++++++++++---------
 1 file changed, 19 insertions(+), 9 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 3db24b7b6822..4f2345d22544 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -951,9 +951,10 @@ const char *cdev_get_mount_path(struct cdev *cdev)
 /*
  * cdev_mount_default - mount a cdev to the default path
  *
- * If a cdev is already mounted return the path it's mounted on, otherwise
- * mount it to /mnt/<cdevname> and return the path. Returns an error pointer
- * on failure.
+ * If a cdev is already mounted to the default mount path return the path
+ * it's mounted on. If it is mounted to any other path return EBUSY.
+ * Otherwise mount it to /mnt/<cdevname> and return the path. Returns an
+ * error pointer on failure.
  */
 const char *cdev_mount_default(struct cdev *cdev, const char *fsoptions)
 {
@@ -962,15 +963,24 @@ const char *cdev_mount_default(struct cdev *cdev, const char *fsoptions)
 	int ret;
 
 	/*
-	 * If this cdev is already mounted somewhere use this path
-	 * instead of mounting it again to avoid corruption on the
-	 * filesystem. Note this ignores eventual fsoptions though.
+	 * If this cdev is already mounted somewhere other than the
+	 * default mount path return -EBUSY instead of mounting it
+	 * again to avoid corruption on the filesystem. Note this
+	 * ignores eventual fsoptions though. If the cdev is already
+	 * mounted on the default path just return that path.
 	 */
 	path = cdev_get_mount_path(cdev);
-	if (path)
-		return path;
-
 	newpath = basprintf("/mnt/%s", cdev->name);
+
+	if (path) {
+		if (strcmp(newpath, path)) {
+			free(newpath);
+			return ERR_PTR(-EBUSY);
+		} else {
+			return path;
+		}
+	}
+
 	make_directory(newpath);
 
 	devpath = basprintf("/dev/%s", cdev->name);
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

