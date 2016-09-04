Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x242.google.com ([2607:f8b0:400e:c03::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bgh1q-0007ZW-BT
 for barebox@lists.infradead.org; Sun, 04 Sep 2016 23:40:47 +0000
Received: by mail-pa0-x242.google.com with SMTP id vy10so8400565pac.0
 for <barebox@lists.infradead.org>; Sun, 04 Sep 2016 16:40:25 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  4 Sep 2016 16:40:02 -0700
Message-Id: <1473032402-23789-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] i.MX: scripts: Fix a bug in imx-image
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

In order to clear a bitmask, "Set" bit has to be '0' and "Mask" bit
'1'. Since "Set" is bit 4 and "Mask" is bit 3 this leaves us with a
overal or-mask of 1 << 3. Orginal code was doing the inverse and setting
bit #4 to '1' bit #3 to '0'.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 scripts/imx/imx-image.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 3f62228..10aa4c1 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -380,7 +380,7 @@ static int write_mem_v2(uint32_t addr, uint32_t val, int width, int set_bits, in
 	if (set_bits)
 		cmd |= 3 << 3;
 	if (clear_bits)
-		cmd |= 2 << 3;
+		cmd |= 1 << 3;
 
 	if (curdcd > MAX_DCD - 3) {
 		fprintf(stderr, "At maximum %d dcd entried are allowed\n", MAX_DCD);
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
