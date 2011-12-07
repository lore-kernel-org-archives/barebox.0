Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYDet-0001no-Mq
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 09:19:24 +0000
Date: Wed, 7 Dec 2011 10:19:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111207091917.GO27267@pengutronix.de>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
 <1322467340-10596-8-git-send-email-s.hauer@pengutronix.de>
 <20111206150820.GD32515@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111206150820.GD32515@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 07/14] bootm: handle initrds inline
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Dec 06, 2011 at 04:08:20PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:02 Mon 28 Nov     , Sascha Hauer wrote:
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> > +
> > +				data.initrd = get_fake_image_handle(&data, num);
> this can not work
> 
> get_fake_image_handle expect the uImage is mapped

Yes, you're right.

> 
> attached patch fix it
> 

How about the following instead? I think it's a bit cleaner to
completely move the initrd code out of the option parsing.

Sascha

From 5128a2d2badace6102dc5461408ceaa47d0e9cc1 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 6 Dec 2011 08:44:05 +0100
Subject: [PATCH] bootm: factor out initrd code from option parser

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c |   26 +++++++++++++++-----------
 1 files changed, 15 insertions(+), 11 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 859ec28..f97a842 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -121,6 +121,7 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 	struct image_handle *os_handle = NULL;
 	struct image_handler *handler;
 	struct image_data data;
+	const char *initrdname = NULL;
 	int ret = 1;
 
 	memset(&data, 0, sizeof(struct image_data));
@@ -136,17 +137,7 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 			data.initrd_address = simple_strtoul(optarg, NULL, 0);
 			break;
 		case 'r':
-			printf("use initrd %s\n", optarg);
-			/* check for multi image @<num> */
-			if (optarg[0] == '@') {
-				int num = simple_strtol(optarg + 1, NULL, 0);
-
-				data.initrd = get_fake_image_handle(&data, num);
-			} else {
-				data.initrd = map_image(optarg, data.verify);
-			}
-			if (!data.initrd)
-				goto err_out;
+			initrdname = optarg;
 			break;
 		default:
 			break;
@@ -171,6 +162,19 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 		goto err_out;
 	}
 
+	if (initrdname) {
+		/* check for multi image @<num> */
+		if (initrdname[0] == '@') {
+			int num = simple_strtol(optarg + 1, NULL, 0);
+
+			data.initrd = get_fake_image_handle(&data, num);
+		} else {
+			data.initrd = map_image(optarg, data.verify);
+		}
+		if (!data.initrd)
+			goto err_out;
+	}
+
 	/*
 	 * We have reached the point of no return: we are going to
 	 * overwrite all exception vector code, so we cannot easily
-- 
1.7.7.3


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
