Delivery-date: Mon, 10 May 2021 12:30:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lg3BO-0002sq-BJ
	for lore@lore.pengutronix.de; Mon, 10 May 2021 12:30:38 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lg3BN-0005gF-EC
	for lore@pengutronix.de; Mon, 10 May 2021 12:30:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qCUjATvlTFdXUkKBVFjDF+iCaTCXXAc5iOzNWMtSi7U=; b=b6v6m+ziCOvL+KEZjvWK2GZaI
	kMmiwYmJILCl6uTER3JjU+3kt7Q3HHBaOciMaJY+AxfNLWyJlBdk8jMx4oR2cGquzrslgNNJ+rhCY
	e+8AwZ3UAgarIIQGym9JNqv9aiH6OKCtw9cU4YF2ss5POkqbLMM4Y3ncFNXOUjBgC2MLUF0bFMkIr
	qk1094BjmvY61jzHcR9fxQDRpsuMyrVgPi3JkZPHtXOZPuYENIwsZkRXUiIFHXQ3j5VROQuGA09A8
	fMNjrz6mb0ZIAA5Kd4kTq/vF7XKdmRWhKSjH9vTmvReqSxjeKYN3fxGxbB2khi/FWMEpmvgSPkPus
	nvX07WUng==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lg3AB-00DwCn-9d; Mon, 10 May 2021 10:29:23 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg36S-00DvZ5-Ro
 for barebox@desiato.infradead.org; Mon, 10 May 2021 10:25:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Type:Content-ID:Content-Description;
 bh=fQ1aONZpRKVzLDzKdNkk3cr9L5VFq5Dr78Cdk/Z6+OU=; b=TBuzTyQZ5A+iNkJoYM1LoqUu4L
 zkvOoAZ12bzjoWxLa3rF2+ZzUYRatw/Na7oWTMbyhPidZ9U5p403qnoYI1/RdaHjwvi9/rc3M+x47
 XUiveFNFgu+id3eFBILCz8DY9eWOKEBPB+TT1GepXsOGh9vryAO4ICm5hMu+WaH6qBybPldkzBsnK
 apZtwkaoR8oYr7M45gkQVJP+Au8aXYshMHHcpOj9c7u5yp/15/xfa5WUTCmxlwiJen+stp/qGOwd9
 FZuNxlrEd6VxHWVkzVFR7e+tOsp3TQhQKQp7dQJ+AXIb9jihmhPM52OxKQ7LKT2laNYPjBKtujrKl
 YKwOCP6g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg36P-008Wgd-PD
 for barebox@lists.infradead.org; Mon, 10 May 2021 10:25:31 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lg36L-0004nU-Hv
 for barebox@lists.infradead.org; Mon, 10 May 2021 12:25:25 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lg36L-0003f5-5g
 for barebox@lists.infradead.org; Mon, 10 May 2021 12:25:25 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 10 May 2021 12:25:23 +0200
Message-Id: <20210510102523.7147-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210510102523.7147-1-m.felsch@pengutronix.de>
References: <20210510102523.7147-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_032529_844484_2CD0112C 
X-CRM114-Status: GOOD (  23.80  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 3/3] fs: add linux_rootarg 'root=mmcblkXpN' support
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
v3:
- fix Kconfig spelling
- check if cdev has an master (cdev->master) before accessing it.

v2:
- improved Kconfig deps
- improved Kconfig help message
- minimal get_linux_mmcblkdev() simplifications

 common/Kconfig | 21 +++++++++++++++++++++
 fs/fs.c        | 43 +++++++++++++++++++++++++++++++++++++++----
 2 files changed, 60 insertions(+), 4 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 6b3c1701be..db7cc6713a 100644
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
+	  of 'root=PARTUUID=XYZ'. Don't enable this option if your used linux
+	  kernel doesn't contain commit [1]. The first linux kernel release
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
index 881dc2fca0..6d952a18b1 100644
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
@@ -2919,11 +2946,19 @@ int mount(const char *device, const char *fsname, const char *pathname,
 
 	fsdev->vfsmount.mnt_root = fsdev->sb.s_root;
 
-	if (!fsdev->linux_rootarg && fsdev->cdev && fsdev->cdev->partuuid[0] != 0) {
-		char *str = basprintf("root=PARTUUID=%s",
-					fsdev->cdev->partuuid);
+	if (!fsdev->linux_rootarg && fsdev->cdev) {
+		char *str = NULL;
+
+		if (IS_ENABLED(CONFIG_MMCBLKDEV_ROOTARG) &&
+		    fsdev->cdev->master &&
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

