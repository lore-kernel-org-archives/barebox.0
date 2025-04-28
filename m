Delivery-date: Mon, 28 Apr 2025 16:16:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9PHZ-000C6U-0I
	for lore@lore.pengutronix.de;
	Mon, 28 Apr 2025 16:16:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9PHY-0000Gw-DQ
	for lore@pengutronix.de; Mon, 28 Apr 2025 16:16:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a61ojq20LCkknOQyte2ZaPsa7T/xY3uFRsa11Md9Atw=; b=QJotuntkK6eJRnF8Fpl376vsPG
	5uc3BmWbBU9qFIIKxINxux9co4VO5Mv80O3F0fkavL25TbWj4SpaiHxsRicF71/Xu46Sf/fh1diMq
	Iv7TnI5piJ0Dph5wYoM3+ci5m44qSJ12A5QTfK8DDsc5yYSP6aeXrR1zXHC0Pscn6IcEbarLG9YLN
	+FW8/lt475Kr0iRtt4Z+xT8sjjZN3cSqfH4zLgxDQcO7/b5R7/PqXIowaJ+6BLgdDg7EjlPXrwEHF
	hJXaZi/2zfBC2BcPacE3YTIbfDbhFh+CXCuaY9u3YUpfktP1+LPbm+5V9NU+NBOa9GiyxQeyPFN2D
	/7xEre5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9PHI-00000006bEw-1Mn7;
	Mon, 28 Apr 2025 14:16:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9Nym-00000006HDC-38Iv
	for barebox@lists.infradead.org;
	Mon, 28 Apr 2025 12:53:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-0003Uj-DQ; Mon, 28 Apr 2025 14:52:51 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-00068g-0h;
	Mon, 28 Apr 2025 14:52:51 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-0087Aw-1v;
	Mon, 28 Apr 2025 14:52:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Apr 2025 14:52:16 +0200
Message-Id: <20250428125217.1931365-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250428125217.1931365-1-a.fatoum@pengutronix.de>
References: <20250428125217.1931365-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250428_055300_782711_07EEE107 
X-CRM114-Status: GOOD (  11.08  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] fastboot: only populate variables explicitly asked for
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To allow flashing an image with a partition table followed by an image
for a specific partition, the fastboot implementation was changed to
evaluate partitions on demand.

As there are partition-specific variables and the magic "all" variable,
which lists all variables, all partitions are evaluated in getvar
unconditionally, when only a variable for a specific partition is needed.

When one partition doesn't exist and is not marked as optional, this
leads to an error, even if something innocuous as the general
max-download-size is requested.

Change this, so only partitions that were explicitly asked for have their
variables populated on demand, unless "all" variables were requested.

Fixes: 6a191155be4e ("fastboot: evaluate fastboot partitions when used")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/fastboot.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/common/fastboot.c b/common/fastboot.c
index 231f49c1a6c9..529d9690db79 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -310,10 +310,15 @@ static void cb_getvar(struct fastboot *fb, const char *cmd)
 {
 	LIST_HEAD(partition_list);
 	struct file_list_entry *fentry;
+	const char *partition;
 	bool all;
 
 	pr_debug("getvar: \"%s\"\n", cmd);
 
+	partition = strchr(cmd, ':');
+	if (partition)
+		partition++;
+
 	all = !strcmp(cmd, "all");
 	if (all)
 		cmd = NULL;
@@ -321,9 +326,15 @@ static void cb_getvar(struct fastboot *fb, const char *cmd)
 	if (fastboot_tx_print_var(fb, &fb->variables, cmd))
 		goto out;
 
+	if (!all && !partition)
+		goto skip_partitions;
+
 	file_list_for_each_entry(fb->files, fentry) {
 		int ret;
 
+		if (!all && strcmp(partition, fentry->name))
+			continue;
+
 		ret = fastboot_add_partition_variables(fb, &partition_list, fentry);
 		if (ret) {
 			char *msg = xasprintf("%s: Failed to add '%s' partition variables: %pe",
@@ -338,6 +349,7 @@ static void cb_getvar(struct fastboot *fb, const char *cmd)
 	if (fastboot_tx_print_var(fb, &partition_list, cmd))
 		goto out;
 
+skip_partitions:
 	fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
 out:
 	fastboot_free_variables(&partition_list);
-- 
2.39.5



