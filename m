Delivery-date: Mon, 31 Aug 2026 15:21:53 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x11xQ-009I2M-1X
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 15:21:53 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 06FF3201BCA
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 15:21:49 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=nr7VRC63;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y2OOpVduOEerjD9iGoDpKe/mMUcw5JRcMFFmTzJDn7s=; b=nr7VRC63f2pcRTu5TIj/s8o/1Q
	zaXwezsllhcOJkB75HvL2A1DuCU4M36uOFvjhZYPLv4ImclkYNFphE9PBT2r0eY25vAzQ6UAO/Q3u
	cgjZe/5Y8aqeL2a1vuELC6sq633GLkeyucscar645NuNkyFDBX+AP3MfJ2ta4xw22e2i6iL2W60yj
	dJ6fK7aTOrW1zE87Kre15ffguEMjVlXsjQP1FWCvdiulTGknaNyt2Nd7i+RswWnEyHxtYfWDBhAOu
	9jQPIUHeWZEWnIaZ1+M5UKOgB5APXFqU/Ii1bSlv9IoC7nfwx8SdYJo9v6Cc/57zxF00/XPKQQoNS
	1aUcGiHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11vx-00000009NvL-0cXm;
	Mon, 31 Aug 2026 13:20:21 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11vs-00000009NtC-2abS
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 13:20:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BA8AD201ED7;
	Mon, 31 Aug 2026 15:20:10 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-004GR1-1t;
	Mon, 31 Aug 2026 15:20:10 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-0000000H7Av-1wuA;
	Mon, 31 Aug 2026 15:20:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Aug 2026 15:20:11 +0200
Subject: [PATCH 04/13] fs: add cdev_umount_all()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260831-usb-device-lifetime-v1-4-6adf4054b909@pengutronix.de>
References: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
In-Reply-To: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788182410; l=2033;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=/UB5+U5kqFFFWDGO7jZlJ0cbjxr00VcK47OFUH8jLRg=;
 b=5rIKcCvDmS5mxnJDU46wV7ErBZa/s0OiGpkVrallZR6hH/oRHP5ef607r5uNg6fQZWgz+1++O
 SyGH/V4ukLbBMyNetrsKYrRJdqgE+CcRnLjc65ykzJxW49UNI0ER224
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_062016_836522_30433F98 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  umount_by_cdev() unmounts the filesystems mounted from one
    cdev. For a partitioned device that is not enough: the filesystems are mounted
    from the partitions, not from the disk itself, so unmounting t [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: gui6zhyw56j35tbbfb4z65pwmj3boioj
X-Rspamd-Queue-Id: 06FF3201BCA
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

umount_by_cdev() unmounts the filesystems mounted from one cdev. For a
partitioned device that is not enough: the filesystems are mounted from
the partitions, not from the disk itself, so unmounting the disk leaves
them behind.

Add a variant that walks the partitions as well. This is what a driver
needs when the medium it handed out is gone and the mounts on it have
become useless.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Assisted-by: Claude:claude-opus-5
---
 fs/fs.c      | 31 +++++++++++++++++++++++++++++++
 include/fs.h |  1 +
 2 files changed, 32 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index ce41f23f88..f0d3d9fa0a 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1033,6 +1033,37 @@ int umount_by_cdev(struct cdev *cdev)
 }
 EXPORT_SYMBOL(umount_by_cdev);
 
+/**
+ * cdev_umount_all - unmount everything mounted from a cdev
+ * @cdev: cdev to unmount
+ *
+ * Unmounts the filesystems mounted from @cdev and from its partitions.
+ * Useful for a medium that is gone, where the mounts cannot be used
+ * anymore anyway.
+ *
+ * Return: 0 on success or if nothing was mounted, the first error
+ *         otherwise
+ */
+int cdev_umount_all(struct cdev *cdev)
+{
+	struct cdev *partcdev;
+	int first_error = 0;
+	int ret;
+
+	for_each_cdev_partition(partcdev, cdev) {
+		ret = cdev_umount_all(partcdev);
+		if (ret && !first_error)
+			first_error = ret;
+	}
+
+	ret = umount_by_cdev(cdev);
+	if (ret && !first_error)
+		first_error = ret;
+
+	return first_error;
+}
+EXPORT_SYMBOL(cdev_umount_all);
+
 struct readdir_entry {
 	struct dirent d;
 	struct list_head list;
diff --git a/include/fs.h b/include/fs.h
index 9c3c8d9512..0cc58d73c2 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -112,6 +112,7 @@ static inline bool is_tftp_fs(const char *path)
 
 int flush(int fd);
 int umount_by_cdev(struct cdev *cdev);
+int cdev_umount_all(struct cdev *cdev);
 
 /* not-so-standard functions */
 #define ERASE_SIZE_ALL	((loff_t) - 1)

-- 
2.47.3



