Delivery-date: Fri, 09 Apr 2021 10:17:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lUmKD-0007cs-N8
	for lore@lore.pengutronix.de; Fri, 09 Apr 2021 10:17:09 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lUmKC-0004Kq-Q0
	for lore@pengutronix.de; Fri, 09 Apr 2021 10:17:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7B99ifkIG9aXoH2LR5LSqY71I+qqHFP6cSbAwr9wnCs=; b=kfjQMEg8MdAwLpuO714YQux2K+
	bopK7UpT6Oighvwg338haTwyUqk+MABqYru2K6vMy6R+W5QDMORU7/AtLr0UMOSaB27tJMyMGqr9t
	/nvzTc/acS4lhY4oxg6qsl6nEXURcvO8hCyTG1rHKeJfWA8On0UlBxReN5ExGzR2w9lmq3Km5WGBX
	QQgqtDT0cKAwuRSuLrSMwRYRC8Ys3+M1Mocy3n8Oq0fW134+poLIu3Gut8d9dZKlBXTNBVamLAuC9
	7P3Vmn65iHQWFwiQ1f95UDb/8Deyf9TOxydLK2hzSPp43bv7FNvyc41mV5CXzG4MLip33f3rgK50+
	iWecTdRg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUmIe-0000iJ-9a; Fri, 09 Apr 2021 08:15:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUmIH-0000gL-Ft
 for barebox@lists.infradead.org; Fri, 09 Apr 2021 08:15:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <bst@pengutronix.de>)
 id 1lUmIF-0003rn-Fr; Fri, 09 Apr 2021 10:15:07 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de,
	Bastian Krause <bst@pengutronix.de>
Date: Fri,  9 Apr 2021 10:15:02 +0200
Message-Id: <20210409081503.6926-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210409_091509_899173_131AB7F3 
X-CRM114-Status: GOOD (  11.66  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] of: fix up /chosen node even when there are no bootargs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Currently the /chosen fixups of "reset-source",
"reset-source-instance", "reset-source-device" and "bootsource" do not
happen if no bootargs are available.

Fix that by moving the actual bootargs fixup to a dedicated function
of_write_bootargs() and only return there early on empty bootargs, but
still perform the /chosen fixups mentioned above.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
[bst: dropped new line deletions and modified string comparison, moved of_write_bootargs() call to original position, add commit message]
Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 common/oftree.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/common/oftree.c b/common/oftree.c
index 60d4327155..aaeb199a9e 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -161,16 +161,12 @@ static void watchdog_build_bootargs(struct watchdog *watchdog, struct device_nod
 	free(buf);
 }
 
-static int of_fixup_bootargs(struct device_node *root, void *unused)
+static int of_write_bootargs(struct device_node *node)
 {
-	struct device_node *node;
 	const char *str;
-	int err;
-	int instance = reset_source_get_instance();
-	struct device_d *dev;
 
 	if (IS_ENABLED(CONFIG_SYSTEMD_OF_WATCHDOG))
-		watchdog_build_bootargs(boot_get_enabled_watchdog(), root);
+		watchdog_build_bootargs(boot_get_enabled_watchdog(), of_get_parent(node));
 
 	str = linux_bootargs_get();
 	if (!str)
@@ -180,13 +176,23 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
 	if (strlen(str) == 0)
 		return 0;
 
+	return of_property_write_string(node, "bootargs", str);
+}
+
+static int of_fixup_bootargs(struct device_node *root, void *unused)
+{
+	struct device_node *node;
+	int err;
+	int instance = reset_source_get_instance();
+	struct device_d *dev;
+
 	node = of_create_node(root, "/chosen");
 	if (!node)
 		return -ENOMEM;
 
 	of_property_write_string(node, "barebox-version", release_string);
 
-	err = of_property_write_string(node, "bootargs", str);
+	err = of_write_bootargs(node);
 	if (err)
 		return err;
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

