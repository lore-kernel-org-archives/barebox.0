Delivery-date: Mon, 13 Sep 2021 10:32:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPhNl-0006MZ-1O
	for lore@lore.pengutronix.de; Mon, 13 Sep 2021 10:32:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPhNj-00011L-Tg
	for lore@pengutronix.de; Mon, 13 Sep 2021 10:32:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jvGbpu3TAziPNf3O9f3n1Pkvew/BCm/NYFrznKEvBTM=; b=MPswmpj/CfoKiA
	qhQg69Dm4SnuImJ4QYo6dWTUfq1l/nfeAyWWOx/2LOHQyIFPl8xK6KvzikGAHeqEyv+/uhNmRUZHc
	kZhcuB22WkRDbZEeQ97ihgtuc9mXIIZsIIbDxV1K9a73MV54VsYaLtnmDNKBPUNhzWdF2+wXb1q08
	h4lpQFepcAAIH3BgxG1cEiDflQezVb/rjpJgg5N272jtmd4HDVLurFVZ6OcXKsuxPvnWaSpPwchPD
	Npqptt5omABGiVarS6aocroGXbSMFV/v9i4Ooi27CIIA2E+zRWzgEiq6pCGCa9oLO8Ddp1rxyrChl
	8B/GaI2SmMfJE2/1/MIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPhM0-000lOb-4O; Mon, 13 Sep 2021 08:30:16 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPhLq-000lLD-CL
 for barebox@lists.infradead.org; Mon, 13 Sep 2021 08:30:08 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 83B15E0011;
 Mon, 13 Sep 2021 08:30:01 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 13 Sep 2021 10:29:57 +0200
Message-Id: <20210913082957.364440-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_013006_601125_17EE5C73 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] blspec: fix use-after-free of firmware search path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

firmware_set_searchpath() is used to temporarily extend firmware search
path when parsing boot spec files. It does so by first freeing the
original firmware pointer and then storing a pointer to a copy of the
new search path.

firmware_get_searchpath() returns this pointer without copying meaning
that following sequence causes a use-after-free:

	old_fws = firmware_get_searchpath();
	firmware_set_searchpath(fws); /* calls free(old_fws) */
	firmware_set_searchpath(old_fws);

Fix this by keeping around a copy of the search path.

Fixes: dfebbb0a5944 ("blspec: Set firmware searchpath")
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/blspec.c    | 4 ++--
 common/firmware.c  | 4 ++--
 include/firmware.h | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 6cb1fea9e876..158fd1e9a28c 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -75,8 +75,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	const char *abspath, *devicetree, *options, *initrd, *linuximage;
 	const char *overlays;
 	const char *appendroot;
-	const char *old_fws;
-	char *fws;
+	char *old_fws, *fws;
 	struct bootm_data data = {
 		.dryrun = dryrun,
 	};
@@ -158,6 +157,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 
 	of_overlay_set_basedir("/");
 	firmware_set_searchpath(old_fws);
+	free(old_fws);
 
 err_out:
 	free((char *)data.oftree_file);
diff --git a/common/firmware.c b/common/firmware.c
index b33acff77ff8..b87d7da38fa7 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -224,9 +224,9 @@ out:
 
 static char *firmware_path;
 
-const char *firmware_get_searchpath(void)
+char *firmware_get_searchpath(void)
 {
-	return firmware_path;
+	return strdup(firmware_path);
 }
 
 void firmware_set_searchpath(const char *path)
diff --git a/include/firmware.h b/include/firmware.h
index 0ffea5284086..2583342230ae 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -31,7 +31,7 @@ struct firmware_mgr *firmwaremgr_find(const char *);
 #ifdef CONFIG_FIRMWARE
 struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np);
 int firmwaremgr_load_file(struct firmware_mgr *, const char *path);
-const char *firmware_get_searchpath(void);
+char *firmware_get_searchpath(void);
 void firmware_set_searchpath(const char *path);
 #else
 static inline struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np)
@@ -44,7 +44,7 @@ static inline int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *pa
 	return -ENOSYS;
 }
 
-static inline const char *firmware_get_searchpath(void)
+static inline char *firmware_get_searchpath(void)
 {
 	return NULL;
 }
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

