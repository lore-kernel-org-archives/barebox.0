Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c9SKZ-0007hK-A4
 for barebox@lists.infradead.org; Wed, 23 Nov 2016 07:51:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Nov 2016 08:50:32 +0100
Message-Id: <20161123075034.21606-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] input: Fix compiler warning
To: Barebox List <barebox@lists.infradead.org>

Fixes:

drivers/input/input.c:46:17: warning: passing argument 2 of '__set_bit' from incompatible pointer type [-Wincompatible-pointer-types]

idev->keys is an array, so we don't need to take the address of it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/input.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/input/input.c b/drivers/input/input.c
index 31a9c22..14e44d1 100644
--- a/drivers/input/input.c
+++ b/drivers/input/input.c
@@ -43,9 +43,9 @@ void input_report_key_event(struct input_device *idev, unsigned int code, int va
 		return;
 
 	if (value)
-		set_bit(code, &idev->keys);
+		set_bit(code, idev->keys);
 	else
-		clear_bit(code, &idev->keys);
+		clear_bit(code, idev->keys);
 
 	event.code = code;
 	event.value = value;
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
