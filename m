Delivery-date: Mon, 16 Jun 2025 09:24:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR4Cj-007qaP-35
	for lore@lore.pengutronix.de;
	Mon, 16 Jun 2025 09:24:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR4Cj-0004wP-2f
	for lore@pengutronix.de; Mon, 16 Jun 2025 09:24:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qeRRyZ1ZvFEyzahO7YMbGYQk321zZup2UccyMDB+ucU=; b=HWJAqKf1huWAR+PflYnfS8SvZB
	OMPZx9dNclyTlziT3sd64C+MSc2owDTBcYYY1lw+5V40Ii2UPLM+YGngiZrQi1yXHy7egB/ijzkeB
	flI8EGSNUQv5Cbb+UzDR3rPMEGH1sHFfdTmy4bIybqMqiWf4jnuJhB9YmYpeNOe5oT76ay5EkKIB/
	OOB7vctDZnBDfoO2SWIbNO5nLsD6tI1R+c8CBrcdDsdJbzaxSdEr+bU6GbJQyK2vVE00CRf/XhTSv
	eVelAZ40w4xYuzHeK+wjqdq04QwKSu9fkOTOUjZgm9UFdiMe49MvQezJgR/XIOtLQNbmjuxpsgflb
	qmUwveLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR4C8-00000003cx6-2zT9;
	Mon, 16 Jun 2025 07:23:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR474-00000003c85-28n9
	for barebox@lists.infradead.org;
	Mon, 16 Jun 2025 07:18:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uR470-0006Gi-Qh; Mon, 16 Jun 2025 09:18:34 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 16 Jun 2025 09:16:31 +0200
Message-Id: <20250616071634.811000-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250616071634.811000-1-a.fatoum@barebox.org>
References: <20250616071634.811000-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_001838_564025_04125C31 
X-CRM114-Status: GOOD (  14.66  )
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
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/6] commands: iomem: print human readable sizes by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already print start and end in hexadecimal, so print a size of e.g.,
905.6 KiB doesn't lose any information when copy-pasting, but makes it
easier for quick sanity checks.

The newly introduced -v flag can be used to restore the old behavior.
For I/O ports, printing a size in bytes doesn't make sense, so we
exclude it via the FLAG_IOPORT flag.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/iomemport.c | 51 +++++++++++++++++++++++++++++++++++++-------
 1 file changed, 43 insertions(+), 8 deletions(-)

diff --git a/commands/iomemport.c b/commands/iomemport.c
index bbe41f571b48..2246868c2818 100644
--- a/commands/iomemport.c
+++ b/commands/iomemport.c
@@ -6,9 +6,17 @@
 #include <asm/io.h>
 #include <common.h>
 #include <command.h>
+#include <getopt.h>
+#include <range.h>
 
-static void __print_resources(struct resource *res, int indent)
+#define	FLAG_VERBOSE		BIT(0)
+#define	FLAG_IOPORT		BIT(1)
+
+static void __print_resources(struct resource *res, int indent,
+			      unsigned flags)
 {
+	const char *size_str;
+	char buf[64];
 	struct resource *r;
 	resource_size_t size = resource_size(res);
 	int i;
@@ -16,24 +24,50 @@ static void __print_resources(struct resource *res, int indent)
 	for (i = 0; i < indent; i++)
 		printf("  ");
 
-	printf("%pa - %pa (size %pa) %s%s\n",
-			&res->start, &res->end, &size,
+	if (flags & (FLAG_VERBOSE | FLAG_IOPORT)) {
+		snprintf(buf, sizeof(buf), "%pa", &size);
+		size_str = buf;
+	} else {
+		size_str = size_human_readable(size);
+	}
+
+	printf("%pa - %pa (size %9s) %s%s\n",
+			&res->start, &res->end, size_str,
 			is_reserved_resource(res) ? "[R] " : "",
 			res->name);
 
 	list_for_each_entry(r, &res->children, sibling) {
-		__print_resources(r, indent + 1);
+		__print_resources(r, indent + 1, flags);
 	}
 }
 
-static void print_resources(struct resource *res)
+static void print_resources(struct resource *res, unsigned flags)
 {
-	__print_resources(res, 0);
+	__print_resources(res, 0, flags);
 }
 
 static int do_iomem(int argc, char *argv[])
 {
-	print_resources(&iomem_resource);
+	unsigned flags = 0;
+	int opt;
+
+	while((opt = getopt(argc, argv, "v")) > 0) {
+		switch(opt) {
+		case 'v':
+			flags |= FLAG_VERBOSE;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	argv += optind;
+	argc -= optind;
+
+	if (argc > 0)
+		return COMMAND_ERROR_USAGE;
+
+	print_resources(&iomem_resource, flags);
 
 	return 0;
 }
@@ -41,13 +75,14 @@ static int do_iomem(int argc, char *argv[])
 BAREBOX_CMD_START(iomem)
 	.cmd		= do_iomem,
 	BAREBOX_CMD_DESC("show IO memory usage")
+	BAREBOX_CMD_OPTS("[-v]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 BAREBOX_CMD_END
 
 #if IO_SPACE_LIMIT > 0
 static int do_ioport(int argc, char *argv[])
 {
-	print_resources(&ioport_resource);
+	print_resources(&ioport_resource, FLAG_IOPORT);
 
 	return 0;
 }
-- 
2.39.5



