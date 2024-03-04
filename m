Delivery-date: Mon, 04 Mar 2024 20:04:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDbq-008d64-30
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:04:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDbo-0007w2-PA
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:04:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GDHKMhZLQFMRXGwKM+nTfM9gxQB9gz4IFiapOVYSSjo=; b=T5Bbuw8LzHoI4p7rcNKkz207Jj
	SHuSOnLmATgGeN1bbk4CoNhfUopTvR2pIM93/B0V9FxMW0wH1qjvCN+CAoqtzL4i574BymQNh6XFy
	hM84UAvwjbsB6pJbqKdDtd6WvNpNKJ8cyx5fprF3USgg4dwYDNKGb066l4t8IxXuz1VeRD660lHjy
	tehBIPsFF3IzilggESSovnv/8s4oxsBF2UcaLA3v0y2KqqAAUc7uFSeThTqbyL91YrTHingejAx0J
	CD7j4iYCFTmDV/PuiQUpbQFzfJBAeeBc7c8/iBCkAo66WMBI6O6cTOobNYWYbokMgMYK4AHoa5ZAW
	DQVR0qlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDbA-0000000AJ2x-07sh;
	Mon, 04 Mar 2024 19:03:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaM-0000000AIOo-2BJF
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=GDHKMhZLQFMRXGwKM+nTfM9gxQB9gz4IFiapOVYSSjo=; b=FJKI1OPkkHiy0nLPmTrtbADcvi
	p81aTxWb6k2tOh2w3gUToevgAfUKkxfwGbXtrL9wqVGVVMonB9b/XunD8qcOfqYjAKJMlDbqzeXNd
	sqiMXacKzVrMOHnMxxsQYyRDp3wqb/V+AQ4OobTRWyUBAZ6shZEVGNGKfVcBhEGiyT88KxdcZQCHK
	qffkyEYA06rnJsrO4VXe7pdYfvPzh5reCISV1UVCOedKlfvNwJ/Xdmqf8oMQALlpjR9p0Z1ykq3er
	uP/ickVxXqSK99dunCBX9jetY2NM2clEX5DXlTQkEqt/hD8EBUKH7YEsKLVI951ovCGJEQO2+47gY
	i9LzNCxQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaF-000000051vb-2Oi3
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaD-00060M-TF; Mon, 04 Mar 2024 20:02:41 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaD-004PH0-Ep; Mon, 04 Mar 2024 20:02:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-00Ed9V-1C;
	Mon, 04 Mar 2024 20:00:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:14 +0100
Message-Id: <20240304190038.3486881-30-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190243_951290_BE2F9C9A 
X-CRM114-Status: GOOD (  14.12  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 029/113] fs: opendir: reference mount point until closedir is called
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently don't keep the path used for opendir alive beyond
the function, because all files are read and added into a linked
list at once. If an unmount happens before closedir though, the file
names will become invalidated, which shouldn't happen. Keep the path
alive for longer to block unmount until directory iteration is over.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c          | 4 ++--
 include/dirent.h | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 7d9bee539db5..a31343e2e272 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2757,6 +2757,7 @@ DIR *opendir(const char *pathname)
 	file.f_op = dir->d_inode->i_fop;
 
 	d = xzalloc(sizeof(*d));
+	d->path = path;
 
 	INIT_LIST_HEAD(&d->entries);
 	rd.dir = d;
@@ -2765,8 +2766,6 @@ DIR *opendir(const char *pathname)
 	if (ret)
 		goto out_release;
 
-	path_put(&path);
-
 	return d;
 
 out_release:
@@ -2785,6 +2784,7 @@ int closedir(DIR *dir)
 	if (!dir)
 		return errno_set(-EBADF);
 
+	path_put(&dir->path);
 	release_dir(dir);
 
 	return 0;
diff --git a/include/dirent.h b/include/dirent.h
index 75627730f84b..6e77058d2903 100644
--- a/include/dirent.h
+++ b/include/dirent.h
@@ -3,6 +3,7 @@
 #define __DIRENT_H
 
 #include <linux/list.h>
+#include <linux/path.h>
 
 struct dirent {
 	char d_name[256];
@@ -13,6 +14,7 @@ typedef struct dir {
 	struct fs_driver *fsdrv;
 	struct dirent d;
 	void *priv; /* private data for the fs driver */
+	struct path path;
 	struct list_head entries;
 } DIR;
 
-- 
2.39.2



