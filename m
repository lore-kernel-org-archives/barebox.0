Delivery-date: Fri, 13 Nov 2026 13:25:32 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRqLU-00APx2-0E
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 13:25:32 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F28822020DC
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 13:25:31 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=LnXN9qxY;
	dkim=fail ("headers rsa verify failed") header.d=norik.com header.s=default header.b=HDGfMqNk;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794572732;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=yBs6Srqaaa5dAYZwKrds3WZ/hMunGbTrWQrEjAU1fKs=;
	b=Ri34R1FR3zhAJy7uZEw45opcxyOrVz45S+yzYtilTMl0sCugUOY3Y3imfoIXj+uLtrUbQn
	Eaa26x5eOKn5oIZj8hwsbsImGsLv74wxUiUvh7ZQu/+qHwTz+u4gSdd+/sQ17n17Ri/QFB
	Aa7sKWx4GWywZp06DYwSbXYbDKJnutWv11yyb6zWT0e8dNbww+/g54SjkekowYX903GaU3
	9xsVm+xmq2mDcKuIl/jpXzQaUXuOT0tAv7ZuRqmgWNsF7TMWiKB74w+dvPtwKLyVszbr5e
	uBVkePfEwWkBc/QOcd5d1sDqXV5LQed0e8FMBIh6Koa2G3Xys5CDkFnkWzMHLg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794572732; a=rsa-sha256;
	cv=none;
	b=aJ6VS972GINhcKv79JB1BytZLinkhZWjMr5WJa2bUniLpDvnAejBCX2EDNF+WFkR2ADOEm
	tC4oJrLHRrc9/b6uE7mAEYnTPbRImT9CfYx1qvfLXG26bGmSd6seudK58pEYYqX8lKzoY6
	DpplnT3QvpaN1+11yRnZEVXmVKmnpg8SZsO2Ruy6Qa6O1krJQC3OoWB9Rv8qNIehuphTu9
	dHsyfSSwY08JrLjKNwiVN2pHzk/t0AN7+fSiN+MBoUc58687bwTQhlOoUBk46oEC2/CZIG
	VXjbQoEAYkM/lcsKLEsDNHWbLvFC/W1YG4xWS7ukasGSAyH4DsYJ+67u8UWATg==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=LnXN9qxY;
	dkim=fail ("headers rsa verify failed") header.d=norik.com header.s=default header.b=HDGfMqNk;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=yBs6Srqaaa5dAYZwKrds3WZ/hMunGbTrWQrEjAU1fKs=; b=LnXN9qxY4kId/M
	oiu+kloBd0L9KNfyzQ1Vw9Ca2t2gtdsiO6yn0/zNCCBbQKGzI+0gPxesDBCJOe2Yb5v3/kTV0xJlk
	ddtxPL0HUyu8fArW4m1Ss7HQz4Tueazv0xdWNegeUALI30dnCs9pAQjjRzXpugYurAr9j72uuNpxP
	tKGVoo7jw8dLsEodfyMtbmVvVm5TcHZkIpxGb6WnhS+/8bpv57NBB41Oi/KlLZ++LRi/HGzftALpl
	/IEkD47PR2Y75nJj3Y5SEkqyrnA3nmfe/hB/p+GP0izMGTML9ERznh64UKaZlj07f6VGDhglGfP05
	SByVrKmFvWlePRnjXF+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRqJc-0000000Ciu8-0kCh;
	Fri, 13 Nov 2026 12:23:36 +0000
Received: from cp2.siel.si ([46.19.12.180])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRqJa-0000000Cit5-0TFt
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 12:23:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
	s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Unsubscribe-Post:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=yBs6Srqaaa5dAYZwKrds3WZ/hMunGbTrWQrEjAU1fKs=; b=HDGfMqNkiNYn9t92aIPY9e7klt
	3dlSZZs5XPkt3JZXjkCmIhxoWoL6wV2h81dPZKPEA2Odt+oYUn7DD5goA36mxI3RW6fWvKbEGCWQO
	8FwS9VZEHCvI0s5WPJPyENubTimCyqMW/1IRPuHt7r0nwx60VtUoCMC9vWZD6YE3iyYPQbfxNj9dh
	tAleE+B2ROZQD+Y3mzcAebo5Qehj8+UKroBRs7Jt89xBtGe5Ms6XuLoTnJumJDH5TUSeN5ExsQ6QY
	C5DB3L7XZb40yKlQkPtR9PUb4ypMZWfeBfiAYoprIbkPLsJVFDX2HqsaBIapN/ah1SEEoldQD2GBO
	cvXNX7IA==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:58694 helo=localhost.localdomain)
	by cp2.siel.si with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.100.1)
	(envelope-from <primoz.fiser@norik.com>)
	id 1xRpsj-00000004eab-2f6A;
	Fri, 13 Nov 2026 12:55:49 +0100
From: Primoz Fiser <primoz.fiser@norik.com>
To: barebox@lists.infradead.org
Subject: [PATCH 1/1] commands: of_property: resolve phandles of fixups in the booted tree
Date: Fri, 13 Nov 2026 12:55:48 +0100
Message-Id: <20261113115548.2224914-2-primoz.fiser@norik.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261113115548.2224914-1-primoz.fiser@norik.com>
References: <20261113115548.2224914-1-primoz.fiser@norik.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cp2.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cp2.siel.si: authenticated_id: primoz.fiser@norik.com
X-Authenticated-Sender: cp2.siel.si: primoz.fiser@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_042334_367209_8315C269 
X-CRM114-Status: GOOD (  21.37  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Node paths in a cell value are converted to phandles when
   the command runs: in the barebox live tree, or in the tree read with -e. For
    a fixup (-f), the phandle is then written to the tree the kernel [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-5.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_X_AS(0.00)[primoz.fiser@norik.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	HAS_X_GMSV(0.00)[primoz.fiser@norik.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	DMARC_NA(0.00)[norik.com];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DNSWL_BLOCKED(0.00)[89.212.21.243:received];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_X_ANTIABUSE(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,norik.com:-];
	FROM_NEQ_ENVFROM(0.00)[primoz.fiser@norik.com,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[norik.com:s=default];
	HAS_X_SOURCE(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: F28822020DC
X-Stat-Signature: dxkznnizt7qmsxfr5chw4dwfg9enzkth
X-Rspamd-Action: no action

Node paths in a cell value are converted to phandles when the command
runs: in the barebox live tree, or in the tree read with -e. For a fixup
(-f), the phandle is then written to the tree the kernel is booted with.
Phandles are assigned by dtc and differ between the barebox and the
kernel tree, so without -e the fixup points to a wrong node.

With -e, the kernel dtb must be available as a separate file, and its
phandles must match the tree that is actually booted. This is not the
case when the device tree comes from a FIT image: the command fails
because the file does not exist, and the fixup is never registered.

Only check the syntax of the value when the command runs, and parse it
when the fixup is applied, so node paths are resolved in the tree that
is booted. The -e option is not needed for fixups anymore and is
ignored with -f, so existing scripts keep working.

Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
---
 commands/of_property.c | 75 ++++++++++++++++++++++++++++--------------
 1 file changed, 51 insertions(+), 24 deletions(-)

diff --git a/commands/of_property.c b/commands/of_property.c
index c1c2b343bccc..24d812069b70 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -19,7 +19,12 @@
 #include <init.h>
 #include <xfuncs.h>
 
-static int of_parse_prop_cells(struct device_node *root, char * const *newval, int count, char *data, int *len)
+/*
+ * With @resolve false, node paths are only checked for syntax and
+ * converted to 0 instead of a phandle.
+ */
+static int of_parse_prop_cells(struct device_node *root, bool resolve,
+			       char * const *newval, int count, char *data, int *len)
 {
 	char *cp;
 	unsigned long tmp;	/* holds converted values */
@@ -58,6 +63,12 @@ static int of_parse_prop_cells(struct device_node *root, char * const *newval, i
 				len++;
 			}
 
+			if (!resolve) {
+				tmp = 0;
+				newp += len;
+				goto next;
+			}
+
 			str = xzalloc(len + 1);
 			strncpy(str, cp, len);
 
@@ -73,7 +84,7 @@ static int of_parse_prop_cells(struct device_node *root, char * const *newval, i
 			tmp = of_node_create_phandle(n);
 			newp += len;
 		}
-
+next:
 		*(__be32 *)data = __cpu_to_be32(tmp);
 		data  += 4;
 		*len += 4;
@@ -165,7 +176,8 @@ static int of_parse_prop_string(char * const *newval, int count, char *data, int
  * data: A bytestream to be placed in the property
  * len: The length of the resulting bytestream
  */
-static int of_parse_prop(struct device_node *root, char * const *newval, int count, char *data, int *len)
+static int of_parse_prop(struct device_node *root, bool resolve,
+			 char * const *newval, int count, char *data, int *len)
 {
 	char *newp;		/* temporary newval char pointer */
 
@@ -178,7 +190,7 @@ static int of_parse_prop(struct device_node *root, char * const *newval, int cou
 
 	switch (*newp) {
 	case '<':
-		return of_parse_prop_cells(root, newval, count, data, len);
+		return of_parse_prop_cells(root, resolve, newval, count, data, len);
 	case '[':
 		return of_parse_prop_stream(newval, count, data, len);
 	default:
@@ -189,8 +201,8 @@ static int of_parse_prop(struct device_node *root, char * const *newval, int cou
 struct of_fixup_property_data {
 	const char *path;
 	const char *propname;
-	void *data;
-	int len;
+	char **values;
+	int count;
 };
 
 static int do_of_property_delete_now(struct device_node *root, const char *path,
@@ -201,9 +213,20 @@ static int do_of_property_set_now(struct device_node *root, const char *path,
 static int of_fixup_property_set(struct device_node *root, void *context)
 {
 	struct of_fixup_property_data *fixup = context;
+	void *data;
+	int len, ret;
+
+	/* parse now, so node paths resolve against the tree being booted */
+	data = xmalloc(1024);
+
+	ret = of_parse_prop(root, true, fixup->values, fixup->count, data, &len);
+	if (!ret)
+		ret = do_of_property_set_now(root, fixup->path, fixup->propname,
+				data, len);
 
-	return do_of_property_set_now(root, fixup->path, fixup->propname,
-			fixup->data, fixup->len);
+	free(data);
+
+	return ret;
 }
 
 static int of_fixup_property_delete(struct device_node *root, void *context)
@@ -214,15 +237,19 @@ static int of_fixup_property_delete(struct device_node *root, void *context)
 }
 
 static int do_of_property_set_fixup(const char *path, const char *propname,
-		void *data, int len)
+		char * const *values, int count)
 {
 	struct of_fixup_property_data *fixup;
+	int i;
 
 	fixup = xzalloc(sizeof(*fixup));
 	fixup->path = xstrdup_const(path);
 	fixup->propname = xstrdup_const(propname);
-	fixup->data = data;
-	fixup->len = len;
+	fixup->values = xzalloc(count * sizeof(*fixup->values));
+	fixup->count = count;
+
+	for (i = 0; i < count; i++)
+		fixup->values[i] = xstrdup(values[i]);
 
 	return of_register_fixup(of_fixup_property_set, (void *)fixup);
 }
@@ -234,8 +261,6 @@ static int do_of_property_delete_fixup(const char *path, const char *propname)
 	fixup = xzalloc(sizeof(*fixup));
 	fixup->path = xstrdup_const(path);
 	fixup->propname = xstrdup_const(propname);
-	fixup->data = NULL;
-	fixup->len = 0;
 
 	return of_register_fixup(of_fixup_property_delete, (void *)fixup);
 }
@@ -338,7 +363,8 @@ static int do_of_property(int argc, char *argv[])
 	if ( !(set || delete))
 		return COMMAND_ERROR_USAGE;
 
-	if (dtbfile) {
+	/* fixups apply to the booted tree; -e is accepted but ignored */
+	if (dtbfile && !fixup) {
 		root = of_read_file(dtbfile);
 		if (IS_ERR(root))
 			return PTR_ERR(root);
@@ -356,20 +382,20 @@ static int do_of_property(int argc, char *argv[])
 		if (!data)
 			return -ENOMEM;
 
-		ret = of_parse_prop(root, &argv[optind + 2], argc - optind - 2, data, &len);
+		ret = of_parse_prop(root, !fixup, &argv[optind + 2],
+				    argc - optind - 2, data, &len);
 		if (ret) {
 			free(data);
 			goto out;
 		}
 
-		if (fixup) {
-			ret = do_of_property_set_fixup(path, propname, data, len);
-			if (ret)
-				free(data);
-		} else {
+		if (fixup)
+			ret = do_of_property_set_fixup(path, propname,
+					&argv[optind + 2], argc - optind - 2);
+		else
 			ret = do_of_property_set_now(root, path, propname, data, len);
-			free(data);
-		}
+
+		free(data);
 
 		if (ret)
 			goto out;
@@ -404,11 +430,12 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-s",  "set property to value")
 BAREBOX_CMD_HELP_OPT ("-d",  "delete property")
 BAREBOX_CMD_HELP_OPT ("-f",  "set/delete as a fixup (defer the action until booting)")
-BAREBOX_CMD_HELP_OPT ("-e dtb",  "set/delete/fixup from external dtb")
+BAREBOX_CMD_HELP_OPT ("-e dtb",  "set/delete in external dtb (ignored with -f)")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Valid formats for values:")
 BAREBOX_CMD_HELP_TEXT("<0x00112233 4 05> - an array of cells. cells not beginning with a digit are")
-BAREBOX_CMD_HELP_TEXT("                    interpreted as node paths and converted to phandles")
+BAREBOX_CMD_HELP_TEXT("                    interpreted as node paths and converted to phandles.")
+BAREBOX_CMD_HELP_TEXT("                    With -f, the paths are looked up in the booted tree")
 BAREBOX_CMD_HELP_TEXT("[00 11 22 .. nn]  - byte stream")
 BAREBOX_CMD_HELP_TEXT("If the value does not start with '<' or '[' it is interpreted as string")
 BAREBOX_CMD_HELP_END
-- 
2.34.1



