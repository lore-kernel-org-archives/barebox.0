Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ecB2d-0006cU-3M
 for barebox@lists.infradead.org; Thu, 18 Jan 2018 14:19:45 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu, 18 Jan 2018 15:19:30 +0100
Message-Id: <20180118141930.28780-1-p.zabel@pengutronix.de>
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
Subject: [PATCH] blspec: fix crash when trying to boot from loop mounts
To: barebox@lists.infradead.org

When trying to boot from a loop mount path, the blspec code passes a
NULL pointer to dev_name, because cdev->dev is not set for loop mounts:

  unable to handle NULL pointer dereference at address 0x00000020
  pc : [<4fe09e28>]    lr : [<4fe02305>]
  sp : 4ffef7c0  ip : 31b75c78  fp : 31b6a388
  r10: 31b6a368  r9 : 315a4cac  r8 : 00000001
  r7 : 00000001  r6 : 311b8540  r5 : ffffffea  r4 : 31b6a3f8
  r3 : 00000000  r2 : 10000000  r1 : 00000001  r0 : 00000000
  Flags: nzcv  IRQs off  FIQs off  Mode SVC_32
  [<4fe09e28>] (dev_id+0xc/0x38) from [<4fe02305>] (blspec_scan_directory+0x3e1/0x484)
  [<4fe02305>] (blspec_scan_directory+0x3e1/0x484) from [<4fe02551>] (blspec_bootentry_provider+0x1d/0x3c)
  [<4fe02551>] (blspec_bootentry_provider+0x1d/0x3c) from [<4fe0984b>] (bootentry_create_from_name+0x23/0xdc)
  [<4fe0984b>] (bootentry_create_from_name+0x23/0xdc) from [<4fe246f9>] (do_boot+0x95/0x160)
  [<4fe246f9>] (do_boot+0x95/0x160) from [<4fe032e9>] (execute_command+0x21/0x48)
  [<4fe032e9>] (execute_command+0x21/0x48) from [<4fe088e3>] (run_list_real+0x56b/0x634)
  [<4fe088e3>] (run_list_real+0x56b/0x634) from [<4fe08249>] (parse_stream_outer+0xd9/0x164)
  [<4fe08249>] (parse_stream_outer+0xd9/0x164) from [<4fe08b6d>] (run_shell+0x31/0x60)
  [<4fe08b6d>] (run_shell+0x31/0x60) from [<4fe032e9>] (execute_command+0x21/0x48)
  [<4fe032e9>] (execute_command+0x21/0x48) from [<4fe088e3>] (run_list_real+0x56b/0x634)
  [<4fe088e3>] (run_list_real+0x56b/0x634) from [<4fe085fd>] (run_list_real+0x285/0x634)
  [<4fe444b9>] (unwind_backtrace+0x1/0x58) from [<4fe00b7d>] (panic+0x1d/0x34)
  [<4fe00b7d>] (panic+0x1d/0x34) from [<4fe42a75>] (do_exception+0xd/0x10)
  [<4fe42a75>] (do_exception+0xd/0x10) from [<4fe42ad5>] (do_data_abort+0x21/0x2c)
  [<4fe42ad5>] (do_data_abort+0x21/0x2c) from [<4fe42394>] (do_abort_6+0x48/0x54)

Fix this by checking cdev->dev as well as cdev before calling dev_name.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 common/blspec.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index b258e6600b..6171461a72 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -107,7 +107,8 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	}
 
 	pr_info("booting %s from %s\n", blspec_entry_var_get(entry, "title"),
-			entry->cdev ? dev_name(entry->cdev->dev) : "none");
+			(entry->cdev && entry->cdev->dev) ?
+			dev_name(entry->cdev->dev) : "none");
 
 	ret = bootm_boot(&data);
 	if (ret)
@@ -505,7 +506,7 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
 
 		found++;
 
-		if (entry->cdev) {
+		if (entry->cdev && entry->cdev->dev) {
 			devname = xstrdup(dev_name(entry->cdev->dev));
 			if (entry->cdev->dev->parent)
 				hwdevname = xstrdup(dev_name(entry->cdev->dev->parent));
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
