Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VorwS-0000MT-48
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 09:43:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Dec 2013 10:42:59 +0100
Message-Id: <1386322981-30721-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1386322981-30721-1-git-send-email-s.hauer@pengutronix.de>
References: <1386322981-30721-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: start kernel: find a valid address for the atags
 list automatically
To: barebox@lists.infradead.org

If a board does not specify a place for the atags list default to
SDRAM start + 0x100. The vast majority of boards uses this place
anyway, so the call to armlinux_set_bootparams() can be removed
fo most boards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/armlinux.c | 27 ++++++++++++++++++++-------
 1 file changed, 20 insertions(+), 7 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 75d751b..d83c6a2 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -89,6 +89,24 @@ u64 armlinux_get_serial(void)
 	return armlinux_system_serial;
 }
 
+void armlinux_set_bootparams(void *params)
+{
+	armlinux_bootparams = params;
+}
+
+static struct tag *armlinux_get_bootparams(void)
+{
+	struct memory_bank *mem;
+
+	if (armlinux_bootparams)
+		return armlinux_bootparams;
+
+	for_each_memory_bank(mem)
+		return (void *)mem->start + 0x100;
+
+	BUG();
+}
+
 #ifdef CONFIG_ARM_BOARD_APPEND_ATAG
 static struct tag *(*atag_appender)(struct tag *);
 void armlinux_set_atag_appender(struct tag *(*func)(struct tag *))
@@ -99,7 +117,7 @@ void armlinux_set_atag_appender(struct tag *(*func)(struct tag *))
 
 static void setup_start_tag(void)
 {
-	params = (struct tag *)armlinux_bootparams;
+	params = armlinux_get_bootparams();
 
 	params->hdr.tag = ATAG_CORE;
 	params->hdr.size = tag_size(tag_core);
@@ -235,11 +253,6 @@ static void setup_tags(unsigned long initrd_address,
 
 }
 
-void armlinux_set_bootparams(void *params)
-{
-	armlinux_bootparams = params;
-}
-
 void start_linux(void *adr, int swap, unsigned long initrd_address,
 		unsigned long initrd_size, void *oftree)
 {
@@ -252,7 +265,7 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 		params = oftree;
 	} else {
 		setup_tags(initrd_address, initrd_size, swap);
-		params = armlinux_bootparams;
+		params = armlinux_get_bootparams();
 	}
 	architecture = armlinux_get_architecture();
 
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
