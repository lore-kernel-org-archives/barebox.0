Delivery-date: Thu, 06 May 2021 18:27:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1legr1-0002jU-JD
	for lore@lore.pengutronix.de; Thu, 06 May 2021 18:27:59 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1legr0-00058Q-MG
	for lore@pengutronix.de; Thu, 06 May 2021 18:27:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2vRgUMxr4Dj4l2HCc5GbTwun6ATIIvwBy030MYf5rTg=; b=k/rJc7/JlLw4nGZqFt1NBfF0K
	aEv5hW2Rp1nDnDP+IzRv0vEgAdfWjvS+iUW4PgY37+8ORYjHZUtf0uQrUTLD1Wg44TR67lBdCVNQD
	nQKj04aYde4d15hJaIJL5rRxhx7pXaYUGIrDz4y/jNkriZ5koALT3q1fPhZEcoJDCzCG2bEUV8yom
	iuGAnPFujQ1CkbRUVN5sUwjLWMAT3CLPC6j4uGXA1wSn32oLqZAFwf2v+bki5vvM1beXgZU1axw8H
	741HD2MsJrDz2733j2skPY46u61t13wqXEUfQzveYVXNVUBaJiiCugdHKC/PwbSHW4U387LzUea6j
	P/y4uTyXw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1legpa-004nZX-1e; Thu, 06 May 2021 16:26:30 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1legpU-004nYf-Ka
 for barebox@desiato.infradead.org; Thu, 06 May 2021 16:26:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Type:Content-ID:Content-Description;
 bh=YdvielSOnSyhqz0jlTpDQYdtgEFVmfxsw67UPV6tn3A=; b=z0gKYLu/dylihFCkvzhh8JJBTu
 Pls+9DmqFR7gWT3dBS7+JcgCWHiPkUd/0Mm5N4MyOtdXOEF+SbXxCGQzZQ0TvDRWBwEtVGgPNVwoN
 eX/5KxuJj3Qv0suT5LtzQaY3V5m/CTmZKD96nnh5zpRfp7dYLEUo5eMh4uqWaCvU5zVswrdYP18L6
 dKEEHyg4r2jAIWs/5nYPWMrandAi9L88yWPDuE9pHpiP5HEPbZJ4/PrVAiZce+hm3u7I0YRdfyMsD
 GKM9qP6dXrr0RQLZmCje5YpH9krw3Tx1Qy2z8CO5h6r+BWHQL7wfpOGHrb4e6qHZs2g4c1IrA34Vh
 zyKgmeng==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1legpQ-006DJo-BO
 for barebox@lists.infradead.org; Thu, 06 May 2021 16:26:22 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1legpO-0004oi-Sh
 for barebox@lists.infradead.org; Thu, 06 May 2021 18:26:18 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1legpO-0003I6-KA
 for barebox@lists.infradead.org; Thu, 06 May 2021 18:26:18 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  6 May 2021 18:26:16 +0200
Message-Id: <20210506162616.11593-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506162616.11593-1-m.felsch@pengutronix.de>
References: <20210506162616.11593-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_092620_434578_9333664F 
X-CRM114-Status: GOOD (  23.03  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/3] fs: add linux_rootarg 'root=mmcblkXpN' support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since commit fa2d0aa96941 ("mmc: core: Allow setting slot index via
device tree alias") the linux kernel supports stable mmc device names.
Barebox has stable names since years so now we can connect both which
allows us to pass 'root=mmcblkXpN' as argument for the cmdline. Note: it
is crucial that the kernel device tree and the barebox device tree uses
the same mmc aliases.

This patch adds the support to store the above cmdline as linux_rootarg
if enabled. The partuuid is now used as fallback since it is not as
unique as the mmcblkXpN scheme. It is added as build option since the
system integrator needs to check if the used kernel contains the above
commit.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- improved Kconfig deps
- improved Kconfig help message
- minimal get_linux_mmcblkdev() simplifications

 common/Kconfig | 21 +++++++++++++++++++++
 fs/fs.c        | 42 ++++++++++++++++++++++++++++++++++++++----
 2 files changed, 59 insertions(+), 4 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 6b3c1701be..5815ea06f0 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -700,6 +700,27 @@ config FLEXIBLE_BOOTARGS
 	  to replace parts of the bootargs string without reconstructing it
 	  completely.
 
+config MMCBLKDEV_ROOTARG
+	bool
+	prompt "Support 'root=mmcblkXpN' cmdline appending"
+	depends on FLEXIBLE_BOOTARGS
+	depends on MCI
+	depends on OFTREE
+	help
+	  Enable this option to append 'root=mmcblkXpN' to the cmdline instead
+	  of 'root=PARTUUID=XYZ'. Don't enale this option if your used linux
+	  kernel don't contain commit [1]. The first linux kernel release
+	  containing that commit is v5.10-rc1.
+
+	  The appending only happen if barebox 'linux.bootargs.bootm.appendroot'
+	  variable is set or the used blspec entry contains 'linux-appendroot'.
+
+	  Note: It is crucial that the kernel device tree and the barebox device
+	  tree uses the same mmc aliases.
+
+	  [1] fa2d0aa96941 ("mmc: core: Allow setting slot index via device tree
+	      alias")
+
 config BAREBOX_UPDATE
 	bool "In-system barebox update infrastructure"
 
diff --git a/fs/fs.c b/fs/fs.c
index 881dc2fca0..91feee03e6 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2831,6 +2831,33 @@ out:
 }
 EXPORT_SYMBOL(chdir);
 
+static char *get_linux_mmcblkdev(struct fs_device_d *fsdev)
+{
+	struct cdev *cdevm, *cdev;
+	int id, partnum;
+
+	cdevm = fsdev->cdev->master;
+	id = of_alias_get_id(cdevm->device_node, "mmc");
+	if (id < 0)
+		return NULL;
+
+	partnum = 1; /* linux partitions are 1 based */
+	list_for_each_entry(cdev, &cdevm->partitions, partition_entry) {
+
+		/*
+		 * Partname is not guaranteed but this partition cdev is listed
+		 * in the partitions list so we need to count it instead of
+		 * skipping it.
+		 */
+		if (cdev->partname &&
+		    !strcmp(cdev->partname, fsdev->cdev->partname))
+			return basprintf("root=/dev/mmcblk%dp%d", id, partnum);
+		partnum++;
+	}
+
+	return NULL;
+}
+
 /*
  * Mount a device to a directory.
  * We do this by registering a new device on which the filesystem
@@ -2919,11 +2946,18 @@ int mount(const char *device, const char *fsname, const char *pathname,
 
 	fsdev->vfsmount.mnt_root = fsdev->sb.s_root;
 
-	if (!fsdev->linux_rootarg && fsdev->cdev && fsdev->cdev->partuuid[0] != 0) {
-		char *str = basprintf("root=PARTUUID=%s",
-					fsdev->cdev->partuuid);
+	if (!fsdev->linux_rootarg && fsdev->cdev) {
+		char *str = NULL;
+
+		if (IS_ENABLED(CONFIG_MMCBLKDEV_ROOTARG) &&
+		    cdev_is_mci_main_part_dev(fsdev->cdev->master))
+			str = get_linux_mmcblkdev(fsdev);
+
+		if (!str && fsdev->cdev->partuuid[0] != 0)
+			str = basprintf("root=PARTUUID=%s", fsdev->cdev->partuuid);
 
-		fsdev_set_linux_rootarg(fsdev, str);
+		if (str)
+			fsdev_set_linux_rootarg(fsdev, str);
 	}
 
 	path_put(&path);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

