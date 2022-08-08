Delivery-date: Mon, 08 Aug 2022 08:58:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oKwiJ-00FrI1-Th
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 08:58:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oKwiK-0001Kd-0n
	for lore@pengutronix.de; Mon, 08 Aug 2022 08:58:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CsBY6gJYo3jsHMH67ESSHrUVnDIDyJ8KJ8a1sRy5cNQ=; b=pj5GWJTM89+H9L+tFY1iZBeDrT
	cGxd9vFfselcoC5u8mYKXbzjkAnCRQwKezOVhFPPoIO8UL9UHwEiM88Vdljch97DyXErwsDYesRjL
	mkIspaZH/1XqJqXU3bfSOrvR7Z8OwY7EIcVmla16YtqbQL5SaTG4VXhz1K+VWyU0EgaINjd7KJR1F
	xjkF7bPi4lIBOcUXk8yloiMF4PTlqa0lwnmxH2MT4s/2cHRNIpQyqRtZoDsy+KhT+2bU/UFb+h5AH
	2iRC7EpuvRhTmkKAuN3ePvAOPSOLXkosoeO8W/DBbp9QGcOKikrF+mxgOrY5LsZC2eGoBEK9b35XC
	EQjG3eFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKwh0-00BxxP-W4; Mon, 08 Aug 2022 06:56:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKwgt-00Bxw6-AZ
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 06:56:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oKwgs-00017u-3e; Mon, 08 Aug 2022 08:56:42 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oKwgp-002RmH-4O; Mon, 08 Aug 2022 08:56:41 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oKwgq-001v9F-9D; Mon, 08 Aug 2022 08:56:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Aug 2022 08:56:39 +0200
Message-Id: <20220808065639.453483-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220808065639.453483-1-a.fatoum@pengutronix.de>
References: <20220808065639.453483-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220807_235643_550166_890A3A17 
X-CRM114-Status: GOOD (  16.58  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] commands: of_dump: support limiting size of printed properties
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

FIT images can have properties with very long values. Make it possible
to use of_dump to inspect them by adding a -P option that restricts
how much of the value is printed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/devinfo.c |  2 +-
 commands/of_dump.c | 15 +++++++++++----
 common/bootm.c     |  2 +-
 common/image-fit.c |  2 +-
 drivers/of/base.c  | 37 ++++++++++++++++++++-----------------
 include/of.h       |  4 ++--
 6 files changed, 36 insertions(+), 26 deletions(-)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index 32fd55ebd515..e171ecc62c66 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -104,7 +104,7 @@ static int do_devinfo(int argc, char *argv[])
 #ifdef CONFIG_OFDEVICE
 		if (dev->device_node) {
 			printf("Device node: %s\n", dev->device_node->full_name);
-			of_print_nodes(dev->device_node, 0);
+			of_print_nodes(dev->device_node, 0, ~0);
 		}
 #endif
 	}
diff --git a/commands/of_dump.c b/commands/of_dump.c
index 6f36b3151458..c2ca8485cd5d 100644
--- a/commands/of_dump.c
+++ b/commands/of_dump.c
@@ -39,9 +39,10 @@ static int do_of_dump(int argc, char *argv[])
 	char *dtbfile = NULL;
 	size_t size;
 	const char *nodename;
+	unsigned maxpropsize = ~0;
 	int names_only = 0, properties_only = 0;
 
-	while ((opt = getopt(argc, argv, "Ff:np")) > 0) {
+	while ((opt = getopt(argc, argv, "Ff:npP:")) > 0) {
 		switch (opt) {
 		case 'f':
 			dtbfile = optarg;
@@ -55,6 +56,11 @@ static int do_of_dump(int argc, char *argv[])
 		case 'p':
 			properties_only = 1;
 			break;
+		case 'P':
+			ret = kstrtouint(optarg, 0, &maxpropsize);
+			if (ret)
+				return ret;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -120,9 +126,9 @@ static int do_of_dump(int argc, char *argv[])
 	if (names_only && !properties_only)
 		of_print_nodenames(node);
 	else if (properties_only && !names_only)
-		of_print_properties(node);
+		of_print_properties(node, maxpropsize);
 	else
-		of_print_nodes(node, 0);
+		of_print_nodes(node, 0, maxpropsize);
 
 out:
 	if (of_free)
@@ -137,12 +143,13 @@ BAREBOX_CMD_HELP_OPT  ("-f dtb",  "work on dtb instead of internal devicetree")
 BAREBOX_CMD_HELP_OPT  ("-F",  "return fixed devicetree")
 BAREBOX_CMD_HELP_OPT  ("-n",  "Print node names only, no properties")
 BAREBOX_CMD_HELP_OPT  ("-p",  "Print properties only, no child nodes")
+BAREBOX_CMD_HELP_OPT  ("-P len",  "print only len property bytes")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(of_dump)
 	.cmd		= do_of_dump,
 	BAREBOX_CMD_DESC("dump devicetree nodes")
-	BAREBOX_CMD_OPTS("[-fFnp] [NODE]")
+	BAREBOX_CMD_OPTS("[-fFnpP] [NODE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_COMPLETE(devicetree_file_complete)
 	BAREBOX_CMD_HELP(cmd_of_dump_help)
diff --git a/common/bootm.c b/common/bootm.c
index 269a40beafa1..0c1d28d8ebaf 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -461,7 +461,7 @@ int bootm_load_devicetree(struct image_data *data, void *fdt,
 
 	of_print_cmdline(data->of_root_node);
 	if (bootm_verbose(data) > 1)
-		of_print_nodes(data->of_root_node, 0);
+		of_print_nodes(data->of_root_node, 0, ~0);
 
 	return 0;
 }
diff --git a/common/image-fit.c b/common/image-fit.c
index a410632d7019..507a857cadb4 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -641,7 +641,7 @@ static int fit_config_verify_signature(struct fit_handle *handle, struct device_
 
 	for_each_child_of_node(conf_node, sig_node) {
 		if (handle->verbose)
-			of_print_nodes(sig_node, 0);
+			of_print_nodes(sig_node, 0, ~0);
 		ret = fit_verify_signature(sig_node, handle->fit);
 		if (ret < 0)
 			return ret;
diff --git a/drivers/of/base.c b/drivers/of/base.c
index ac5a14f49919..2247b5a1a348 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2007,22 +2007,25 @@ int of_property_read_string_helper(const struct device_node *np,
 }
 
 static void __of_print_property_prefixed(const struct property *p, int indent,
-					 const char *prefix)
+					 unsigned maxpropsize, const char *prefix)
 {
 	unsigned length;
 
 	printf("%s%*s%s", prefix, indent * 8, "", p->name);
 
-	length = p->length;
+	length = min_t(unsigned, p->length, maxpropsize);
 	if (length) {
 		printf(" = ");
 		of_print_property(of_property_get_value(p), length);
 	}
+	if (length != p->length)
+		printf(" /* %u more bytes omitted */", p->length - length);
 
 	printf(";\n");
 }
 
-static int __of_print_nodes(struct device_node *node, int indent, const char *prefix)
+static int __of_print_nodes(struct device_node *node, int indent,
+			    unsigned maxpropsize, const char *prefix)
 {
 	struct device_node *n;
 	struct property *p;
@@ -2037,13 +2040,13 @@ static int __of_print_nodes(struct device_node *node, int indent, const char *pr
 	printf("%s%*s%s%s\n", prefix, indent * 8, "", node->name, node->name ? " {" : "{");
 
 	list_for_each_entry(p, &node->properties, list)
-		__of_print_property_prefixed(p, indent + 1, prefix);
+		__of_print_property_prefixed(p, indent + 1, maxpropsize, prefix);
 
 	if (ctrlc())
 		return -EINTR;
 
 	list_for_each_entry(n, &node->children, parent_list) {
-		ret = __of_print_nodes(n, indent + 1, prefix);
+		ret = __of_print_nodes(n, indent + 1, maxpropsize, prefix);
 		if (ret)
 			return ret;
 	}
@@ -2052,22 +2055,22 @@ static int __of_print_nodes(struct device_node *node, int indent, const char *pr
 	return 0;
 }
 
-void of_print_nodes(struct device_node *node, int indent)
+void of_print_nodes(struct device_node *node, int indent, unsigned maxpropsize)
 {
-	__of_print_nodes(node, indent, NULL);
+	__of_print_nodes(node, indent, maxpropsize, NULL);
 }
 
-static void __of_print_property(struct property *p, int indent)
+static void __of_print_property(struct property *p, int indent, unsigned maxpropsize)
 {
-	__of_print_property_prefixed(p, indent, "");
+	__of_print_property_prefixed(p, indent, maxpropsize, "");
 }
 
-void of_print_properties(struct device_node *node)
+void of_print_properties(struct device_node *node, unsigned maxpropsize)
 {
 	struct property *prop;
 
 	list_for_each_entry(prop, &node->properties, list)
-		__of_print_property(prop, 0);
+		__of_print_property(prop, 0, maxpropsize);
 }
 
 static int __of_print_parents(struct device_node *node)
@@ -2135,7 +2138,7 @@ int of_diff(struct device_node *a, struct device_node *b, int indent)
 				continue;
 			of_print_parents(a, &printed);
 			printf("- ");
-			__of_print_property(ap, indent);
+			__of_print_property(ap, indent, ~0);
 			continue;
 		}
 
@@ -2145,9 +2148,9 @@ int of_diff(struct device_node *a, struct device_node *b, int indent)
 				continue;
 			of_print_parents(a, &printed);
 			printf("- ");
-			__of_print_property(ap, indent);
+			__of_print_property(ap, indent, ~0);
 			printf("+ ");
-			__of_print_property(bp, indent);
+			__of_print_property(bp, indent, ~0);
 		}
 	}
 
@@ -2159,7 +2162,7 @@ int of_diff(struct device_node *a, struct device_node *b, int indent)
 				continue;
 			of_print_parents(a, &printed);
 			printf("+ ");
-			__of_print_property(bp, indent);
+			__of_print_property(bp, indent, ~0);
 		}
 	}
 
@@ -2172,7 +2175,7 @@ int of_diff(struct device_node *a, struct device_node *b, int indent)
 			if (silent)
 				continue;
 			of_print_parents(a, &printed);
-			__of_print_nodes(ca, indent, "- ");
+			__of_print_nodes(ca, indent, ~0, "- ");
 		}
 	}
 
@@ -2182,7 +2185,7 @@ int of_diff(struct device_node *a, struct device_node *b, int indent)
 			if (silent)
 				continue;
 			of_print_parents(a, &printed);
-			__of_print_nodes(cb, indent, "+ ");
+			__of_print_nodes(cb, indent, ~0, "+ ");
 		}
 	}
 
diff --git a/include/of.h b/include/of.h
index 3c5f14e167c5..4aadbb7edb49 100644
--- a/include/of.h
+++ b/include/of.h
@@ -105,8 +105,8 @@ static inline const void *of_property_get_value(const struct property *pp)
 void of_print_property(const void *data, int len);
 void of_print_cmdline(struct device_node *root);
 
-void of_print_nodes(struct device_node *node, int indent);
-void of_print_properties(struct device_node *node);
+void of_print_nodes(struct device_node *node, int indent, unsigned maxpropsize);
+void of_print_properties(struct device_node *node, unsigned maxpropsize);
 int of_diff(struct device_node *a, struct device_node *b, int indent);
 int of_probe(void);
 int of_parse_dtb(struct fdt_header *fdt);
-- 
2.30.2



