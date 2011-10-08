Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
	helo=mo2.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RCYHe-0001UZ-Gj
	for barebox@lists.infradead.org; Sat, 08 Oct 2011 14:53:52 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id 1FB78DD2D83
	for <barebox@lists.infradead.org>;
	Sat,  8 Oct 2011 16:55:40 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  8 Oct 2011 16:29:51 +0200
Message-Id: <1318084193-2648-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20111008141722.GG10459@game.jcrosoft.org>
References: <20111008141722.GG10459@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/5] bootm: add -L option to specify the initrd load address
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/bootm.c |   20 +++++++++++++++++---
 1 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index afb9e06..f11138a 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -191,7 +191,18 @@ static struct image_handle *get_fake_image_handle(struct image_data *data, int n
 static int initrd_handler_parse_options(struct image_data *data, int opt,
 		char *optarg)
 {
+	uint32_t initrd_start;
+
 	switch(opt) {
+	case 'L':
+		if (!data->initrd) {
+			eprintf("Warning -L ingnored. Specify the initrd first\n");
+			break;
+		}
+		initrd_start = simple_strtoul(optarg, NULL, 0);
+		printf("initrd_start=0x%x\n", initrd_start);
+		data->initrd->header.ih_load = cpu_to_uimage(initrd_start);
+		break;
 	case 'r':
 		printf("use initrd %s\n", optarg);
 		/* check for multi image @<num> */
@@ -204,16 +215,19 @@ static int initrd_handler_parse_options(struct image_data *data, int opt,
 		}
 		if (!data->initrd)
 			return -1;
-		return 0;
+		break;
 	default:
 		return 1;
 	}
+
+	return 0;
 }
 
 static struct image_handler initrd_handler = {
-	.cmdline_options = "r:",
+	.cmdline_options = "r:L:",
 	.cmdline_parse = initrd_handler_parse_options,
-	.help_string = " -r <initrd>    specify an initrd image",
+	.help_string = " -r <initrd>    specify an initrd image\n"
+		       " -L <load addr> specify initrd load address",
 };
 
 static int initrd_register_image_handler(void)
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
