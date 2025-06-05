Delivery-date: Thu, 05 Jun 2025 21:45:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNGX5-0047un-1B
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 21:45:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNGX4-0005bV-KO
	for lore@pengutronix.de; Thu, 05 Jun 2025 21:45:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j6xtbipXJxLFq/uCRk7I8K4ALKJn9d1vIsINkrgWSiE=; b=lswUxFRYn8pIglkbCbB+0Hjkf0
	ZIyr9EbC5jyJd2EMNx72z05lLsKw6GSdY+m65tOcNaeWEObo0C3Z+3OV+rLC6ursmihvXW1gpkMsL
	m+0dXEY/Cn+Xl/lsQll0+5lGyTwPonSEn25HmMSUjMIWgd12s2tezQSUfm5bmIyhu5YyyQulg6/RA
	6FXe2lJZK//2Mvdd4sVdZnj76xRKgBGYcH0lF19Vv0seKCZXx26aprRVCxkDfB8GSIaFcuVxMre/z
	zwrGYN1hHBxopVkdpj4mX2gtK0uiiU4jeIUau0E3EkpLolBeXTU4W+lSf3W2ub4VM7/+bYxNk/OsD
	i1uJpiLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNGWT-0000000GWWZ-06BT;
	Thu, 05 Jun 2025 19:45:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNGVR-0000000GWIC-2wdM
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 19:44:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNGVO-0003sr-5e; Thu, 05 Jun 2025 21:44:02 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu,  5 Jun 2025 21:44:01 +0200
Message-Id: <20250605194401.1841679-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605194401.1841679-1-a.fatoum@barebox.org>
References: <20250605194401.1841679-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_124405_742488_C1CC4808 
X-CRM114-Status: GOOD (  17.62  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 3/3] commands: iomem: add support for printing type/attributes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make it easier to verify attributes, let's teach iomem to print the
newly added information. This intentionally only operates on the
resources, the mmuinfo command is what should print information actually
in the page tables.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v2 -> v3:
  - new commit
---
 commands/iomemport.c   | 55 +++++++++++++++++++++++++++++++----
 common/resource.c      | 66 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/ioport.h |  3 ++
 3 files changed, 119 insertions(+), 5 deletions(-)

diff --git a/commands/iomemport.c b/commands/iomemport.c
index bbe41f571b48..04d7b100a755 100644
--- a/commands/iomemport.c
+++ b/commands/iomemport.c
@@ -6,13 +6,23 @@
 #include <asm/io.h>
 #include <common.h>
 #include <command.h>
+#include <getopt.h>
+#include <range.h>
 
-static void __print_resources(struct resource *res, int indent)
+static void __print_resources(struct resource *res, int indent,
+			      ulong *addr, bool verbose)
 {
+	char buf[64];
 	struct resource *r;
 	resource_size_t size = resource_size(res);
 	int i;
 
+	if (addr && !region_overlap_end(*addr, *addr, res->start, res->end))
+		return;
+
+	if (verbose)
+		printf("%-58s", resource_typeattr_format(buf, sizeof(buf), res) ?: "");
+
 	for (i = 0; i < indent; i++)
 		printf("  ");
 
@@ -22,26 +32,61 @@ static void __print_resources(struct resource *res, int indent)
 			res->name);
 
 	list_for_each_entry(r, &res->children, sibling) {
-		__print_resources(r, indent + 1);
+		__print_resources(r, indent + 1, addr, verbose);
 	}
+
 }
 
-static void print_resources(struct resource *res)
+static void print_resources(struct resource *res, ulong *addr, bool verbose)
 {
-	__print_resources(res, 0);
+	__print_resources(res, 0, addr, verbose);
 }
 
 static int do_iomem(int argc, char *argv[])
 {
-	print_resources(&iomem_resource);
+	ulong addr, *arg = NULL;
+	bool verbose = false;
+	int opt, ret;
+
+	while((opt = getopt(argc, argv, "v")) > 0) {
+		switch(opt) {
+		case 'v':
+			verbose = true;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	argv += optind;
+	argc -= optind;
+
+	if (argc == 1) {
+		ret = kstrtoul(argv[0], 16, &addr);
+		if (ret)
+			return ret;
+		arg = &addr;
+	} else if (argc != 0) {
+		return COMMAND_ERROR_USAGE;
+	}
+
+	print_resources(&iomem_resource, arg, verbose);
 
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(iomem)
+BAREBOX_CMD_HELP_TEXT("Print barebox view of the physical address space.")
+BAREBOX_CMD_HELP_TEXT("An optional ADDRESS can be specified to get information")
+BAREBOX_CMD_HELP_TEXT("about its region in particular")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(iomem)
 	.cmd		= do_iomem,
 	BAREBOX_CMD_DESC("show IO memory usage")
+	BAREBOX_CMD_OPTS("[-v] [ADDRESS]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_HELP(cmd_iomem_help)
 BAREBOX_CMD_END
 
 #if IO_SPACE_LIMIT > 0
diff --git a/common/resource.c b/common/resource.c
index c233b106c17b..152f5a502a1e 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -183,3 +183,69 @@ struct resource_entry *resource_list_create_entry(struct resource *res,
 	return entry;
 }
 EXPORT_SYMBOL(resource_list_create_entry);
+
+static const char memory_type_name[][13] = {
+	"Reserved",
+	"Loader Code",
+	"Loader Data",
+	"Boot Code",
+	"Boot Data",
+	"Runtime Code",
+	"Runtime Data",
+	"Conventional",
+	"Unusable",
+	"ACPI Reclaim",
+	"ACPI Mem NVS",
+	"MMIO",
+	"MMIO Port",
+	"PAL Code",
+	"Persistent",
+	"Unaccepted",
+};
+
+const char *resource_typeattr_format(char *buf, size_t size,
+				     const struct resource *res)
+{
+	char *pos;
+	int type_len;
+	u64 attr;
+
+	if (!(res->flags & IORESOURCE_TYPE_VALID))
+		return NULL;
+
+	pos = buf;
+	type_len = snprintf(pos, size, "[%-*s",
+			    (int)(sizeof(memory_type_name[0]) - 1),
+			    memory_type_name[res->type]);
+	if (type_len >= size)
+		return buf;
+
+	pos += type_len;
+	size -= type_len;
+
+	attr = res->attrs;
+	if (attr & ~(MEMATTR_UC | MEMATTR_WC | MEMATTR_WT |
+		     MEMATTR_WB | MEMATTR_UCE | MEMATTR_RO |
+		     MEMATTR_WP | MEMATTR_RP | MEMATTR_XP |
+		     MEMATTR_NV | MEMATTR_SP | MEMATTR_MORE_RELIABLE)
+		     )
+		snprintf(pos, size, "|attr=0x%08llx]",
+			 (unsigned long long)attr);
+	else
+		snprintf(pos, size,
+			 "|%3s|%2s|%2s|%2s|%2s|%2s|%2s|%2s|%3s|%2s|%2s|%2s|%2s]",
+			 res->runtime			? "RUN" : "",
+			 attr & MEMATTR_MORE_RELIABLE	? "MR"  : "",
+			 attr & MEMATTR_SP		? "SP"  : "",
+			 attr & MEMATTR_NV		? "NV"  : "",
+			 attr & MEMATTR_XP		? "XP"  : "",
+			 attr & MEMATTR_RP		? "RP"  : "",
+			 attr & MEMATTR_WP		? "WP"  : "",
+			 attr & MEMATTR_RO		? "RO"  : "",
+			 attr & MEMATTR_UCE		? "UCE" : "",
+			 attr & MEMATTR_WB		? "WB"  : "",
+			 attr & MEMATTR_WT		? "WT"  : "",
+			 attr & MEMATTR_WC		? "WC"  : "",
+			 attr & MEMATTR_UC		? "UC"  : "");
+	return buf;
+}
diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index 425928df3bfe..199280619da1 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -212,6 +212,9 @@ int release_region(struct resource *res);
 extern struct resource iomem_resource;
 extern struct resource ioport_resource;
 
+const char *resource_typeattr_format(char *buf, size_t size,
+				     const struct resource *res);
+
 static inline void reserve_resource(struct resource *res)
 {
 	res->type = MEMTYPE_RESERVED;
-- 
2.39.5



