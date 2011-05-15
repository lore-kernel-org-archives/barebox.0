Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QLh5K-0000HG-B4
	for barebox@lists.infradead.org; Sun, 15 May 2011 19:34:39 +0000
Received: by wyb28 with SMTP id 28so3786463wyb.36
	for <barebox@lists.infradead.org>; Sun, 15 May 2011 12:34:37 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Sun, 15 May 2011 21:34:29 +0200
Message-Id: <1305488072-1765-3-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1305488072-1765-1-git-send-email-franck.jullien@gmail.com>
References: <1305488072-1765-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 2/5] [Nios2]: Fix typo in generic.c
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

The device init function has the name of one of my board (comBoard).
This patch fix the name of the function to generic_device_init.

Signed-off-by: Franck JULLIEN <franck.jullien@gmail.com>
---
 arch/nios2/boards/generic/generic.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
index 7e939ce..4f7e747 100644
--- a/arch/nios2/boards/generic/generic.c
+++ b/arch/nios2/boards/generic/generic.c
@@ -48,7 +48,7 @@ static struct device_d epcs_flash_device = {
 };
 */
 
-static int comBoard_devices_init(void)
+static int generic_devices_init(void)
 {
 	register_device(&cfi_dev);
 	register_device(&ram_dev);
@@ -63,7 +63,7 @@ static int comBoard_devices_init(void)
 	return 0;
 }
 
-device_initcall(comBoard_devices_init);
+device_initcall(generic_devices_init);
 
 
 static int altera_console_init(void)
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
