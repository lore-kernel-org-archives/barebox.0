Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z7Ht6-0004iX-Q4
 for barebox@lists.infradead.org; Tue, 23 Jun 2015 06:40:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jun 2015 08:40:29 +0200
Message-Id: <1435041629-16082-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] devinfo: fix return value
To: Barebox List <barebox@lists.infradead.org>

devinfo on a non existing device prints:

no such device: blah
devinfo: Operation not permitted

The second message comes because devinfo returns -1 which is -EPERM.

Just return -ENODEV which will print:

devinfo: No such device

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/devinfo.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index e61aaa2..3c9d6a6 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -68,11 +68,8 @@ static int do_devinfo(int argc, char *argv[])
 		}
 	} else {
 		dev = get_device_by_name(argv[1]);
-
-		if (!dev) {
-			printf("no such device: %s\n",argv[1]);
-			return -1;
-		}
+		if (!dev)
+			return -ENODEV;
 
 		if (dev->num_resources)
 			printf("Resources:\n");
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
