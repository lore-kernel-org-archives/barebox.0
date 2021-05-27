Delivery-date: Thu, 27 May 2021 14:46:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmFOu-0005sM-BZ
	for lore@lore.pengutronix.de; Thu, 27 May 2021 14:46:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmFOt-0001nI-9i
	for lore@pengutronix.de; Thu, 27 May 2021 14:46:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TPWMNl4rHwqQWsPTiG48YlA4k3WoSDo7qgJio5+FUww=; b=XaHjWZYe9+I7XD
	AA9z9tNRwufQlwO79XhmNr8rAH0o56STsriCcHY1mM7HNS0JjaEbakpVwujL0hfQD0X2pK3lGdwH8
	mXrU9+n/rdeJnzcVvh856p37hlLQrIM+GXhIFWxZQKAJyab6Wn6PkqglIup52u9WkBjtLgIjKj36l
	w7RSVIUsfaPCW9IESv6JIoLzFDb6pbH96FMFVkrDlx+eewfFqBgRgAFX48vM1nfPvLVKIKsN6LhG9
	R8LDZC/P2Vesl1ELLPfC1cVJovFBzW9+J/hyGuoe7WTn+42iZD8S/8x44daF3Xd/5kXtEle3CQHA/
	wkvqAq40/oRtyUza8yVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmFNB-005qQp-4F; Thu, 27 May 2021 12:44:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmFMy-005qMK-Ru
 for barebox@lists.infradead.org; Thu, 27 May 2021 12:44:14 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lmFMu-0001O8-1g; Thu, 27 May 2021 14:44:08 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lmFMt-0005lc-PB; Thu, 27 May 2021 14:44:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 27 May 2021 14:44:06 +0200
Message-Id: <20210527124406.22121-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_054412_934133_12FCEC26 
X-CRM114-Status: GOOD (  14.13  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: of_dump: implement -p for printing properties only
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some boards rewrite root node properties like compatible and
serial-number. Checking them can be annoying, because the properties
have usually long scrolled by, by the time the device tree was
completely dumped. Add a -p option to print only properties.

-p -n (print only node names AND only properties) is interpreted
to cancel each other out, so the whole device tree is dumped normally.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/of_dump.c | 14 ++++++++++----
 drivers/of/base.c  |  8 ++++++++
 include/of.h       |  1 +
 3 files changed, 19 insertions(+), 4 deletions(-)

diff --git a/commands/of_dump.c b/commands/of_dump.c
index 6792af3afc31..2089c07ef79b 100644
--- a/commands/of_dump.c
+++ b/commands/of_dump.c
@@ -36,9 +36,9 @@ static int do_of_dump(int argc, char *argv[])
 	char *dtbfile = NULL;
 	size_t size;
 	const char *nodename;
-	int names_only = 0;
+	int names_only = 0, properties_only = 0;
 
-	while ((opt = getopt(argc, argv, "Ff:n")) > 0) {
+	while ((opt = getopt(argc, argv, "Ff:np")) > 0) {
 		switch (opt) {
 		case 'f':
 			dtbfile = optarg;
@@ -49,6 +49,9 @@ static int do_of_dump(int argc, char *argv[])
 		case 'n':
 			names_only = 1;
 			break;
+		case 'p':
+			properties_only = 1;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -111,8 +114,10 @@ static int do_of_dump(int argc, char *argv[])
 		goto out;
 	}
 
-	if (names_only)
+	if (names_only && !properties_only)
 		of_print_nodenames(node);
+	else if (properties_only && !names_only)
+		of_print_properties(node);
 	else
 		of_print_nodes(node, 0);
 
@@ -128,12 +133,13 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT  ("-f dtb",  "work on dtb instead of internal devicetree")
 BAREBOX_CMD_HELP_OPT  ("-F",  "return fixed devicetree")
 BAREBOX_CMD_HELP_OPT  ("-n",  "Print node names only, no properties")
+BAREBOX_CMD_HELP_OPT  ("-p",  "Print properties only, no child nodes")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(of_dump)
 	.cmd		= do_of_dump,
 	BAREBOX_CMD_DESC("dump devicetree nodes")
-	BAREBOX_CMD_OPTS("[-fFn] [NODE]")
+	BAREBOX_CMD_OPTS("[-fFnp] [NODE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_COMPLETE(devicetree_file_complete)
 	BAREBOX_CMD_HELP(cmd_of_dump_help)
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 6fe02649ee53..e103eed90af1 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2002,6 +2002,14 @@ static void __of_print_property(struct property *p, int indent)
 	printf(";\n");
 }
 
+void of_print_properties(struct device_node *node)
+{
+	struct property *prop;
+
+	list_for_each_entry(prop, &node->properties, list)
+		__of_print_property(prop, 0);
+}
+
 static int __of_print_parents(struct device_node *node)
 {
 	int indent, i;
diff --git a/include/of.h b/include/of.h
index 645f429bdeed..55e6bff8689e 100644
--- a/include/of.h
+++ b/include/of.h
@@ -105,6 +105,7 @@ void of_print_property(const void *data, int len);
 void of_print_cmdline(struct device_node *root);
 
 void of_print_nodes(struct device_node *node, int indent);
+void of_print_properties(struct device_node *node);
 void of_diff(struct device_node *a, struct device_node *b, int indent);
 int of_probe(void);
 int of_parse_dtb(struct fdt_header *fdt);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

