Delivery-date: Thu, 11 Dec 2025 21:53:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnf0-00AQgd-25
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:53:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnez-0002rT-W0
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:53:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kWCq6M39dQN9EtHhNSMvQWbZ5wjCXV8kiZi8GyBQBDo=; b=XDFrPAj+brsKDZnWd+ZDgMlYG8
	6uknOhehlK8rnWobVrjau/2GdH4Q1LODB/0UNDk/c57AA17gNn/2onCKnwPGLBAzcwuuvIj1JH3WY
	DP+MGU9Ii8fNLRXATOh8doYRfxv270gB2RwqbooFPgyPVIRqPA5rApr5PATsN2SWwBEUqU+ZkONb4
	7fvfGGgHa0E8+LrwqWJvIlTTsoV0WmsOCqXuzYhvhnCM7qUykXuXAvSekwYevHUwEcul01r4fy8Kq
	O6Xrz/Eb6KuQ6u4p/xDlgnzdZY1zSRxJQLug/TzZrH5vsVMa0XM3GqseP8q9DBPlxEoH8Ybb7u2HQ
	+Js8OpuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTneY-0000000HIAP-1AuU;
	Thu, 11 Dec 2025 20:52:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTneV-0000000HI7T-0gTb
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 20:52:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-0002VB-Lw; Thu, 11 Dec 2025 21:52:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-005BZ6-1Y;
	Thu, 11 Dec 2025 21:52:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-0000000CFbB-1aDx;
	Thu, 11 Dec 2025 21:52:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:50:05 +0100
Message-ID: <20251211205240.2836186-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211205240.2836186-1-a.fatoum@pengutronix.de>
References: <20251211205240.2836186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_125243_197775_807E4AD5 
X-CRM114-Status: GOOD (  13.06  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/6] commands: iomem: add support for printing gaps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With the new resource_iter support, it's easy to walk gaps between
resources as well, so wire this into the iomem command.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/iomemport.c | 41 ++++++++++++++++++++++++++++-------------
 1 file changed, 28 insertions(+), 13 deletions(-)

diff --git a/commands/iomemport.c b/commands/iomemport.c
index fe1273ba7451..c5b1ea8909e4 100644
--- a/commands/iomemport.c
+++ b/commands/iomemport.c
@@ -12,6 +12,7 @@
 #define	FLAG_VERBOSE		BIT(0)
 #define	FLAG_IOPORT		BIT(1)
 #define	FLAG_JSON		BIT(2)
+#define	FLAG_GAPS		BIT(3)
 
 static inline bool json_puts(const char *str, int flags)
 {
@@ -26,12 +27,14 @@ static inline bool json_puts(const char *str, int flags)
 static void __print_resources(struct resource *res, int indent,
 			      ulong *addr, unsigned flags)
 {
-	const char *size_str;
+	const char *size_str, *name;
 	char buf[64];
-	struct resource *r;
+	struct resource *gap, _gap;
 	resource_size_t size = resource_size(res);
 	int i;
 
+	gap = flags & FLAG_GAPS ? &_gap : NULL;
+
 	if (addr && !region_overlap_end_inclusive(*addr, *addr, res->start, res->end))
 		return;
 
@@ -41,11 +44,14 @@ static void __print_resources(struct resource *res, int indent,
 	for (i = 0; i < indent; i++)
 		printf("  ");
 
+	name = res->name ?: "";
+
 	if (flags & FLAG_JSON) {
 		printf("{ \"name\": \"%s\", \"start\": \"%pa\", "
-		       "\"end\": \"%pa\", \"reserved\": %s",
-		       res->name, &res->start, &res->end,
-		       is_reserved_resource(res) ? "true" : "false");
+		       "\"end\": \"%pa\", \"reserved\": %s%s",
+		       name, &res->start, &res->end,
+		       is_reserved_resource(res) ? "true" : "false",
+		       region_is_gap(res) ? ", \"free\": true" : "");
 	} else {
 		if (flags & (FLAG_VERBOSE | FLAG_IOPORT)) {
 			snprintf(buf, sizeof(buf), "%pa", &size);
@@ -54,19 +60,24 @@ static void __print_resources(struct resource *res, int indent,
 			size_str = size_human_readable(size);
 		}
 
-		printf("%pa - %pa (size %9s) %s%s\n",
-		       &res->start, &res->end, size_str,
-		       is_reserved_resource(res) ? "[R] " : "",
-		       res->name);
+		printf("%pa - %pa (%s %9s) %s%s\n",
+		       &res->start, &res->end, region_is_gap(res) ? "free" : "size",
+		       size_str, is_reserved_resource(res) ? "[R] " : "", name);
 	}
 
 	if (!list_empty(&res->children)) {
+		struct resource *r = resource_iter_first(res, gap);
+
 		json_puts(", \"children\": [\n", flags);
-		list_for_each_entry(r, &res->children, sibling) {
+
+		while (r) {
 			__print_resources(r, indent + 1, addr, flags);
-			if (r->sibling.next != &res->children)
+
+			r = resource_iter_next(r, gap);
+			if (r)
 				json_puts(",\n", flags);
 		}
+
 		json_puts("]", flags);
 	}
 
@@ -85,7 +96,7 @@ static int do_iomem(int argc, char *argv[])
 	unsigned flags = 0;
 	int opt, ret;
 
-	while((opt = getopt(argc, argv, "vj")) > 0) {
+	while((opt = getopt(argc, argv, "vjg")) > 0) {
 		switch(opt) {
 		case 'v':
 			flags |= FLAG_VERBOSE;
@@ -93,6 +104,9 @@ static int do_iomem(int argc, char *argv[])
 		case 'j':
 			flags |= FLAG_JSON;
 			break;
+		case 'g':
+			flags |= FLAG_GAPS;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -124,12 +138,13 @@ BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-v",  "verbose output")
 BAREBOX_CMD_HELP_OPT ("-j",  "JSON output")
+BAREBOX_CMD_HELP_OPT ("-g",  "include gaps")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(iomem)
 	.cmd		= do_iomem,
 	BAREBOX_CMD_DESC("show IO memory usage")
-	BAREBOX_CMD_OPTS("[-vj] [ADDRESS]")
+	BAREBOX_CMD_OPTS("[-vjg] [ADDRESS]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_iomem_help)
 BAREBOX_CMD_END
-- 
2.47.3



