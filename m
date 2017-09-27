Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxB9j-0004GJ-5L
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 12:09:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Sep 2017 14:09:07 +0200
Message-Id: <20170927120910.10516-10-s.hauer@pengutronix.de>
In-Reply-To: <20170927120910.10516-1-s.hauer@pengutronix.de>
References: <20170927120910.10516-1-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/12] usbgadget command: catch errors when parsing the file
 list
To: Barebox List <barebox@lists.infradead.org>

file_list_parse() can fail. Print an error message in this case instead
of crashing.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/usbgadget.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/commands/usbgadget.c b/commands/usbgadget.c
index ba09f97847..59359098ad 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -83,10 +83,14 @@ static int do_usbgadget(int argc, char *argv[])
 
 	if (fastboot_opts) {
 		opts->fastboot_opts.files = file_list_parse(fastboot_opts);
+		if (IS_ERR(opts->fastboot_opts.files))
+			goto err_parse;
 	}
 
 	if (dfu_opts) {
 		opts->dfu_opts.files = file_list_parse(dfu_opts);
+		if (IS_ERR(opts->dfu_opts.files))
+			goto err_parse;
 	}
 
 	if (create_serial) {
@@ -98,6 +102,13 @@ static int do_usbgadget(int argc, char *argv[])
 		usb_multi_opts_release(opts);
 
 	return ret;
+
+err_parse:
+	printf("Cannot parse file list \"%s\": %s\n", fastboot_opts, strerrorp(opts->fastboot_opts.files));
+
+	free(opts);
+
+	return 1;
 }
 
 BAREBOX_CMD_HELP_START(usbgadget)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
