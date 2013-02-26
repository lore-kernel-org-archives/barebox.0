Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1UANof-0003UU-CL
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 16:55:45 +0000
Received: from localhost (col31-4-88-188-83-94.fbx.proxad.net [88.188.83.94])
 by mail.free-electrons.com (Postfix) with ESMTPSA id 6BB82813
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2013 17:55:45 +0100 (CET)
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Date: Tue, 26 Feb 2013 17:55:41 +0100
Message-Id: <1361897742-3454-2-git-send-email-maxime.ripard@free-electrons.com>
In-Reply-To: <1361897742-3454-1-git-send-email-maxime.ripard@free-electrons.com>
References: <1361897742-3454-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: [PATCH 1/2] memsize: Make get_ram_size RAM proof
To: barebox@lists.infradead.org

get_ram_size cannot be used when running from RAM at the moment, even
though it backs up the memory cells it modifies, since it can also
modify the get_ram_size function itself.

Avoid testing the memory area where barebox is loaded at to prevent this
problem. If the memory supposed to host barebox is not working, we'll
have plenty of other problems anyway.

Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
---
 common/memsize.c |   21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/common/memsize.c b/common/memsize.c
index d149e41..1d00984 100644
--- a/common/memsize.c
+++ b/common/memsize.c
@@ -19,6 +19,9 @@
 
 #include <common.h>
 #include <config.h>
+
+#include <asm-generic/sections.h>
+
 #if defined (__PPC__) && !defined (__SANDBOX__)
 /*
  * At least on G2 PowerPC cores, sequential accesses to non-existent
@@ -45,6 +48,15 @@ long get_ram_size(volatile long *base, long maxsize)
 
 	for (cnt = (maxsize / sizeof (long)) >> 1; cnt > 0; cnt >>= 1) {
 		addr = base + cnt;	/* pointer arith! */
+
+		/*
+		 * If we run get_ram_size from RAM, avoid poking into
+		 * the Barebox code, and if the RAM at these address
+		 * doesn't work, we will have trouble anyway...
+		 */
+		if (addr > (long*)_text && addr < (long*)__bss_stop)
+			continue;
+
 		sync ();
 		save[i++] = *addr;
 		sync ();
@@ -65,6 +77,9 @@ long get_ram_size(volatile long *base, long maxsize)
 		*addr = save[i];
 		for (cnt = 1; cnt < maxsize / sizeof(long); cnt <<= 1) {
 			addr  = base + cnt;
+			if (addr > (long*)_text && addr < (long*)__bss_stop)
+				continue;
+
 			sync ();
 			*addr = save[--i];
 		}
@@ -73,6 +88,9 @@ long get_ram_size(volatile long *base, long maxsize)
 
 	for (cnt = 1; cnt < maxsize / sizeof (long); cnt <<= 1) {
 		addr = base + cnt;	/* pointer arith! */
+		if (addr > (long*)_text && addr < (long*)__bss_stop)
+			continue;
+
 		val = *addr;
 		*addr = save[--i];
 		if (val != ~cnt) {
@@ -81,6 +99,9 @@ long get_ram_size(volatile long *base, long maxsize)
 			 */
 			for (cnt <<= 1; cnt < maxsize / sizeof (long); cnt <<= 1) {
 				addr  = base + cnt;
+				if (addr > (long*)_text && addr < (long*)__bss_stop)
+					continue;
+
 				*addr = save[--i];
 			}
 			return (size);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
