Delivery-date: Wed, 14 Apr 2021 15:02:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWf9s-0002Qb-2A
	for lore@lore.pengutronix.de; Wed, 14 Apr 2021 15:02:16 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWf9r-0003HF-AX
	for lore@pengutronix.de; Wed, 14 Apr 2021 15:02:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wX1rvrc/BOvI5knrR563A9OlpcurW5A3S0upbhNzJR8=; b=dTlLUFQlvFHTS4C8i/R2ZMc2xb
	RADAV9h64ZdutdlGb+rpdgammF7hpBh5RY5ctkyg9B/mT2HYN8BSGjINT2V2iDbNDuOsE6VST7G5F
	6v9/wqinT4ts9A2wKll2JBKmNjYiTVyYlN05wQnXEeVUFEYd3hi/gxz4hTAJFyL1z5blIjbXNu/LP
	Jmf0HOBTrIpVpN1ZedfKiMupZKK4DZd8bBuMjaXbJXomawDwWAJuHJJSPvqaKZHPyMNZiY60oJfa+
	ZhUAUZaIGbPkGeXLqNxpDNehU8D33fftcd8Mdeo6VnfpmO6AFEt3+KGK8VWDv97F3gjT8TZVUzO9L
	AsIm1r5A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWf8n-00CfN3-UI; Wed, 14 Apr 2021 13:01:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWf8h-00CfMW-6c
 for barebox@desiato.infradead.org; Wed, 14 Apr 2021 13:01:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=ZEolKbHBoQu8TtiCAmq+qqP9iRrgHgQOjW82a3l3tAU=; b=Idw2I5HGRgoL5SL8CdFRevJ/Fg
 bLf2srwFXTxF6DORQ1KjIlWsZIJDg7AjP6WwKgy1ZEmVLjvZMoyWDyIgUWclEVEy8RSc5U5T/Ybx2
 Wxp4FT7xNKN3TiGt5rDVV1MO46qb/UdzTO8KFP42A6c+D4WiQXFeCf4TKMRiRYxa7XQwUNtwA/RLe
 YQWq9JzduAaJcZcuJnT/bh8KMEYRa969aceKDnEFi8fF+1kDhh94QEXf/r10imJVZwyXuBMXcgUs+
 yFpnIELQueWlZkbjio5jmgOHLUcjiH7uNFCYnwGLQdbtbFHSHWyBv1l1hSOhkzC0cYCImjWoymuPa
 ynpCIlyw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWf8e-007mEx-Od
 for barebox@lists.infradead.org; Wed, 14 Apr 2021 13:01:02 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <bst@pengutronix.de>)
 id 1lWf8b-000321-EB; Wed, 14 Apr 2021 15:00:57 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de,
	Bastian Krause <bst@pengutronix.de>
Date: Wed, 14 Apr 2021 15:00:43 +0200
Message-Id: <20210414130044.6910-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_060100_820443_A03C1BEE 
X-CRM114-Status: GOOD (  11.97  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] of: fix up /chosen node even when there are no bootargs
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
No changes since (implicit) v1.
---
 common/oftree.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/common/oftree.c b/common/oftree.c
index 075b9d6b8b..a8e6587a61 100644
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

