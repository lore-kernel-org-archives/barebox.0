Delivery-date: Mon, 31 Aug 2026 11:49:42 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x0ye5-009EJC-1n
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 11:49:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C92F12018B6
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 11:49:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VVaZpuiB;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kJoPH2R79cZl9cjTwVSbO/Tehx8JTQ9jVwcZaxGS//o=; b=VVaZpuiBRQ6DcJzMAHcoVW/DGe
	GWzKuz2V/juGQ0webaXJIe9VS0rWGrPzBdTFQuUB9ukp9kAH8U7tLnvHk4Nme4HcZG4uk7tAZaTn5
	Td5pJvhNclPIfi1Z/bikHTNhEZmQ/fM+PyftP/7Iahjurgxpzo05XUgCN0Vt772YFmAtmpZtn8MU1
	SmYN54MILGvt+HZwjZgFX6lt9ip+v0Xad/DqL2lyEnJvNeMjxOuOXdiiiwIB6P1ovmJNZIpggBEK3
	LjvsROOjGW9sdTd3VRddL9ALd8BiF5WgXr3+aWc0dmnv/aN1C2HjM3xiMUQQ4/YNOV9IEG8GWMOrD
	tnYBviRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0ycz-000000093QW-3Py2;
	Mon, 31 Aug 2026 09:48:33 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0ycv-000000093Nq-10Qw
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 09:48:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 3D16B2020C1;
	Mon, 31 Aug 2026 11:48:26 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x0ycs-004Ebk-0P;
	Mon, 31 Aug 2026 11:48:26 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x0ycs-0000000Bs0g-0DGp;
	Mon, 31 Aug 2026 11:48:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Aug 2026 11:48:26 +0200
Subject: [PATCH 2/4] fs: remove the default automount when a cdev is
 removed
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260831-usbdisk-aliases-v1-2-0a2e40a35f3d@pengutronix.de>
References: <20260831-usbdisk-aliases-v1-0-0a2e40a35f3d@pengutronix.de>
In-Reply-To: <20260831-usbdisk-aliases-v1-0-0a2e40a35f3d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788169706; l=3901;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=4xHQFa3NLX0RE4b/alkZGUI0RaiC2B3ZtJ8fdL6056I=;
 b=KVoG5KZ07jnbpaYHDhqQlLobVQAh/BAYEAqB9xpSGXGvYu+tdb3jjg1pJUp5/wiRkFxqGVrpS
 YZ4MiZ2pnsNBekGAV7dl4UIMihNO71nIgs+fa6YPGdQ0qgFRD+UFGsn
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_024829_530218_7138B7E4 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  cdev_create_default_automount() registers an automount point
    at /mnt/<cdevname> which runs "mount <cdevname>" when the directory is first
    walked into. It never had a counterpart, so when the cdev goes [...] 
 
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
X-Stat-Signature: egmzsy63cpajsbmm3kbua53f6qwboq5i
X-Rspamd-Queue-Id: C92F12018B6
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
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

cdev_create_default_automount() registers an automount point at
/mnt/<cdevname> which runs "mount <cdevname>" when the directory is first
walked into. It never had a counterpart, so when the cdev goes away the
directory and the automount entry stay behind, pointing at a device that
no longer exists.

Unplugging a USB mass storage device leaves /mnt/disk0 and /mnt/disk0.0
around, and repartitioning at runtime leaves an entry for every partition
that doesn't come back - remove the two partitions of a disk and create a
single one instead and /mnt/disk0.1 is still there afterwards. The stale
entries are replaced once the same cdev name is registered again, since
automount_add() drops a previous entry for the same dentry, which is why
this went unnoticed for so long. Names that are not reused stay stale
forever though.

Add cdev_remove_default_automount() and call it from devfs_remove().
Whether a cdev has an automount is remembered in a new DEVFS_HAS_AUTOMOUNT
flag rather than being guessed from the path, so that an automount point
somebody registered by hand is never removed just because a cdev happens
to share its name.

Removal is safe while a filesystem is mounted: mounting holds the cdev
open via fsdev_open_cdev(), so devfs_remove() bails out with -EBUSY long
before we get here. automount_remove() looks the path up without
LOOKUP_DIRECTORY or LOOKUP_PARENT, so follow_automount() returns -EISDIR
and the lookup doesn't trigger the automount it is about to remove.

Fixes: 85dffaacfa ("fs: Create automount entries for the default mount pathes")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Assisted-by: Claude:claude-opus-5
---
 fs/devfs-core.c  |  2 ++
 fs/fs.c          | 20 +++++++++++++++++++-
 include/driver.h |  5 +++++
 3 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index b9e34f83bb..8b023009a0 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -605,6 +605,8 @@ int devfs_remove(struct cdev *cdev)
 
 	devfs_remove_aliases(cdev);
 
+	cdev_remove_default_automount(cdev);
+
 	list_for_each_entry_safe(c, tmp, &cdev->partitions, partition_entry)
 		cdevfs_del_partition(c);
 
diff --git a/fs/fs.c b/fs/fs.c
index ce41f23f88..f109e31075 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -3493,12 +3493,30 @@ void cdev_create_default_automount(struct cdev *cdev)
 	cmd = basprintf("mount %s", cdev->name);
 
 	make_directory(path);
-	automount_add(path, cmd);
+	if (!automount_add(path, cmd))
+		cdev->flags |= DEVFS_HAS_AUTOMOUNT;
 
 	free(cmd);
 	free(path);
 }
 
+void cdev_remove_default_automount(struct cdev *cdev)
+{
+	char *path;
+
+	if (!(cdev->flags & DEVFS_HAS_AUTOMOUNT))
+		return;
+
+	path = basprintf("/mnt/%s", cdev->name);
+
+	automount_remove(path);
+	rmdir(path);
+
+	cdev->flags &= ~DEVFS_HAS_AUTOMOUNT;
+
+	free(path);
+}
+
 void automount_print(void)
 {
 	struct automount *am;
diff --git a/include/driver.h b/include/driver.h
index 77b9b87695..b0602e6f16 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -572,6 +572,7 @@ extern struct list_head cdev_list;
 #define DEVFS_PARTITION_FOR_FIXUP	(1U << 13)
 #define DEVFS_WRITE_AUTOERASE		(1U << 14)
 #define DEVFS_PARTITION_CAN_OVERLAP	(1U << 15)
+#define DEVFS_HAS_AUTOMOUNT		(1U << 16)
 
 /**
  * cdev_write_requires_erase - Check whether writes must be done to erased blocks
@@ -615,10 +616,14 @@ cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, const guid_t *typeuuid);
 
 #ifdef CONFIG_FS_AUTOMOUNT
 void cdev_create_default_automount(struct cdev *cdev);
+void cdev_remove_default_automount(struct cdev *cdev);
 #else
 static inline void cdev_create_default_automount(struct cdev *cdev)
 {
 }
+static inline void cdev_remove_default_automount(struct cdev *cdev)
+{
+}
 #endif
 
 #define DEVFS_PARTITION_APPEND		0

-- 
2.47.3



