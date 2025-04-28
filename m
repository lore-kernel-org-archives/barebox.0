Delivery-date: Mon, 28 Apr 2025 15:08:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9ODs-000AjR-0K
	for lore@lore.pengutronix.de;
	Mon, 28 Apr 2025 15:08:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9ODr-0002OZ-4v
	for lore@pengutronix.de; Mon, 28 Apr 2025 15:08:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i5S5Z0ADo+2IRobfV9JhrdJCMzF2n9HxOwJ4G/V4bt8=; b=WrSXdPjD+64W5LlHmVZdI7+qH1
	u8Tp8+ff6TuzzxQ9MIjIB2eRSKF03MXML/dISRTHszzaTgpcYvfCnE0QKKxHXiTQGWZM/K5bSo6Jb
	32WDGhoGgg0NIk5Q2Cl0Nduz1GTJuubtnHNwku6McQKi4CeDIJPXykKiC3p5YRa0ku1ToaFBQwHZg
	gIppxm15t7vwIMEvOQb+u7fDhgaODs4Ld07Y3+GfZkWIkRIMt3Tx/aXVnNQrT6hiP+S5077i6iDQg
	UF9sYKUoAcPO5T1UJIU1WQ1hEDTNvCkzcwj/ST6jMNlC0RJGyiqIOsg0fRjiIJBpyJd+Rh930x2Rj
	2x8rT1hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9ODM-00000006NsI-0SeM;
	Mon, 28 Apr 2025 13:08:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9Nyf-00000006H8m-0BND
	for barebox@lists.infradead.org;
	Mon, 28 Apr 2025 12:52:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-0003Ug-Ag; Mon, 28 Apr 2025 14:52:51 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-00068a-0O;
	Mon, 28 Apr 2025 14:52:51 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-0087Aw-1d;
	Mon, 28 Apr 2025 14:52:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Apr 2025 14:52:14 +0200
Message-Id: <20250428125217.1931365-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250428125217.1931365-1-a.fatoum@pengutronix.de>
References: <20250428125217.1931365-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250428_055253_131938_D1C84BF7 
X-CRM114-Status: GOOD (  11.09  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/6] fastboot: introduce fastboot_tx_print_var() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have 4 loops that we could avoid duplicating by adding a helper that
iterates and does the comparison inside. This increases code size a bit,
but will come in handy next commit, when we refactor the code to avoid
unnecessary computation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/fastboot.c | 45 +++++++++++++++++++++++++--------------------
 1 file changed, 25 insertions(+), 20 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 5a43bfb7e596..3155ff2af92c 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -287,9 +287,27 @@ static void cb_reboot(struct fastboot *fb, const char *cmd)
 	restart_machine(0);
 }
 
-static void cb_getvar(struct fastboot *fb, const char *cmd)
+static bool fastboot_tx_print_var(struct fastboot *fb, struct list_head *vars,
+				  const char *varname)
 {
 	struct fb_variable *var;
+
+	list_for_each_entry(var, vars, list) {
+		if (!varname) {
+			fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "%s: %s",
+					  var->name, var->value);
+		} else if (!strcmp(varname, var->name)) {
+			fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "%s",
+					  var->value);
+			return true;
+		}
+	}
+
+	return false;
+}
+
+static void cb_getvar(struct fastboot *fb, const char *cmd)
+{
 	LIST_HEAD(partition_list);
 	struct file_list_entry *fentry;
 
@@ -310,31 +328,18 @@ static void cb_getvar(struct fastboot *fb, const char *cmd)
 	pr_debug("getvar: \"%s\"\n", cmd);
 
 	if (!strcmp(cmd, "all")) {
-		list_for_each_entry(var, &fb->variables, list)
-			fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "%s: %s",
-					  var->name, var->value);
-
-		list_for_each_entry(var, &partition_list, list)
-			fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "%s: %s",
-					  var->name, var->value);
+		fastboot_tx_print_var(fb, &fb->variables, NULL);
+		fastboot_tx_print_var(fb, &partition_list, NULL);
 
 		fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
 		goto out;
 	}
 
-	list_for_each_entry(var, &fb->variables, list) {
-		if (!strcmp(cmd, var->name)) {
-			fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, var->value);
-			goto out;
-		}
-	}
+	if (fastboot_tx_print_var(fb, &fb->variables, cmd))
+		goto out;
 
-	list_for_each_entry(var, &partition_list, list) {
-		if (!strcmp(cmd, var->name)) {
-			fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, var->value);
-			goto out;
-		}
-	}
+	if (fastboot_tx_print_var(fb, &partition_list, cmd))
+		goto out;
 
 	fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
 out:
-- 
2.39.5



