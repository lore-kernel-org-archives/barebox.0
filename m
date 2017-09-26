Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dwkE2-0006Sx-Ob
 for barebox@lists.infradead.org; Tue, 26 Sep 2017 07:24:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Sep 2017 09:23:51 +0200
Message-Id: <20170926072351.23040-2-s.hauer@pengutronix.de>
In-Reply-To: <20170926072351.23040-1-s.hauer@pengutronix.de>
References: <20170926072351.23040-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] scripts: imx imx-usb-loader: Fix last transfer error
 message
To: Barebox List <barebox@lists.infradead.org>

When doing memory read transfers there will always be 64 bytes
transferred, even when less bytes are requested. This is expected
and there is a test skipping the error message in this case. The
test is wrong though since cnt is not decremented and will never
be equal to rem. Fix the test so that verifying memory does
not give a bogus error message.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 499e8c8ec6..6052343e00 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -635,7 +635,7 @@ static int read_memory(unsigned addr, void *dest, unsigned cnt)
 			break;
 		}
 		if ((last_trans > rem) || (last_trans > 64)) {
-			if ((last_trans == 64) && (cnt == rem)) {
+			if ((last_trans == 64) && (rem < 64)) {
 				/* Last transfer is expected to be too large for HID */
 			} else {
 				printf("err: %02x %02x %02x %02x cnt=%u rem=%d last_trans=%i\n",
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
