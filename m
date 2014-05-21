Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WnCQU-0002aK-0r
 for barebox@lists.infradead.org; Wed, 21 May 2014 19:43:46 +0000
Received: by mail-wi0-f180.google.com with SMTP id hi2so3305665wib.7
 for <barebox@lists.infradead.org>; Wed, 21 May 2014 12:43:20 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Wed, 21 May 2014 21:43:16 +0200
Message-Id: <1400701396-6018-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH] devinfo: add human readable size after memory range
To: barebox@lists.infradead.org

It's not always easy to know what is the size of a parition.

This patch adds the size of a memory range in human readable
format. We now have for example:

`---- cfi_flash0
     `---- nor0
          `---- 0x00000000-0x00ffffff (    16 MiB): /dev/nor0
          `---- 0x00000000-0x0001ffff (   128 KiB): /dev/env0
          `---- 0x00020000-0x0011ffff (     1 MiB): /dev/fpga0
          `---- 0x00120000-0x0019ffff (   512 KiB): /dev/self0
          `---- 0x001a0000-0x00d9ffff (    12 MiB): /dev/linux
          `---- 0x00da0000-0x00ffffff (   2.4 MiB): /dev/elf

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 commands/devinfo.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index 806e45c..75bc9d4 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -33,9 +33,10 @@ static int do_devinfo_subtree(struct device_d *dev, int depth)
 		list_for_each_entry(cdev, &dev->cdevs, devices_list) {
 			for (i = 0; i < depth + 1; i++)
 				printf("     ");
-			printf("`---- 0x%08llx-0x%08llx: /dev/%s\n",
+			printf("`---- 0x%08llx-0x%08llx (%10s): /dev/%s\n",
 					cdev->offset,
 					cdev->offset + cdev->size - 1,
+					size_human_readable(cdev->size),
 					cdev->name);
 		}
 	} else {
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
