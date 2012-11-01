Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TU3T9-0006Hk-Ru
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 22:42:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Nov 2012 23:42:32 +0100
Message-Id: <1351809753-28816-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] defenv-2 menu: when booting failed wait for key press
To: barebox@lists.infradead.org

When booting fails we will be immediately be back into the menu,
so the error message can't be seen. Also, boot in verbose mode
since in interactive mode the last bit of performance is not that
necessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv-2/menu/menu/boot-menu-add-entry |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/defaultenv-2/menu/menu/boot-menu-add-entry b/defaultenv-2/menu/menu/boot-menu-add-entry
index 7e1d9c6..f06c524 100644
--- a/defaultenv-2/menu/menu/boot-menu-add-entry
+++ b/defaultenv-2/menu/menu/boot-menu-add-entry
@@ -1,5 +1,5 @@
 #!/bin/sh
 
-menu -e -a -m boot -c "boot $1" -d "Boot: ${GREEN}$2${NC}"
+menu -e -a -m boot -c "boot -v $1; echo; readline \"press enter to continue\" a " -d "Boot: ${GREEN}$2${NC}"
 menu -e -a -m boot_entries_edit -c "$global.editcmd /env/boot/$1" -d "${GREEN}$2${NC}"
 menu -e -a -m boot_entries_remove -c "rm /env/boot/$1" -d "${GREEN}$2${NC}"
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
