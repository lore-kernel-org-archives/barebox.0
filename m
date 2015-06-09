Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z2Cuo-0004ri-FY
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 06:21:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jun 2015 08:21:07 +0200
Message-Id: <1433830875-31119-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1433830875-31119-1-git-send-email-s.hauer@pengutronix.de>
References: <1433830875-31119-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/12] console: When switching baudrate print console name
To: Barebox List <barebox@lists.infradead.org>

Since there may be multiple consoles print the name of the console
whose baudrate shall be switched.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/console.c b/common/console.c
index 957f539..8585cd6 100644
--- a/common/console.c
+++ b/common/console.c
@@ -154,8 +154,8 @@ int console_set_baudrate(struct console_device *cdev, unsigned baudrate)
 	 * The baudrate of an inactive device will be set at activation time.
 	 */
 	if (cdev->f_active) {
-		printf("## Switch baudrate to %d bps and press ENTER ...\n",
-			baudrate);
+		printf("## Switch baudrate on console %s to %d bps and press ENTER ...\n",
+			dev_name(&cdev->class_dev), baudrate);
 		mdelay(50);
 	}
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
