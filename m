Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay01.ispgateway.de ([80.67.31.39])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkuaG-0005em-1u
 for barebox@lists.infradead.org; Thu, 15 May 2014 12:16:25 +0000
From: Markus Niebel <list-09_barebox@tqsc.de>
Date: Thu, 15 May 2014 14:26:44 +0200
Message-Id: <1400156804-10073-1-git-send-email-list-09_barebox@tqsc.de>
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
Subject: [PATCH] barebox: select host-lzop
To: barebox@lists.infradead.org
Cc: Markus Niebel <Markus.Niebel@tq-group.com>

From: Markus Niebel <Markus.Niebel@tq-group.com>

    creation of barebox.z requires lzop. As this may be not installed,
    let's handle this inside of our build logic.

Signed-off-by: Markus Niebel <Markus.Niebel@tq-group.com>
---
 platforms/barebox.in |    1 +
 1 file changed, 1 insertion(+)

diff --git a/platforms/barebox.in b/platforms/barebox.in
index 6e65f83..6f66d1f 100644
--- a/platforms/barebox.in
+++ b/platforms/barebox.in
@@ -10,6 +10,7 @@ config BAREBOX_ARCH_STRING
 menuconfig BAREBOX
 	select BOOTLOADER
 	select HOST_LIBUSB if BAREBOX_NEEDS_HOST_LIBUSB
+	select HOST_LZOP
 	prompt "barebox                       "
 	bool
 	help
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
