Delivery-date: Thu, 08 Jun 2023 15:42:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7FuF-00FoNh-CP
	for lore@lore.pengutronix.de; Thu, 08 Jun 2023 15:42:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7FuC-0002IS-S0
	for lore@pengutronix.de; Thu, 08 Jun 2023 15:42:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=39Y1nhZaQTMqovS2u/Oo2l6FxMmdOqRaborFr6yyeow=; b=z08tfVSeg4GFTPii27lg07Cnf4
	m0Iy9Gr9zdfpglyTlvgwKkGdvEsmXZypQ7by2eM4H2NC9W8n1uX+HlI/aw/JdNEzptmbJKOFhxoQI
	ObJJzZg+5dnREdyboHvL7epC8KNJurgymSpQAnqcUokbezV0NfAL4FfqkfgnVLlqbG2uMDppHiZJB
	cDkod2RuAQajeH43u6tpfnvvTnCiJI9CM1ygR7MzxLfZowNUMnnTHzWVMMmDSSZB/bw/D9DMhBIEl
	SKdEmGzx/u3g8A8s5PUsIrtV1iypLvgGT9ZlNuXXktJY24sVpALVhYmY4X4pqC6hK51H2xaTwMQcy
	9M4jWltg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Fst-009Uoh-1W;
	Thu, 08 Jun 2023 13:41:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Fsq-009Uo1-1T
	for barebox@lists.infradead.org;
	Thu, 08 Jun 2023 13:41:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q7Fsp-00024b-7R; Thu, 08 Jun 2023 15:40:59 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q7Fso-005z9H-Il; Thu, 08 Jun 2023 15:40:58 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q7Fsn-0093u2-Q4; Thu, 08 Jun 2023 15:40:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  8 Jun 2023 15:40:40 +0200
Message-Id: <20230608134040.2123869-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230608134040.2123869-1-a.fatoum@pengutronix.de>
References: <20230608134040.2123869-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_064100_497753_2C4FDE4F 
X-CRM114-Status: GOOD (  13.53  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] of: change superfluous of_fix_tree int return type to void
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_fix_tree always returns 0, so propagating its return code and
checking it serves no purpose. Let's just change it to void *.

I considered having it return the first argument, but that could mislead
users to think that the argument is not modified.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/of_compatible.c |  7 ++-----
 commands/of_dump.c       |  7 ++-----
 common/oftree.c          | 10 ++--------
 include/of.h             |  2 +-
 4 files changed, 7 insertions(+), 19 deletions(-)

diff --git a/commands/of_compatible.c b/commands/of_compatible.c
index b460fecd3a86..d8704d50bb72 100644
--- a/commands/of_compatible.c
+++ b/commands/of_compatible.c
@@ -57,11 +57,8 @@ static int do_of_compatible(int argc, char *argv[])
 			root = of_free = of_dup(root);
 	}
 
-	if (fix) {
-		ret = of_fix_tree(root);
-		if (ret)
-			goto out;
-	}
+	if (fix)
+		of_fix_tree(root);
 
 	node = of_find_node_by_path_or_alias(root, nodename);
 	if (!node) {
diff --git a/commands/of_dump.c b/commands/of_dump.c
index 1d6c019bf08c..c77dc27c99b9 100644
--- a/commands/of_dump.c
+++ b/commands/of_dump.c
@@ -84,11 +84,8 @@ static int do_of_dump(int argc, char *argv[])
 			root = of_free = of_dup(root);
 	}
 
-	if (fix) {
-		ret = of_fix_tree(root);
-		if (ret)
-			goto out;
-	}
+	if (fix)
+		of_fix_tree(root);
 
 	node = of_find_node_by_path_or_alias(root, nodename);
 	if (!node) {
diff --git a/common/oftree.c b/common/oftree.c
index 1f751cc0ac89..620de6ed5649 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -392,7 +392,7 @@ int of_unregister_fixup(int (*fixup)(struct device_node *, void *),
  * Apply registered fixups for the given fdt. The fdt must have
  * enough free space to apply the fixups.
  */
-int of_fix_tree(struct device_node *node)
+void of_fix_tree(struct device_node *node)
 {
 	struct of_fixup *of_fixup;
 	int ret;
@@ -408,8 +408,6 @@ int of_fix_tree(struct device_node *node)
 			pr_warn("Failed to fixup node in %pS: %s\n",
 					of_fixup->fixup, strerror(-ret));
 	}
-
-	return 0;
 }
 
 /*
@@ -420,7 +418,6 @@ int of_fix_tree(struct device_node *node)
  */
 struct fdt_header *of_get_fixed_tree(struct device_node *node)
 {
-	int ret;
 	struct fdt_header *fdt = NULL;
 	struct device_node *freenp = NULL;
 
@@ -434,13 +431,10 @@ struct fdt_header *of_get_fixed_tree(struct device_node *node)
 			return NULL;
 	}
 
-	ret = of_fix_tree(node);
-	if (ret)
-		goto out;
+	of_fix_tree(node);
 
 	fdt = of_flatten_dtb(node);
 
-out:
 	of_delete_node(freenp);
 
 	return fdt;
diff --git a/include/of.h b/include/of.h
index 2b75ce63e185..0037bad6c4d7 100644
--- a/include/of.h
+++ b/include/of.h
@@ -65,7 +65,7 @@ struct device;
 struct driver;
 struct resource;
 
-int of_fix_tree(struct device_node *);
+void of_fix_tree(struct device_node *);
 
 int of_match(struct device *dev, struct driver *drv);
 
-- 
2.39.2



