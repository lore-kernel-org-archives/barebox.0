Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cj5De-0000xT-LP
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 14:27:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cj5DF-0004KM-PE
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 15:26:41 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  1 Mar 2017 15:26:39 +0100
Message-Id: <20170301142641.6596-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: align exception vectors to 32 byte
To: barebox@lists.infradead.org

On ARMv7 the exception vectors inside the barebox binary are used directly
by remapping the vectors base through the VBAR register. While VBAR allows
to remap the exception vectors freely, it still imposes a minimum alignment
of 32 byte, as the lower bits are treated as the exception vector offset.
Enforce this alignment inside the barebox binary.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/lib32/barebox.lds.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index b49c269a4346..e7b87b7cdd18 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -45,7 +45,7 @@ SECTIONS
 		__bare_init_start = .;
 		*(.text_bare_init*)
 		__bare_init_end = .;
-		. = ALIGN(4);
+		. = ALIGN(0x20);
 		__exceptions_start = .;
 		KEEP(*(.text_exceptions*))
 		__exceptions_stop = .;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
