Delivery-date: Mon, 03 May 2021 13:50:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX6A-0002zK-Fo
	for lore@lore.pengutronix.de; Mon, 03 May 2021 13:50:50 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX69-0008TO-Jy
	for lore@pengutronix.de; Mon, 03 May 2021 13:50:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5Eqv+FIuIwgGQ4x9Jpk38GESfepuDvGTRv3EgyFYMQE=; b=V0BxOisR1hOYExc0UAT2KENWW
	FemjMzroJ8LUqC+6OUVVitdbyNKyNjEPcIXtleHL9Qwc9reookeOPQDOVt5Bx2/kYFhXmIxARDNSO
	9dWYbTcFOa+4UOuvuEgub6efS+N6Zd18B5QFhfY75usaMNKgWI1SeLXhFtYSYNgk7/bD57IuX8Qvw
	4mZ0JzU9eSr8ritcpAXXbTd6Bkb76H4PZt6p3gSoXqCwzBuCf6NYA6sag6+xFVO4wA1hXv/ucYnZd
	u64jZv8WN+GYlf2yCLuOLstj8EH3phLYRL6drjawS9PZMI6A2IEOgOCk8aYER5BvEH45vjfpuwm7i
	n/GkIbYig==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldX53-00Dmhd-FN; Mon, 03 May 2021 11:49:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldX4k-00Dmeu-Gp
 for barebox@desiato.infradead.org; Mon, 03 May 2021 11:49:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=e2bNN23JQxofH4LsvIPdt2ep3KHwLUpVhBLR9XgbMzA=; b=nVwo3JKGuJNrw1FR8lM4j+Is9F
 7zSydg/3avM8V2KXo6UzryLUlPX0loZz27cBDrlpiaxwHvuASgMIFZgN6mBPt9Fhc/YIQBayLon42
 cZTGQayHY/KfJpzsOF+quHnqPFvX42+kcWaDp2BCDOjJD2RRx8wMg82y6WAOvvx2E9YTZw/M2irqK
 Hvf2xpmGbYNCVptmxp8PUNNlaJMBYWda/3g3uSi3ZMEvkL5FnIr0GgMeFota/t3cerTxYEBAOOIhU
 lfXBBBW6NU03oRR4vAphes0zSrCcs8V1MwBZRDbb3w5WfLgdgP5QiKnu4WWGikr8pcteFTy5eBNkg
 wNO1/D+w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldX4g-0031aG-Kh
 for barebox@lists.infradead.org; Mon, 03 May 2021 11:49:21 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldX4d-0007ps-Ic; Mon, 03 May 2021 13:49:15 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldX4c-0003c0-KK; Mon, 03 May 2021 13:49:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 May 2021 13:49:01 +0200
Message-Id: <20210503114901.13095-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210503114901.13095-1-a.fatoum@pengutronix.de>
References: <20210503114901.13095-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_044918_738238_28F29921 
X-CRM114-Status: GOOD (  11.31  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 16/16] fs: error out when writing on read-only file system
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On an ext4 partition, Running

  echo -a /mnt/disk0.0/file test

will crash barebox because fsdrv->truncate in __write is NULL.

Don't let it come to this and verify earlier that the FS implements
->write. While at it, explicitly compare with O_RDONLY (== 0) for
clarity.

Fixes: b3fbfad7aeaf ("fs: dentry cache implementation")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index a023324913c4..881dc2fca0ce 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -321,13 +321,13 @@ static ssize_t __write(FILE *f, const void *buf, size_t count)
 	struct fs_driver_d *fsdrv;
 	int ret;
 
-	if (!(f->flags & O_ACCMODE)) {
+	fsdrv = f->fsdev->driver;
+
+	if ((f->flags & O_ACCMODE) == O_RDONLY || !fsdrv->write) {
 		ret = -EBADF;
 		goto out;
 	}
 
-	fsdrv = f->fsdev->driver;
-
 	if (fsdrv != ramfs_driver)
 		assert_command_context();
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

