Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YCy6T-0007fL-QF
 for barebox@lists.infradead.org; Sun, 18 Jan 2015 22:13:54 +0000
Received: by mail-lb0-f174.google.com with SMTP id 10so25369512lbg.5
 for <barebox@lists.infradead.org>; Sun, 18 Jan 2015 14:13:29 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 19 Jan 2015 02:15:49 +0400
Message-Id: <1421619349-22362-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] fixup! raspberry-pi: add board model detection
To: barebox@lists.infradead.org

---

The 'has_onboard_eth' field is unused.

---
 arch/arm/boards/raspberry-pi/rpi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspberry-pi/rpi.c
index 81b485e..108bd28 100644
--- a/arch/arm/boards/raspberry-pi/rpi.c
+++ b/arch/arm/boards/raspberry-pi/rpi.c
@@ -140,7 +140,6 @@ static void rpi_b_init(void)
 /* See comments in mbox.h for data source */
 static const struct {
 	const char *name;
-	bool has_onboard_eth;
 	void (*init)(void);
 } models[] = {
 	RPI_MODEL(0, "Unknown model", NULL),
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
