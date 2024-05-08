Delivery-date: Wed, 08 May 2024 13:19:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4fKV-002spe-1W
	for lore@lore.pengutronix.de;
	Wed, 08 May 2024 13:19:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4fKU-0003zj-SN
	for lore@pengutronix.de; Wed, 08 May 2024 13:19:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n6wpjrYJDARLyJi2KdhWZATZtuEhJVXEX3vvIFYRx5k=; b=w/wk1kK4oK+3RX3tTz8lB63Aru
	VCmuhunzK6mI2i16QiIvYUmtE8L2b34H0S9IhAC/XnucHg8AVJzY2Ohxcm53pmH4QGV43qr/X5HXU
	lmhQnF5KVVGVe7t3wLeA0st/oyPtAXO1zdpkVFfP1UyrGR2l8sptnnmWfk0lKwF1YQOkmXBL+Ydym
	3pMJz1BmitcV9tcJNdULBR0wpVbLuWz8eoNnRDSb/wGLDbRX5jJoa6q2EQrejFOjVWfI7yMENJpj/
	uk0Tm5/IeIiKT4Ufvqdbzev3gBC+O6xiEBZaxEYYUwu5M2dasQR1uAkFKSkRtuu7OXnYeXoTsuur0
	DarE1+Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4fJs-0000000FAYb-2iHH;
	Wed, 08 May 2024 11:18:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4fJp-0000000FAW4-0Gl9
	for barebox@lists.infradead.org;
	Wed, 08 May 2024 11:18:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s4fJm-0003l6-0o; Wed, 08 May 2024 13:18:38 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s4fJl-000GPa-Ka; Wed, 08 May 2024 13:18:37 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s4fJl-001JMd-1j;
	Wed, 08 May 2024 13:18:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  8 May 2024 13:18:36 +0200
Message-Id: <20240508111836.307806-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240508111836.307806-1-a.fatoum@pengutronix.de>
References: <20240508111836.307806-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_041841_133870_A06D15B7 
X-CRM114-Status: GOOD (  12.56  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] pstore: add unlink implementation for deleting pstore files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

During debugging, it can be useful to delete a pstore file to start
fresh. There's already support for this in the code base using the erase
callback, but it was so far never called. Call it from the newly
introduced unlink operation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/pstore/fs.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
index f2ffc0ac6251..f11db91582aa 100644
--- a/fs/pstore/fs.c
+++ b/fs/pstore/fs.c
@@ -182,6 +182,29 @@ static int pstore_lseek(struct device *dev, FILE *file, loff_t pos)
 	return 0;
 }
 
+static int pstore_unlink(struct device *dev, const char *filename)
+{
+	struct list_head *head = dev->priv;
+	struct pstore_private *d;
+	int ret;
+
+	d = pstore_get_by_name(head, filename);
+	if (!d)
+		return -ENOENT;
+
+	if (!d->psi->erase)
+		return -EPERM;
+
+	ret = d->psi->erase(d->type, d->id, d->count, d->psi);
+	if (ret)
+		return ret;
+
+	list_del(&d->list);
+	free(d);
+
+	return 0;
+}
+
 static DIR *pstore_opendir(struct device *dev, const char *pathname)
 {
 	DIR *dir;
@@ -256,6 +279,7 @@ static struct fs_driver pstore_driver = {
 	.close     = pstore_close,
 	.read      = pstore_read,
 	.lseek     = pstore_lseek,
+	.unlink    = pstore_unlink,
 	.opendir   = pstore_opendir,
 	.readdir   = pstore_readdir,
 	.closedir  = pstore_closedir,
-- 
2.39.2



