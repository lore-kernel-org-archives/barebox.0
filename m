Delivery-date: Fri, 08 May 2026 13:00:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wLIwv-002KXS-0Y
	for lore@lore.pengutronix.de;
	Fri, 08 May 2026 13:00:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wLIwt-00016O-J7
	for lore@pengutronix.de; Fri, 08 May 2026 13:00:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uVRH8RIHgZZbfIxihNNbPs6ABjxptZfYLwV0n8jwU1w=; b=TLP61EXXmU/jmfYob5nkRyTYnC
	rnuHh17WVJQjeJTV6waAZbpv2C684i451jKe7eNVglWe+JjsDXC83UYzmbObGdIV7251xg5pWemyG
	7NK5oHmYX67mhy+Elzztl1oqkqUES33IrE6s0tV0pa8brtP4rGrQO22U2XhlVvA6FyUtDoXx3vznv
	kw47R02vFu3nQa82+TTLMvDBbcLPjQ8Mnr5FCMRkEvY6oo7LodyO4YK4x4ljwyiVMc1kbX1eZ4Vmp
	ocAl3hqSe6KkOZuSqR1fzP5xIp95BIr/U9JbR/eL5qkNq1vGauusVeiKFTxjzquVbHiH8DT+CZoU+
	e90g12EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLIvA-00000006Hrn-1BNy;
	Fri, 08 May 2026 10:59:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLIv7-00000006Hr4-1ImH
	for barebox@lists.infradead.org;
	Fri, 08 May 2026 10:59:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wLIv3-0008Fi-4Y; Fri, 08 May 2026 12:58:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wLIv2-0014YS-0m;
	Fri, 08 May 2026 12:58:56 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wLIv2-0000000FpYQ-2EEK;
	Fri, 08 May 2026 12:58:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  8 May 2026 12:58:55 +0200
Message-ID: <20260508105855.3772602-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_035901_350912_ADC23512 
X-CRM114-Status: GOOD (  20.32  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] environment: add explicit option to allow searching for environment devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add an explicit Kconfig option to allow searching the environment storage
path based on the barebox environment partition GUID.

So far this depended on CONFIG_INSECURE being set, but that's not the whole
picture. Loading an unsigned environment is inherently insecure, allowing
to find the partition by partition UUID just adds one point to the top:
With it we potentially allow loading the environment from external storage
devices like SD card slots that could be plugged without opening a device.

So instead of implying that partition UUID is insecure, or no partition UUID
is secure, just add a specific option to let the user decide on this option.

The new Kconfig option defaults to the setting of CONFIG_INSECURE. This makes
sure that users which previously had CONFIG_INSECURE disabled the new option
doesn't leak in unnoticed on a barebox update. Also it preserves the behaviour
of in-tree defconfigs which all have CONFIG_INSECURE enabled.

This also removes the globalvar global.env.autoprobe. It turned out that this
option doesn't work: The content of that variable is evaluated before the
default environment is loaded, so we never actually had a chance to set it
from the environment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../migration-guides/migration-master.rst          |  7 +++++++
 common/Kconfig                                     | 14 ++++++++++++++
 common/environment.c                               | 14 +-------------
 3 files changed, 22 insertions(+), 13 deletions(-)

Changes since v1:
- Change reasoning for the patch
- remove non functional global.env.autoprobe
- add note to migration guide

diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
index 026dbe8588..b5435f4e0c 100644
--- a/Documentation/migration-guides/migration-master.rst
+++ b/Documentation/migration-guides/migration-master.rst
@@ -1,2 +1,9 @@
 :orphan:
 
+Removal of global.env.autoprobe
+===============================
+
+The global.env.autoprobe variable introduced with v2025.02.0 is removed and
+now replaced with CONFIG_ENV_HANDLING_AUTOPROBE. It has never worked. If you
+want to load a barebox environment based on its partition UUID enable
+CONFIG_ENV_HANDLING_AUTOPROBE.
\ No newline at end of file
diff --git a/common/Kconfig b/common/Kconfig
index cd002865f7..6c190c6c5e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -979,6 +979,20 @@ config ENV_HANDLING
 	  A safe use of the mutable environment may be possible if board code only
 	  mounts it after verifying a JSON Web Token that enables a debug mode.
 
+config ENV_HANDLING_AUTOPROBE
+	depends on ENV_HANDLING
+	bool "Autoprobe for environment devices"
+	default CONFIG_INSECURE
+	help
+	  There are two ways for specifying where the barebox environment is. The first one
+	  specifies the path explicitly in the device tree or board code. The other one is
+	  to automatically search it on block devices which is enabled with this option.
+	  Here a partition with the barebox environment GUID is searched. If this option
+	  is enabled and no environment is chosen by device tree or board code then a block
+	  device containing a partition with the barebox environment GUID is used for the
+	  environment. A block device barebox has booted from is preferred over other block
+	  devices.
+
 config DEFAULT_ENVIRONMENT
 	select CRC32
 	bool
diff --git a/common/environment.c b/common/environment.c
index ec14d0629a..9d3607a70e 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -53,7 +53,6 @@ struct action_data {
 
 #define TMPDIR "/.defaultenv"
 
-static int global_env_autoprobe = IS_ENABLED(CONFIG_INSECURE);
 static char *default_environment_path;
 
 void default_environment_path_set(const char *path)
@@ -83,7 +82,7 @@ static struct cdev *default_environment_path_search(void)
 	struct cdev *env_cdev = NULL;
 	struct block_device *blk;
 
-	if (!IS_ENABLED(CONFIG_BLOCK) || !global_env_autoprobe)
+	if (!IS_ENABLED(CONFIG_BLOCK) || !IS_ENABLED(CONFIG_ENV_HANDLING_AUTOPROBE))
 		return NULL;
 
 	boot_node = bootsource_of_node_get(NULL);
@@ -544,14 +543,3 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 
 	return ret;
 }
-
-#ifdef __BAREBOX__
-static int register_env_vars(void)
-{
-	globalvar_add_simple_bool("env.autoprobe", &global_env_autoprobe);
-	return 0;
-}
-postcore_initcall(register_env_vars);
-BAREBOX_MAGICVAR(global.env.autoprobe,
-                 "Automatically probe known block devices for environment");
-#endif
-- 
2.47.3



