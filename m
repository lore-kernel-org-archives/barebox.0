Delivery-date: Thu, 18 Dec 2025 12:13:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBx0-00Co2X-2O
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:13:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBwy-0005oy-IG
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:13:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XCC0Pv32P25WssewDq9z+nKk6dZTaZMHGHW2HNDkeCs=; b=lE0Ft+LMpaXpInHg9lRRoJC26h
	GEwOqjHkofdvvsrsNoiMaEYaapSA1ZWve3a+W4UL+/Pq+ylgccZaCHq3+T3Sz25ig+3UoGn0MGZEy
	oTOCoRmPW283VuRJskqEMm0U7DjpjPEKQAEfv/aZ/ZEEoOjhc5RFt1yz7QMILIKTe7LVMF7n3giTv
	SqHJe8x0IeyInwCX9OI35PWWSO80/v2b13tiluIp4zd32ek0P2UfyorSkAh/WjnaAOE1LRad2kFHk
	dRvzpKKI0QBF2yD0k6bsMLSZV1loxqmztxEzBNkdub0Rh9uGWvQKgHM0jTPvzMU/o++fyR+4nRw7y
	Xe2YEiiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBwC-00000008IJo-2cme;
	Thu, 18 Dec 2025 11:12:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBw7-00000008IG7-2oea
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:12:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0005ND-HY; Thu, 18 Dec 2025 12:12:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-006GgN-0t;
	Thu, 18 Dec 2025 12:12:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0000000AVre-0l6o;
	Thu, 18 Dec 2025 12:12:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:24 +0100
Message-ID: <20251218111242.1527495-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_031247_740061_CBCCD8F9 
X-CRM114-Status: GOOD (  12.93  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 04/54] fs: fat: don't duplicate dentries when resolving differently cased paths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With case insensitive file systems, like FAT, we should avoid having
multiple dentry cache entries for the same file differing only in
capitalization. Allow case-insensitive file system to set a casefold
flag that barebox will honour when comparing dentries.

That this patch works can be verified using the debug_fs_dump command,
which will show a dentry for each differently cased path in a VFAT,
but only a single dentry once this patch is applied.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fat/fat.c       | 1 +
 fs/fs.c            | 3 +++
 include/linux/fs.h | 1 +
 3 files changed, 5 insertions(+)

diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index cdca666566d2..93d1e08b8456 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -352,6 +352,7 @@ static int fat_probe(struct device *dev)
 		goto err_open;
 
 	priv->cdev = fsdev->cdev;
+	fsdev->sb.s_casefold = true;
 
 	priv->fat.userdata = priv;
 	ret = f_mount(&priv->fat);
diff --git a/fs/fs.c b/fs/fs.c
index cc6f0f7057c3..e997bd5f6a99 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1562,6 +1562,9 @@ static bool d_same_name(const struct dentry *dentry,
 	if (dentry->d_name.len != name->len)
 		return false;
 
+	if (dentry->d_sb->s_casefold)
+		return strncasecmp(dentry->d_name.name, name->name, name->len) == 0;
+
 	return strncmp(dentry->d_name.name, name->name, name->len) == 0;
 }
 
diff --git a/include/linux/fs.h b/include/linux/fs.h
index e624b2ce7161..d3813ad9c543 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -160,6 +160,7 @@ struct super_block {
 	unsigned long		s_blocksize;
 	unsigned char		s_blocksize_bits;
 	unsigned char		s_dirt;
+	bool			s_casefold;
 	unsigned long long	s_maxbytes;	/* Max file size */
 	struct file_system_type	*s_type;
 	const struct super_operations	*s_op;
-- 
2.47.3



