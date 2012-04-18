Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SKQte-00008m-I3
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 09:09:59 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 18 Apr 2012 11:09:19 +0200
Message-Id: <1334740160-19918-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1334740160-19918-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1334740160-19918-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/2] bootm: Fix check for ret-value
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The intention of this code was to check the return value of fdt_open_into. Fix
this.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 commands/bootm.c |    7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 1e1dc52..4f4cbb3 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -202,10 +202,9 @@ static int bootm_open_oftree(struct image_data *data, char *oftree, int num)
 	}
 
 	fdt = xrealloc(fdt, size + 0x8000);
-	fdt_open_into(fdt, fdt, size + 0x8000);
-
-	if (!fdt) {
-		printf("unable to read %s\n", oftree);
+	ret = fdt_open_into(fdt, fdt, size + 0x8000);
+	if (ret) {
+		printf("unable to parse %s\n", oftree);
 		return -ENODEV;
 	}
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
