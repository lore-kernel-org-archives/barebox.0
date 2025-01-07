Delivery-date: Tue, 07 Jan 2025 09:04:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4ZP-000Eqw-2w
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 09:04:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4Yv-0001sw-IQ
	for lore@pengutronix.de; Tue, 07 Jan 2025 09:04:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iTMVvhbKnIUix7kUWDKRn3LSc2mNwPslxSXo1nNL0Vw=; b=d6JW8QYjOmMNjkSnNpio1zdW5o
	l9mZ41H9P7yIUZ1cj03kXvpFiBFocH/SPwEbFdRHc68K/umONSEHCVzW0myxqhCIINGEgRwPnMfHL
	btZJ4GePoTaj6VRQdaMkr/EOe42bGPkSne9tVTp76P3pag/byI36pwYnK22RyafdWp1OKQnb0LzOg
	zSGOWHf9DAC/n3X9m+nWXTvaN3ofeoeOP3xWUxLusmlaufHs3+XI2PfehH1Ykon7PXKdeZsVOusjc
	jy+N8AIGOaDzhhiLD9w14ymrtz4NtQ3rJ+QTLz61c4SOkkXZFA6XfVYJiiOzee6dTi6ZVHKaQg6KM
	Cs3NCeHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4XJ-00000003q0y-0La8;
	Tue, 07 Jan 2025 08:02:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4VI-00000003pVI-25vb
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 07:59:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VH-0000rN-65; Tue, 07 Jan 2025 08:59:55 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VG-007IqZ-0g;
	Tue, 07 Jan 2025 08:59:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4VG-00Bv76-2t;
	Tue, 07 Jan 2025 08:59:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  7 Jan 2025 08:59:33 +0100
Message-Id: <20250107075939.2841119-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250107075939.2841119-1-a.fatoum@pengutronix.de>
References: <20250107075939.2841119-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_235956_541750_07C51F14 
X-CRM114-Status: GOOD (  11.13  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/8] fs: drop ifdefs in linux/fs.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We are not going to implement epoll or DAX any time soon, so let's
clean up that #ifdef hidden dead code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/fs.h | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/include/linux/fs.h b/include/linux/fs.h
index b1161c4a881f..353e2a359d24 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -171,9 +171,6 @@ struct super_block {
 	int			s_count;
 	int			s_syncing;
 	int			s_need_sync_fs;
-#ifdef CONFIG_SECURITY
-	void                    *s_security;
-#endif
 	struct xattr_handler	**s_xattr;
 
 	struct list_head	s_inodes;	/* all inodes */
@@ -234,20 +231,8 @@ struct file {
 	unsigned int		f_uid, f_gid;
 
 	u64			f_version;
-#ifdef CONFIG_SECURITY
-	void			*f_security;
-#endif
 	/* needed for tty driver, and maybe others */
 	void			*private_data;
-
-#ifdef CONFIG_EPOLL
-	/* Used by fs/eventpoll.c to link all the hooks to this file */
-	struct list_head	f_ep_links;
-	spinlock_t		f_ep_lock;
-#endif /* #ifdef CONFIG_EPOLL */
-#ifdef CONFIG_DEBUG_WRITECOUNT
-	unsigned long f_mnt_write_state;
-#endif
 };
 
 struct super_operations {
@@ -276,11 +261,7 @@ static inline struct inode *file_inode(const struct file *f)
 #define S_IMA		1024	/* Inode has an associated IMA struct */
 #define S_AUTOMOUNT	2048	/* Automount/referral quasi-directory */
 #define S_NOSEC		4096	/* no suid or xattr security attributes */
-#ifdef CONFIG_FS_DAX
-#define S_DAX		8192	/* Direct Access, avoiding the page cache */
-#else
 #define S_DAX		0	/* Make all the DAX code disappear */
-#endif
 
 /*
  * Note that nosuid etc flags are inode-specific: setting some file-system
-- 
2.39.5



