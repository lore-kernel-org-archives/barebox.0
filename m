Delivery-date: Tue, 28 Oct 2025 16:47:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDluZ-00CjQB-08
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 16:47:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDluY-0006BP-Fr
	for lore@pengutronix.de; Tue, 28 Oct 2025 16:47:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JkuCmjl55MzXV/WxLA+AutvBJJLJkpP4q69H8Uda7gg=; b=c8VgvBRbbIau8efYRhB/R/34L2
	6O+XUjRVuJgMBKzLl07spKYoX/FXjRWQ4OFVPgbiR6wV6bvjhpMt1dgrtHRjIDX1LjxGjJM0ors+k
	aw5jwjjZuzrMDbPUi+tMsUo1hwGxAXIv/jlsvEgpLSFuYX9DFuF5QesM3zz3lp80IFTZcS23hsYHG
	z1W1GZke/LBHfiV8H0UzwmtzHf+6b1ZyHley/fGOrb0zXG5gECvFf+E26DPXrP2AcmCYrtFpZCNpb
	8kGwQkzXNJoI+196d+fVChyuOA2C/O4ukxvZQlkC8yTAE+CLZbi+lmHSBBezuxgkzgHpB5GE6HUq5
	zBnZv94w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDlu8-0000000GEDY-480X;
	Tue, 28 Oct 2025 15:46:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDlu6-0000000GEBf-0HGD
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 15:46:35 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vDlu4-0005eC-L9; Tue, 28 Oct 2025 16:46:32 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Tue, 28 Oct 2025 16:43:28 +0100
Message-ID: <20251028154453.2990491-5-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251028154453.2990491-1-f.pflug@pengutronix.de>
References: <20251028154453.2990491-1-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_084634_109190_2EF5BA46 
X-CRM114-Status: GOOD (  11.32  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] startup: mount ps only on policy FS_EXTERNAL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Without the SCONFIG_FS_EXTERNAL, the bus of the driver for pstore will
not load, resulting in a missing driver for pstore and an error during
bootup.
Only mount the /pstore if FS_EXTERNAL is allowed by the security policy.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
v2:
remove the umount
add unregister_handler
 common/startup.c | 26 ++++++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 4313435f05..7cf7088ad6 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -55,6 +55,22 @@ extern exitcall_t __barebox_exitcalls_start[], __barebox_exitcalls_end[];
 enum system_states barebox_system_state;
 
 #if defined CONFIG_FS_RAMFS && defined CONFIG_FS_DEVFS
+static struct sconfig_notifier_block sconfig_notifier;
+
+static void mount_pstore(struct sconfig_notifier_block *nb,
+			 enum security_config_option opt, bool allowed)
+{
+	if (allowed) {
+		mkdir("/pstore", 0);
+		mount("none", "pstore", "/pstore", NULL);
+		sconfig_unregister_handler(&sconfig_notifier);
+	}
+	/*
+	* no need to umount, since the permission is only needed for mounting,
+	* not for accessing the content.
+	*/
+}
+
 static int mount_root(void)
 {
 	mount("none", "ramfs", "/", NULL);
@@ -69,8 +85,14 @@ static int mount_root(void)
 	}
 
 	if (IS_ENABLED(CONFIG_FS_PSTORE)) {
-		mkdir("/pstore", 0);
-		mount("none", "pstore", "/pstore", NULL);
+		if (IS_ALLOWED(SCONFIG_FS_EXTERNAL)) {
+			mkdir("/pstore", 0);
+			mount("none", "pstore", "/pstore", NULL);
+		} else {
+			sconfig_register_handler_filtered(&sconfig_notifier,
+							  mount_pstore,
+							  SCONFIG_FS_EXTERNAL);
+		}
 	}
 
 	if (IS_ENABLED(CONFIG_9P_FS))
-- 
2.47.3



