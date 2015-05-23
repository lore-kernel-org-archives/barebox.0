Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YwGPm-00018p-5l
 for barebox@lists.infradead.org; Sat, 23 May 2015 20:53:06 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Sat, 23 May 2015 22:52:20 +0200
Message-Id: <1432414340-6271-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1432414340-6271-1-git-send-email-mkl@pengutronix.de>
References: <1432414340-6271-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/2] commands/Kconfig: fix typo in CMD_BOOTM_OFTREE help
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 commands/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 847ff76d1d8b..25c77a85c5dc 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -385,7 +385,7 @@ config CMD_BOOTM_OFTREE
 	  Add support to pass a device tree (a.k.a Open Firmware Tree, oftree). Adds
 	  this command line option:
 
-	  -o DTS  specify device tre
+	  -o DTS  specify device tree
 
 config CMD_BOOTM_OFTREE_UIMAGE
 	bool
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
