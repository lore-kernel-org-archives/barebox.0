Delivery-date: Thu, 06 May 2021 13:25:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lec82-0001zi-RZ
	for lore@lore.pengutronix.de; Thu, 06 May 2021 13:25:14 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lec81-00070y-RY
	for lore@pengutronix.de; Thu, 06 May 2021 13:25:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=59qi3+SQEc6MY6wtLtCEQI9c6ouCOzC0UW7BUioxRjc=; b=IwEwbA0SGEX/Bif/sI07BMFbd
	kwuESJ9EU1EzZ+6CpDAqUF2T+TMNZMtznGXwWvtigGNnm/0yHCjdYW/3qfCw0ADTjR3ns1mXcbJ7h
	B3jKK4qjdHjZvo3DRnTof9ma+pPDA0qK9wn8LH+It/jlI+RjlbLHT6+wiRfYtm53pj5qKdEJoiKSU
	UmBuw7VwTjjqiHSivLPGCttp9TdLAiqULJcwyh7istFhn3zoXdjR9qOBkjoC7JNdLGljr2KfLLLlg
	tzeVyKhg1qsrnHYdne4YI9lKo6Si45ezwVHgrimmepAPmP30wkssIXcjBjvp2Er3vwQJHOzRgKykq
	JtOdNowAg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lec6z-0047JL-IJ; Thu, 06 May 2021 11:24:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lec5Q-0047Cy-7f
 for barebox@desiato.infradead.org; Thu, 06 May 2021 11:22:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Type:Content-ID:Content-Description;
 bh=u3/RW2gK+wHxVrkfs2yzIQtIL+TuUFJeB29nYwozbxk=; b=XXDzJYMtNcytgh6gptKlJZfnr9
 p3y8XH+jiIE4p3LsfQ4fI6rYq42LcTh0YSD0x26ttaub6ogW3ItEUgb+n2TkVsPD+hAnTXFcqMDFi
 vSL2akjHG0I0gsIoCF74qZgXRyLlJF8qUdyU4itrnUOv1syWWu7oKcqn5ehGRj0b7n4qL3BftdUNz
 53GYZSKEZ7ibSLYA67GCGbCTDCTiufNobYB9eEClUEm8WsBzD7aMqghFQi04VRz5uXswTdGle1s8u
 NT/aRs2Ipt+FVPmete75hohEz7tKcwIeOBuAVaIzbf7kgsyTlQqOpJGnWnaEDeBXiDCcJK0JvNLB3
 gUlPGmnw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lec5N-005z4w-KT
 for barebox@lists.infradead.org; Thu, 06 May 2021 11:22:31 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lec5J-0006ob-Qq
 for barebox@lists.infradead.org; Thu, 06 May 2021 13:22:25 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lec5I-0000N9-GI
 for barebox@lists.infradead.org; Thu, 06 May 2021 13:22:24 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  6 May 2021 13:22:19 +0200
Message-Id: <20210506112219.27114-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506112219.27114-1-m.felsch@pengutronix.de>
References: <20210506112219.27114-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_042229_693572_C740EA6B 
X-CRM114-Status: GOOD (  22.53  )
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
Subject: [PATCH 3/3] fs: add linux_rootarg 'root=mmcblkXpN' support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since commit fa2d0aa96941 ("mmc: core: Allow setting slot index via
device tree alias") the kernel supports stable mmc device names. Since
the barebox mmc device names matches the one from the kernel we can pass
the 'root=mmcblkXpN' argument on commandline to refer to the correct
boot medium.

This patch adds the support to store the above commandline as
linux_rootarg if enabled. Use the partuuid as fallback since it is not
as unique as the mmcblkXpN scheme. Add a own build option since the
system integrator needs to check if the used kernel contains the above
commit.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Hi all,

I know that:
8<-----------------
+		if (!str && fsdev->cdev->partuuid[0] != 0)
+			str = basprintf("root=PARTUUID=%s", fsdev->cdev->partuuid);
8<-----------------
is longer than 80char but for the sake of readability I kept that
oneliner. Should we update checkpatch accordingly to match the new linux
rule?

Regards,
  Marco


 common/Kconfig | 15 +++++++++++++++
 fs/fs.c        | 48 ++++++++++++++++++++++++++++++++++++++++++++----
 2 files changed, 59 insertions(+), 4 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 6b3c1701be..a09a1d9456 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -700,6 +700,21 @@ config FLEXIBLE_BOOTARGS
 	  to replace parts of the bootargs string without reconstructing it
 	  completely.
 
+config MMCBLKDEV_ROOTARG
+	bool
+	prompt "Support 'root=mmcblkXpN' cmdline appending"
+	help
+	  Enable this option to append 'root=mmcblkXpN' to the kernel cmdline
+	  instead of 'root=PARTUUID=XYZ'. Don't enale this option if your used
+	  kernel don't contain commit [1].
+
+	  The appending only happen if barebox 'linux.bootargs.bootm.appendroot'
+	  variable is set or the used blspec entry contains 'linux-appendroot'.
+
+	  [1] fa2d0aa96941 ("mmc: core: Allow setting slot index via device tree
+	      alias")
+
+
 config BAREBOX_UPDATE
 	bool "In-system barebox update infrastructure"
 
diff --git a/fs/fs.c b/fs/fs.c
index 881dc2fca0..8ee1e7febe 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2831,6 +2831,39 @@ out:
 }
 EXPORT_SYMBOL(chdir);
 
+static char *get_linux_mmcblkdev(struct fs_device_d *fsdev)
+{
+	struct cdev *cdevm, *cdev;
+	int id, partnum;
+	bool found = false;
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
+		    !strcmp(cdev->partname, fsdev->cdev->partname)) {
+			found = true;
+			break;
+		}
+		partnum++;
+	}
+
+	if (!found)
+		return NULL;
+
+	return basprintf("root=/dev/mmcblk%dp%d", id, partnum);
+}
+
 /*
  * Mount a device to a directory.
  * We do this by registering a new device on which the filesystem
@@ -2919,11 +2952,18 @@ int mount(const char *device, const char *fsname, const char *pathname,
 
 	fsdev->vfsmount.mnt_root = fsdev->sb.s_root;
 
-	if (!fsdev->linux_rootarg && fsdev->cdev && fsdev->cdev->partuuid[0] != 0) {
-		char *str = basprintf("root=PARTUUID=%s",
-					fsdev->cdev->partuuid);
+	if (!fsdev->linux_rootarg && fsdev->cdev) {
+		char *str = NULL;
+
+		if (IS_ENABLED(CONFIG_MMCBLKDEV_ROOTARG) &&
+		    cdev_is_mci_dev(fsdev->cdev->master))
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

