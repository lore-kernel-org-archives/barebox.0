Delivery-date: Mon, 29 Nov 2021 13:47:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mrg4M-0000Je-50
	for lore@lore.pengutronix.de; Mon, 29 Nov 2021 13:47:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mrg4L-0007lB-7N
	for lore@pengutronix.de; Mon, 29 Nov 2021 13:47:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I0Cez2sP5xvJzD80FljhBcQXx2RIJXvfVr9k/tjebeQ=; b=4yjUNO436jy/Z0
	sd5jlcQ3Lmz5RA8vPTWsj/0eD4ar3y81srk4IqSaJ3JPHS6RpY6aigKYD28yq2+8eHay1C+eEGXxA
	TQVdRkF3jJEAVERELl9Ikv+NUnrMJmDE7THg6i8UlLfCYCnnGK3u9YNjS7tJJZaWK2L5LYFQCc3JG
	O/YcdoEk0+8rGakvQPsCchboesbXAMrWZ92gOzowLFQpBsUb4CVgZ6BBH5HB5WHSF17hXvB6uUbXi
	l0RDStaFUq+tgUO+xyLQcXoYCyX7PMRMjeLsjG/uDmsqRkhEHtWE+t/S1M7HMq+2UgG2+1Gqic3TS
	WRfAPWA8gLJYAppVdtaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mrg2r-000jBu-Cy; Mon, 29 Nov 2021 12:46:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mrg2l-000jBM-QQ
 for barebox@lists.infradead.org; Mon, 29 Nov 2021 12:46:05 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <has@pengutronix.de>)
 id 1mrg2k-0007Re-KU; Mon, 29 Nov 2021 13:46:02 +0100
Received: from has by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <has@pengutronix.de>)
 id 1mrg2k-00040B-5i; Mon, 29 Nov 2021 13:46:02 +0100
From: Holger Assmann <h.assmann@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 29 Nov 2021 13:45:44 +0100
Message-Id: <20211129124545.14171-2-h.assmann@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211129124545.14171-1-h.assmann@pengutronix.de>
References: <20211129124545.14171-1-h.assmann@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211129_044603_881970_C348DADA 
X-CRM114-Status: GOOD (  15.89  )
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
Cc: Holger Assmann <h.assmann@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] fs: jffs2: introduce reference counting at probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Barebox jffs2 driver initialises global slab caches and compressors
within the probing stage [1]. In Barebox, jffs2_create_slab_caches() has
several calls to kmem_cache_create() which does nothing more than
allocating the context data structure for the kmem_cache.

Probing a second jffs2 however will overwrite the original pointers
returned by kmem_cache_create(), leading to a double free when more than
one jffs2 file system gets unmounted and jffs2_destroy_slab_caches() is
called. The same issue exists regarding jffs2_compressors_init().

We can fix this bug by introducing reference counting for both the slab
caches and the compressors so that the global data structures are kept
as long as at least one file system is present.

[1] jffs2_compressors_init(), jffs2_create_slab_caches() in probe()

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
---
 fs/jffs2/fs.c | 34 ++++++++++++++++++++++------------
 1 file changed, 22 insertions(+), 12 deletions(-)

diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index c1d04c397d..7538252336 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -386,6 +386,8 @@ void jffs2_flash_cleanup(struct jffs2_sb_info *c) {
 	}
 }
 
+static int jffs2_probe_cnt;
+
 static int jffs2_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev;
@@ -408,17 +410,19 @@ static int jffs2_probe(struct device_d *dev)
 
 	sb->s_fs_info = ctx;
 
-        ret = jffs2_compressors_init();
-        if (ret) {
-		pr_err("error: Failed to initialise compressors\n");
-		goto err_out;
-        }
+	if (!jffs2_probe_cnt) {
+		ret = jffs2_compressors_init();
+		if (ret) {
+			pr_err("error: Failed to initialise compressors\n");
+			goto err_out;
+		}
 
-        ret = jffs2_create_slab_caches();
-        if (ret) {
-		pr_err("error: Failed to initialise slab caches\n");
-		goto err_compressors;
-        }
+		ret = jffs2_create_slab_caches();
+		if (ret) {
+			pr_err("error: Failed to initialise slab caches\n");
+			goto err_compressors;
+		}
+	}
 
         if (jffs2_fill_super(fsdev, 0)) {
 		dev_err(dev, "no valid jffs2 found\n");
@@ -426,6 +430,8 @@ static int jffs2_probe(struct device_d *dev)
 		goto err_slab;
 	}
 
+	jffs2_probe_cnt++;
+
 	return 0;
 
 err_slab:
@@ -445,8 +451,12 @@ static void jffs2_remove(struct device_d *dev)
 	fsdev = dev_to_fs_device(dev);
 	sb = &fsdev->sb;
 
-	jffs2_destroy_slab_caches();
-	jffs2_compressors_exit();
+	jffs2_probe_cnt--;
+
+	if (!jffs2_probe_cnt) {
+		jffs2_destroy_slab_caches();
+		jffs2_compressors_exit();
+	}
 
 	jffs2_put_super(sb);
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

