Delivery-date: Fri, 14 Feb 2025 11:49:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1titGY-002EiY-17
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 11:49:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1titGX-00055I-0v
	for lore@pengutronix.de; Fri, 14 Feb 2025 11:49:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/DaI8FF8uIN8kZto7e5OkxeqYDwgtlRt1SaUwLW8PvY=; b=IXe9PVYr6TKcNcw5pWLSVgT9Oq
	zSiWXR+/GzEV+g2wFbJnMoiDDQ0FRl4Dxpc6p9D0VoKdvEfD5i4lU6TH+D+jqTLpCCPXMJY3ie4vT
	wU0RBqELq3S/M/GwDb5ZhEecTkPh5G1HmUW7jfBjT4Q7vltmPxScx1Fw3/1LeWIWTsxtRimayRuGm
	RrQkuEtJJjZb/AuQOZ8czww3L95QyoZcGiZJK20MAUSG4E5LevTXQginYD3PItTGDXEl3RX6W/8VG
	uCbWzfPV47SPOhw0RBp/q4bNIIu20+GXFWKYW53DCQR3/ehgiqF1GCsR7VcfeOzjSe5x12x8ewTDU
	z/4EPKkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1titFz-0000000EYKk-3vn7;
	Fri, 14 Feb 2025 10:49:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1titF8-0000000EYEP-0nHS
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 10:48:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF7-0004Ur-0V; Fri, 14 Feb 2025 11:48:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-000u3f-2b;
	Fri, 14 Feb 2025 11:48:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-00CVIo-2K;
	Fri, 14 Feb 2025 11:48:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 11:48:15 +0100
Message-Id: <20250214104817.2975052-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250214104817.2975052-1-a.fatoum@pengutronix.de>
References: <20250214104817.2975052-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_024822_232639_223C54A0 
X-CRM114-Status: GOOD (  14.16  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/7] bootm: don't clobber global.bootm. variables after script boot fails
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While there is global.linux.bootargs.dyn to avoid boot script variables
contaminating later boot targets, there is no such thing for the
global.bootm. variables and as such it was up to the boot targets to
either ignore the variables or to override them.

The proper way would to expect the boot script boot callback to restore
the variables as they were before, so let's do that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boot.c   | 11 ++++++++---
 common/bootm.c  | 17 +++++++++++++++++
 include/bootm.h |  1 +
 3 files changed, 26 insertions(+), 3 deletions(-)

diff --git a/common/boot.c b/common/boot.c
index 42818c6e2154..2530a5bbeeac 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -74,20 +74,22 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 	struct bootentry_script *bs = container_of(entry, struct bootentry_script, entry);
 	int ret;
 
-	struct bootm_data data = {};
+	struct bootm_data backup = {}, data = {};
 
 	if (dryrun == 1) {
 		printf("Would run %s\n", bs->scriptpath);
 		return 0;
 	}
 
+	bootm_data_init_defaults(&backup);
+
 	globalvar_add_simple("linux.bootargs.dyn.ip", NULL);
 	globalvar_add_simple("linux.bootargs.dyn.root", NULL);
 
 	ret = run_command(bs->scriptpath);
 	if (ret) {
 		pr_err("Running script '%s' failed: %s\n", bs->scriptpath, strerror(-ret));
-		return ret;
+		goto out;
 	}
 
 	bootm_data_init_defaults(&data);
@@ -97,7 +99,10 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 	if (dryrun >= 2)
 		data.dryrun = dryrun - 1;
 
-	return bootm_boot(&data);
+	ret = bootm_boot(&data);
+out:
+	bootm_data_restore_defaults(&backup);
+	return ret;
 }
 
 static unsigned int boot_watchdog_timeout;
diff --git a/common/bootm.c b/common/bootm.c
index d1dbf6890f6f..d24b18b41cb2 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -68,6 +68,23 @@ void bootm_data_init_defaults(struct bootm_data *data)
 	data->dryrun = bootm_dryrun;
 }
 
+void bootm_data_restore_defaults(const struct bootm_data *data)
+{
+	globalvar_set("bootm.oftree", data->oftree_file);
+	globalvar_set("bootm.tee", data->tee_file);
+	globalvar_set("bootm.image", data->os_file);
+	pr_setenv("global.bootm.image.loadaddr", "0x%lx", data->os_address);
+	pr_setenv("global.bootm.initrd.loadaddr", "0x%lx", data->initrd_address);
+	globalvar_set("bootm.initrd", data->initrd_file);
+	globalvar_set("bootm.root_dev", data->root_dev);
+	bootm_set_verify_mode(data->verify);
+	bootm_appendroot = data->appendroot;
+	bootm_provide_machine_id = data->provide_machine_id;
+	bootm_provide_hostname = data->provide_hostname;
+	bootm_verbosity = data->verbose;
+	bootm_dryrun = data->dryrun;
+}
+
 static enum bootm_verify bootm_verify_mode = BOOTM_VERIFY_HASH;
 
 enum bootm_verify bootm_get_verify_mode(void)
diff --git a/include/bootm.h b/include/bootm.h
index 98ac5e5a9374..fdec137771f0 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -138,6 +138,7 @@ static inline int bootm_verbose(struct image_data *data)
 #endif
 
 void bootm_data_init_defaults(struct bootm_data *data);
+void bootm_data_restore_defaults(const struct bootm_data *data);
 
 int bootm_load_os(struct image_data *data, unsigned long load_address);
 
-- 
2.39.5



