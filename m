Delivery-date: Wed, 06 Aug 2025 14:53:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujde8-007drR-0M
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 14:53:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujde7-0003Fq-GE
	for lore@pengutronix.de; Wed, 06 Aug 2025 14:53:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kyb09eBdvOV93h2cA7wpkyPg3upSOPQRMwIQbWlB83U=; b=ccT7YRZgtB7xFSFPKKuogpu6BB
	lac1MCkXq7h6VJmxoVVOLZ4fDxKGDyzVp7QPWLkdFwCV3Endp+U9kvW84dOiicApr6gQXYHK3ELzm
	XkGnUiyNelQPvNiHfenmkjQgx/NXJ8iHB3UlhqpLGDL3jQ8hmXTtCs0mZv4Uu4hh7QCJ3TKOsKEGI
	JSLvXa1/vJ/nGqRjA/jMSvf6goC22uOjDj3eOAh4LLNXw3M2RYGjyooH4I5v+yJEu15vvjIwF6DGp
	xJfbLiJUx5J6B+nbDFl9MUcPEhFgrkYgeKA6BPaB0DPYulh9W+UxvJY5bJkHtUYy8AUAEkpy+Rcj+
	aMQUj/CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujddk-0000000FE1E-45zL;
	Wed, 06 Aug 2025 12:53:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujddi-0000000FE09-1LHK
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 12:53:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujddg-00038h-QU; Wed, 06 Aug 2025 14:53:04 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  6 Aug 2025 14:53:03 +0200
Message-Id: <20250806125303.2804664-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_055306_356945_FE134729 
X-CRM114-Status: GOOD (  11.79  )
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
Subject: [PATCH] commands: iomem: add JSON output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This will make it easier to consume the results in tests.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/iomemport.c | 62 ++++++++++++++++++++++++++++++++++----------
 1 file changed, 48 insertions(+), 14 deletions(-)

diff --git a/commands/iomemport.c b/commands/iomemport.c
index d7c960d15b41..fe1273ba7451 100644
--- a/commands/iomemport.c
+++ b/commands/iomemport.c
@@ -11,6 +11,17 @@
 
 #define	FLAG_VERBOSE		BIT(0)
 #define	FLAG_IOPORT		BIT(1)
+#define	FLAG_JSON		BIT(2)
+
+static inline bool json_puts(const char *str, int flags)
+{
+	if (flags & FLAG_JSON) {
+		puts(str);
+		return true;
+	}
+
+	return false;
+}
 
 static void __print_resources(struct resource *res, int indent,
 			      ulong *addr, unsigned flags)
@@ -24,32 +35,48 @@ static void __print_resources(struct resource *res, int indent,
 	if (addr && !region_overlap_end_inclusive(*addr, *addr, res->start, res->end))
 		return;
 
-	if ((flags & FLAG_VERBOSE) && !(flags & FLAG_IOPORT))
+	if ((flags & FLAG_VERBOSE) && !(flags & (FLAG_IOPORT | FLAG_JSON)))
 		printf("%-58s", resource_typeattr_format(buf, sizeof(buf), res) ?: "");
 
 	for (i = 0; i < indent; i++)
 		printf("  ");
 
-	if (flags & (FLAG_VERBOSE | FLAG_IOPORT)) {
-		snprintf(buf, sizeof(buf), "%pa", &size);
-		size_str = buf;
+	if (flags & FLAG_JSON) {
+		printf("{ \"name\": \"%s\", \"start\": \"%pa\", "
+		       "\"end\": \"%pa\", \"reserved\": %s",
+		       res->name, &res->start, &res->end,
+		       is_reserved_resource(res) ? "true" : "false");
 	} else {
-		size_str = size_human_readable(size);
+		if (flags & (FLAG_VERBOSE | FLAG_IOPORT)) {
+			snprintf(buf, sizeof(buf), "%pa", &size);
+			size_str = buf;
+		} else {
+			size_str = size_human_readable(size);
+		}
+
+		printf("%pa - %pa (size %9s) %s%s\n",
+		       &res->start, &res->end, size_str,
+		       is_reserved_resource(res) ? "[R] " : "",
+		       res->name);
 	}
 
-	printf("%pa - %pa (size %9s) %s%s\n",
-			&res->start, &res->end, size_str,
-			is_reserved_resource(res) ? "[R] " : "",
-			res->name);
-
-	list_for_each_entry(r, &res->children, sibling) {
-		__print_resources(r, indent + 1, addr, flags);
+	if (!list_empty(&res->children)) {
+		json_puts(", \"children\": [\n", flags);
+		list_for_each_entry(r, &res->children, sibling) {
+			__print_resources(r, indent + 1, addr, flags);
+			if (r->sibling.next != &res->children)
+				json_puts(",\n", flags);
+		}
+		json_puts("]", flags);
 	}
+
+	json_puts("}", flags);
 }
 
 static void print_resources(struct resource *res, ulong *addr, unsigned flags)
 {
 	__print_resources(res, 0, addr, flags);
+	json_puts("\n", flags);
 }
 
 static int do_iomem(int argc, char *argv[])
@@ -58,11 +85,14 @@ static int do_iomem(int argc, char *argv[])
 	unsigned flags = 0;
 	int opt, ret;
 
-	while((opt = getopt(argc, argv, "v")) > 0) {
+	while((opt = getopt(argc, argv, "vj")) > 0) {
 		switch(opt) {
 		case 'v':
 			flags |= FLAG_VERBOSE;
 			break;
+		case 'j':
+			flags |= FLAG_JSON;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -90,12 +120,16 @@ BAREBOX_CMD_HELP_START(iomem)
 BAREBOX_CMD_HELP_TEXT("Print barebox view of the physical address space.")
 BAREBOX_CMD_HELP_TEXT("An optional ADDRESS can be specified to get information")
 BAREBOX_CMD_HELP_TEXT("about its region in particular")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-v",  "verbose output")
+BAREBOX_CMD_HELP_OPT ("-j",  "JSON output")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(iomem)
 	.cmd		= do_iomem,
 	BAREBOX_CMD_DESC("show IO memory usage")
-	BAREBOX_CMD_OPTS("[-v] [ADDRESS]")
+	BAREBOX_CMD_OPTS("[-vj] [ADDRESS]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_iomem_help)
 BAREBOX_CMD_END
-- 
2.39.5



