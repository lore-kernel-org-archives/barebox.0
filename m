Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qn1Uv-0001xN-R6
	for barebox@lists.infradead.org; Sat, 30 Jul 2011 04:50:03 +0000
Received: by fxd20 with SMTP id 20so3813521fxd.36
	for <barebox@lists.infradead.org>; Fri, 29 Jul 2011 21:49:58 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 30 Jul 2011 08:49:51 +0400
Message-Id: <1312001391-10143-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] remove unused U-Boot header file include/ioports.h
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/ioports.h |   65 -----------------------------------------------------
 1 files changed, 0 insertions(+), 65 deletions(-)
 delete mode 100644 include/ioports.h

diff --git a/include/ioports.h b/include/ioports.h
deleted file mode 100644
index cfba667..0000000
--- a/include/ioports.h
+++ /dev/null
@@ -1,65 +0,0 @@
-/*
- * definitions for MPC8260 I/O Ports
- *
- * (in addition to those provided in <asm/immap_8260.h>)
- *
- * Murray.Jensen@cmst.csiro.au, 20-Oct-00
- */
-
-/*
- * this structure mirrors the layout of the five port registers in
- * the internal memory map - see iop8260_t in <asm/immap_8260.h>
- */
-typedef struct {
-    unsigned int pdir;		/* Port Data Direction Register (35-3) */
-    unsigned int ppar;		/* Port Pin Assignment Register (35-4) */
-    unsigned int psor;		/* Port Special Options Register (35-5) */
-    unsigned int podr;		/* Port Open Drain Register (35-2) */
-    unsigned int pdat;		/* Port Data Register (35-3) */
-} ioport_t;
-
-/*
- * this macro calculates the address within the internal
- * memory map (im) of the set of registers for a port (idx)
- *
- * the internal memory map aligns the above structure on
- * a 0x20 byte boundary
- */
-#ifdef CONFIG_MPC85xx
-#define ioport_addr(im, idx) (ioport_t *)((uint)&((im)->im_cpm.im_cpm_iop) + ((idx)*0x20))
-#else
-#define ioport_addr(im, idx) (ioport_t *)((uint)&(im)->im_ioport + ((idx)*0x20))
-#endif
-
-/*
- * this structure provides configuration
- * information for one port pin
- */
-typedef struct {
-    unsigned char conf:1;	/* if 1, configure this port */
-    unsigned char ppar:1;	/* Port Pin Assignment Register (35-4) */
-    unsigned char psor:1;	/* Port Special Options Register (35-2) */
-    unsigned char pdir:1;	/* Port Data Direction Register (35-3) */
-    unsigned char podr:1;	/* Port Open Drain Register (35-2) */
-    unsigned char pdat:1;	/* Port Data Register (35-2) */
-} iop_conf_t;
-
-/*
- * a table that contains configuration information for all 32 pins
- * of all four MPC8260 I/O ports.
- *
- * NOTE: in the second dimension of this table, index 0 refers to pin 31
- * and index 31 refers to pin 0. this made the code in the table look more
- * like the table in the 8260UM (and in the hymod manuals).
- */
-extern const iop_conf_t iop_conf_tab[4][32];
-
-typedef struct {
-	unsigned char	port;
-	unsigned char	pin;
-	int		dir;
-	int		open_drain;
-	int		assign;
-} qe_iop_conf_t;
-
-#define QE_IOP_TAB_END	(-1)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
