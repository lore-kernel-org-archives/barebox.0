Delivery-date: Mon, 16 Jun 2025 09:24:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR4Ck-007qap-2r
	for lore@lore.pengutronix.de;
	Mon, 16 Jun 2025 09:24:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR4Ck-00052z-43
	for lore@pengutronix.de; Mon, 16 Jun 2025 09:24:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=el2DsPsR6PZsqBrM/1rlmM6+Jxnf7G/pmTF6DUt3DvM=; b=fEmnzwEVy6+2HckzMzQQ6ra0nr
	TTdyp52sG2rRT6lr+HGEIVbzReabUogidezBIhvisATolm2ZnfFeqc7eCouZd9YpVaRX0gECUQZDm
	v1ijP0jFuIicDjDRSpX/5UiiKbrrU9zTGA9arhDTq2IMc90YIzFWjI4JM6tGi+ZzFqkn/BkNdsDto
	Etvv5dNXNPeJVA6ba8Cs55RzmZ1Y/o8s5S8bXGG91UDgbaYX+jsFVrc7nHQ8EublGZYxSNC8G01SW
	qif6ySiM/FJ5r9cV2N0YMOHimvyy9C4kYemanYPjl7LXV4dYuvPxxdJHMtlqGq0kZscGtocrDCSsy
	ASHgzKhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR4C7-00000003cwb-3qxU;
	Mon, 16 Jun 2025 07:23:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR474-00000003c86-2A8Y
	for barebox@lists.infradead.org;
	Mon, 16 Jun 2025 07:18:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uR471-0006Gi-29; Mon, 16 Jun 2025 09:18:35 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 16 Jun 2025 09:16:32 +0200
Message-Id: <20250616071634.811000-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250616071634.811000-1-a.fatoum@barebox.org>
References: <20250616071634.811000-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_001838_608745_60C76AB4 
X-CRM114-Status: GOOD (  14.19  )
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
Subject: [PATCH 4/6] commands: iomemport: support showing info for particular argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Follow-up commit will start printing extra information on an address, so
prepare for that by allowing printout of information related to a
specific address.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/iomemport.c | 54 ++++++++++++++++++++++++++++++++++++--------
 1 file changed, 45 insertions(+), 9 deletions(-)

diff --git a/commands/iomemport.c b/commands/iomemport.c
index 2246868c2818..967566edd8d4 100644
--- a/commands/iomemport.c
+++ b/commands/iomemport.c
@@ -13,7 +13,7 @@
 #define	FLAG_IOPORT		BIT(1)
 
 static void __print_resources(struct resource *res, int indent,
-			      unsigned flags)
+			      ulong *addr, unsigned flags)
 {
 	const char *size_str;
 	char buf[64];
@@ -21,6 +21,9 @@ static void __print_resources(struct resource *res, int indent,
 	resource_size_t size = resource_size(res);
 	int i;
 
+	if (addr && !region_overlap_end(*addr, *addr, res->start, res->end))
+		return;
+
 	for (i = 0; i < indent; i++)
 		printf("  ");
 
@@ -37,19 +40,20 @@ static void __print_resources(struct resource *res, int indent,
 			res->name);
 
 	list_for_each_entry(r, &res->children, sibling) {
-		__print_resources(r, indent + 1, flags);
+		__print_resources(r, indent + 1, addr, flags);
 	}
 }
 
-static void print_resources(struct resource *res, unsigned flags)
+static void print_resources(struct resource *res, ulong *addr, unsigned flags)
 {
-	__print_resources(res, 0, flags);
+	__print_resources(res, 0, addr, flags);
 }
 
 static int do_iomem(int argc, char *argv[])
 {
+	ulong addr, *arg = NULL;
 	unsigned flags = 0;
-	int opt;
+	int opt, ret;
 
 	while((opt = getopt(argc, argv, "v")) > 0) {
 		switch(opt) {
@@ -64,25 +68,56 @@ static int do_iomem(int argc, char *argv[])
 	argv += optind;
 	argc -= optind;
 
-	if (argc > 0)
+	if (argc > 1)
 		return COMMAND_ERROR_USAGE;
 
-	print_resources(&iomem_resource, flags);
+	if (argv[0]) {
+		ret = kstrtoul(argv[0], 16, &addr);
+		if (ret)
+			return ret;
+		arg = &addr;
+	}
+
+	print_resources(&iomem_resource, arg, flags);
 
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
-	BAREBOX_CMD_OPTS("[-v]")
+	BAREBOX_CMD_OPTS("[-v] [ADDRESS]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_HELP(cmd_iomem_help)
 BAREBOX_CMD_END
 
 #if IO_SPACE_LIMIT > 0
 static int do_ioport(int argc, char *argv[])
 {
-	print_resources(&ioport_resource, FLAG_IOPORT);
+	ulong addr, *arg = NULL;
+	int ret;
+
+	/* No options supported */
+	argv += 1;
+	argc -= 1;
+
+	if (argc > 1)
+		return COMMAND_ERROR_USAGE;
+
+	if (argv[0]) {
+		ret = kstrtoul(argv[0], 16, &addr);
+		if (ret)
+			return ret;
+		arg = &addr;
+	}
+
+	print_resources(&ioport_resource, arg, FLAG_IOPORT);
 
 	return 0;
 }
@@ -90,6 +125,7 @@ static int do_ioport(int argc, char *argv[])
 BAREBOX_CMD_START(ioport)
 	.cmd		= do_ioport,
 	BAREBOX_CMD_DESC("show IO port usage")
+	BAREBOX_CMD_OPTS("[PORT]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 BAREBOX_CMD_END
 #endif
-- 
2.39.5



