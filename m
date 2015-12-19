Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22b.google.com ([2a00:1450:400c:c09::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aAMLK-0001Jo-89
 for barebox@lists.infradead.org; Sat, 19 Dec 2015 18:35:03 +0000
Received: by mail-wm0-x22b.google.com with SMTP id l126so23418547wml.1
 for <barebox@lists.infradead.org>; Sat, 19 Dec 2015 10:34:37 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sat, 19 Dec 2015 19:34:03 +0100
Message-Id: <1450550044-14674-7-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1450550044-14674-1-git-send-email-alex.aring@gmail.com>
References: <1450550044-14674-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 6/7] rpi: sync revision detection with u-boot
To: barebox@lists.infradead.org
Cc: dthompson@nexusisp.com, carlo.caione@gmail.com

This patch adds parts from u-boot code for doing RPi revision detection
and take care about the "warranty bit". I got this bit on my RPi2.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/arm/boards/raspberry-pi/rpi.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspberry-pi/rpi.c
index f9406d4..faf48a5 100644
--- a/arch/arm/boards/raspberry-pi/rpi.c
+++ b/arch/arm/boards/raspberry-pi/rpi.c
@@ -203,7 +203,22 @@ static void rpi_get_board_rev(void)
 		return;
 	}
 
+	/* Comments from u-boot:
+	 * For details of old-vs-new scheme, see:
+	 * https://github.com/pimoroni/RPi.version/blob/master/RPi/version.py
+	 * http://www.raspberrypi.org/forums/viewtopic.php?f=63&t=99293&p=690282
+	 * (a few posts down)
+	 *
+	 * For the RPi 1, bit 24 is the "warranty bit", so we mask off just the
+	 * lower byte to use as the board rev:
+	 * http://www.raspberrypi.org/forums/viewtopic.php?f=63&t=98367&start=250
+	 * http://www.raspberrypi.org/forums/viewtopic.php?f=31&t=20594
+	 */
 	rpi_board_rev = msg->get_board_rev.body.resp.rev;
+	if (rpi_board_rev & 0x800000)
+		rpi_board_rev = (rpi_board_rev >> 4) & 0xff;
+	else
+		rpi_board_rev &= 0xff;
 	if (rpi_board_rev >= ARRAY_SIZE(models)) {
 		printf("RPI: Board rev %u outside known range\n",
 		       rpi_board_rev);
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
