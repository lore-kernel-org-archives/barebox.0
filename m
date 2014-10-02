Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XZjRx-0003ok-4a
 for barebox@lists.infradead.org; Thu, 02 Oct 2014 16:41:53 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Thu,  2 Oct 2014 18:40:44 +0200
Message-Id: <1412268044-1360-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH] commands: select FILE_LIST for usbgadget
To: barebox@lists.infradead.org

Otherwhise we get this error message:

commands/built-in.o: In function `do_usbgadget':
barebox-2014.10.0/commands/usbgadget.c:77: undefined reference to `file_list_parse'

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index 3a49baf..aafa80f 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1851,6 +1851,7 @@ config CMD_USB
 config CMD_USBGADGET
 	bool
 	depends on USB_GADGET
+	select FILE_LIST
 	prompt "usbgadget"
 
 config CMD_WD
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
