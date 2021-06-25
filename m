Delivery-date: Fri, 25 Jun 2021 18:08:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwoN6-0008Mt-P9
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 18:08:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwoN5-0003kC-Gw
	for lore@pengutronix.de; Fri, 25 Jun 2021 18:08:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Gew3Uqc0SxgTi+s2790IJnJRz9f7G9ZfzSiZUpNFcnk=; b=cWaon6X+3hzRza
	6LQfver5yFLaLDAcTNYLCp/84OzWZgOqW7yzn/05aV0Hh3hzaYcdOz6UCUpUGn85MhHKS5oT+d8cw
	8REpzh/W3hIAZOsCw3pRa6A91T8d/Pzfdo5NpxOYiF0SJpKxderPsCNjeobxIzL+lGdtqmCuIXunA
	cEdsofGmSSAAfnUkN0VUJF6KznIBkcHP13GDPMv78EFw/Hi8G82ASy9+mzrGS1Khu0OihaDfXYLVX
	1EJxW3DPbVYOjF2ViKS0MVSiiVDmBhQi0vshXdXFvKrYUxqhwkF52p10yE0jU5Dmg9CKdm6iCtsUM
	LBmJqvAywFwd+CQLk7eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwoLM-002FVL-Rg; Fri, 25 Jun 2021 16:06:12 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwoLH-002FUP-Il
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 16:06:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1624637162; x=1627229162;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5lyaoGKkJV6UNdauvjroVYPM6Oxf/MHQTC5kPL80CQM=;
 b=gYcDgRTS7veyzZk5re/ESvMs9tFex/Lo2odH0yAdIu2UW2znnUSK3+5rdyUJB1Ao
 vln9/A0Jkbi7nxhyQSp+IqLm4VKNsGVO2CGU1c9Ew3eXvuMrtZf6ZGQki1hsjbVL
 stzqqOc4HlOXv669fFG03+3+E71rEV5k9/8APfy2LXQ=;
X-AuditID: c39127d2-a77bc70000001c5e-58-60d5feea829b
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 14.62.07262.AEEF5D06;
 Fri, 25 Jun 2021 18:06:02 +0200 (CEST)
Received: from lws-ybas.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2021062518060252-1043464 ;
 Fri, 25 Jun 2021 18:06:02 +0200 
From: Yunus Bas <y.bas@phytec.de>
To: barebox@lists.infradead.org
Date: Fri, 25 Jun 2021 18:05:55 +0200
Message-Id: <20210625160555.3699702-1-y.bas@phytec.de>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 25.06.2021 18:06:02,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 25.06.2021 18:06:02
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrJJMWRmVeSWpSXmKPExsWyRoCBS/fVv6sJBl3dahYnFvczOzB6bF5S
 H8AYxWWTkpqTWZZapG+XwJVx/nwfY8FFo4p/7ZfZGhifa3QxcnJICJhIrJk0nRnEFhLYxihx
 9qhnFyMXkH2BUeL44/0sIAk2AUWJ87ffsoLYIgLyEnP3t4HZwgL+Er3/TjOC2CwCqhJz3swG
 G8QrYCZxvWclK8QCeYmTaw8zQcQFJU7OfMICskBC4AqjxOoj26CKhCROLz4L1swsoC2xbOFr
 5gmMvLOQ9MxCklrAyLSKUSg3Mzk7tSgzW68go7IkNVkvJXUTIzA4Dk9Uv7SDsW+OxyFGJg7G
 Q4wSHMxKIryPWi4lCPGmJFZWpRblxxeV5qQWH2KU5mBREufdwFsSJiSQnliSmp2aWpBaBJNl
 4uCUamCc7rxiCeN/zzSvxe4Sb96FbrkuYhX4UOH/iyXOs649eKsuI8TyzUAtsOTc6feJJy53
 FH7Z5RhUrGT9f+0cY8W1N2aUHHkpYM/hIFfX1eDiJhwyd9ux+0lcdXLmRZwrPxR3e8SzX+ZY
 apJ4R/a/+arUg45ZCiLr/L43zPecOP+ZBO83Bpb4zColluKMREMt5qLiRACk3Ve4/AEAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_090607_968074_8067EC14 
X-CRM114-Status: GOOD (  20.89  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] commands: of_property: Extend command usage on external dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The scope of the of_property command is limited to the internal devicetree
only. There is the possibility to add fixtures to postpone the operation
until boot and after the kernel DTB is already loaded, but this does not
cover the case when the property value needs to be phandle adresses
defined in the external DTB, since assigned values are evaluated
immediatly.

This patch extends the of_property-command to use it on external DTB's as
well. In case fixup is not used, the changes will also affect the original
data.

Signed-off-by: Yunus Bas <y.bas@phytec.de>
---
Changes in v2:
- Use %m instead of "%s", strerror(errno)
- Not fixing devicetree anymore before save
---
 commands/of_property.c | 74 ++++++++++++++++++++++++++++++++----------
 1 file changed, 57 insertions(+), 17 deletions(-)

diff --git a/commands/of_property.c b/commands/of_property.c
index 3d5097165..41bb5f71b 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -4,6 +4,7 @@
 /* of_property.c - device tree property handling support */
 
 #include <common.h>
+#include <libfile.h>
 #include <environment.h>
 #include <fdt.h>
 #include <of.h>
@@ -18,7 +19,7 @@
 #include <init.h>
 #include <xfuncs.h>
 
-static int of_parse_prop_cells(char * const *newval, int count, char *data, int *len)
+static int of_parse_prop_cells(struct device_node *root, char * const *newval, int count, char *data, int *len)
 {
 	char *cp;
 	unsigned long tmp;	/* holds converted values */
@@ -60,7 +61,7 @@ static int of_parse_prop_cells(char * const *newval, int count, char *data, int
 			str = xzalloc(len + 1);
 			strncpy(str, cp, len);
 
-			n = of_find_node_by_path_or_alias(NULL, str);
+			n = of_find_node_by_path_or_alias(root, str);
 			if (!n)
 				printf("Cannot find node '%s'\n", str);
 
@@ -164,7 +165,7 @@ static int of_parse_prop_string(char * const *newval, int count, char *data, int
  * data: A bytestream to be placed in the property
  * len: The length of the resulting bytestream
  */
-static int of_parse_prop(char * const *newval, int count, char *data, int *len)
+static int of_parse_prop(struct device_node *root, char * const *newval, int count, char *data, int *len)
 {
 	char *newp;		/* temporary newval char pointer */
 
@@ -177,7 +178,7 @@ static int of_parse_prop(char * const *newval, int count, char *data, int *len)
 
 	switch (*newp) {
 	case '<':
-		return of_parse_prop_cells(newval, count, data, len);
+		return of_parse_prop_cells(root, newval, count, data, len);
 	case '[':
 		return of_parse_prop_stream(newval, count, data, len);
 	default:
@@ -302,8 +303,13 @@ static int do_of_property(int argc, char *argv[])
 	int set = 0;
 	int fixup = 0;
 	char *path, *propname;
+	char *dtbfile = NULL;
+	int ret = 0;
+	size_t size;
+	struct fdt_header *fdt = NULL;
+	struct device_node *root = NULL;
 
-	while ((opt = getopt(argc, argv, "dsf")) > 0) {
+	while ((opt = getopt(argc, argv, "dsfe:")) > 0) {
 		switch (opt) {
 		case 'd':
 			delete = 1;
@@ -314,6 +320,9 @@ static int do_of_property(int argc, char *argv[])
 		case 'f':
 			fixup = 1;
 			break;
+		case 'e':
+			dtbfile = optarg;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -327,8 +336,22 @@ static int do_of_property(int argc, char *argv[])
 
 	debug("path: %s propname: %s\n", path, propname);
 
+	if ( !(set || delete))
+		return COMMAND_ERROR_USAGE;
+
+	if (dtbfile) {
+		fdt = read_file(dtbfile, &size);
+		if (!fdt) {
+			printf("unable to read %s: %m\n", dtbfile);
+			return -errno;
+		}
+
+		root = of_unflatten_dtb(fdt);
+
+		free(fdt);
+	}
+
 	if (set) {
-		int ret;
 		int len;
 		void *data;
 
@@ -340,10 +363,10 @@ static int do_of_property(int argc, char *argv[])
 		if (!data)
 			return -ENOMEM;
 
-		ret = of_parse_prop(&argv[optind + 2], argc - optind - 2, data, &len);
+		ret = of_parse_prop(root, &argv[optind + 2], argc - optind - 2, data, &len);
 		if (ret) {
 			free(data);
-			return ret;
+			goto out;
 		}
 
 		if (fixup) {
@@ -351,21 +374,37 @@ static int do_of_property(int argc, char *argv[])
 			if (ret)
 				free(data);
 		} else {
-			ret = do_of_property_set_now(NULL, path, propname, data, len);
+			ret = do_of_property_set_now(root, path, propname, data, len);
 			free(data);
 		}
 
-		return ret;
-	}
+		if (ret)
+			goto out;
 
-	if (delete) {
+	} else if (delete) {
 		if (fixup)
-			return do_of_property_delete_fixup(path, propname);
+			ret = do_of_property_delete_fixup(path, propname);
 		else
-			return do_of_property_delete_now(NULL, path, propname);
+			ret = do_of_property_delete_now(root, path, propname);
+
+		if (ret)
+			goto out;
+	}
+
+	if (root && !fixup) {
+		fdt = of_flatten_dtb(root);
+
+		ret = write_file(dtbfile, fdt, fdt32_to_cpu(fdt->totalsize));
+
+		free(fdt);
 	}
 
-	return COMMAND_ERROR_USAGE;
+out:
+
+	if (root)
+		of_delete_node(root);
+
+	return ret;
 }
 
 BAREBOX_CMD_HELP_START(of_property)
@@ -373,6 +412,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-s",  "set property to value")
 BAREBOX_CMD_HELP_OPT ("-d",  "delete property")
 BAREBOX_CMD_HELP_OPT ("-f",  "set/delete as a fixup (defer the action until booting)")
+BAREBOX_CMD_HELP_OPT ("-e dtb",  "set/delete/fixup from external dtb")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Valid formats for values:")
 BAREBOX_CMD_HELP_TEXT("<0x00112233 4 05> - an array of cells. cells not beginning with a digit are")
@@ -384,8 +424,8 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(of_property)
 	.cmd		= do_of_property,
 	BAREBOX_CMD_DESC("handle device tree properties")
-	BAREBOX_CMD_OPTS("[-sd] [-f] NODE [PROPERTY] [VALUES]")
+	BAREBOX_CMD_OPTS("[-sd] [-e] [-f] NODE [PROPERTY] [VALUES]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
-	BAREBOX_CMD_COMPLETE(devicetree_complete)
+	BAREBOX_CMD_COMPLETE(devicetree_file_complete)
 	BAREBOX_CMD_HELP(cmd_of_property_help)
 BAREBOX_CMD_END
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

