Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSz8A-0002OX-BL
 for barebox@lists.infradead.org; Thu, 15 Oct 2020 09:01:07 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Oct 2020 11:00:55 +0200
Message-Id: <20201015090055.31130-2-a.fatoum@pengutronix.de>
In-Reply-To: <20201015090055.31130-1-a.fatoum@pengutronix.de>
References: <20201015090055.31130-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] kbuild: force compiler to assume two's complement
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The kernel is compiled with this option and kernel code we port assumes
that integer types are two's complement, so play it safe and disable
optimizations that are possibly buggy in respect to barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Makefile b/Makefile
index 164f23e872df..ae713b5a665b 100644
--- a/Makefile
+++ b/Makefile
@@ -619,6 +619,9 @@ KBUILD_CFLAGS += $(call cc-disable-warning, trampolines)
 
 KBUILD_CFLAGS += $(call cc-option, -fno-delete-null-pointer-checks,)
 
+# disable invalid "can't wrap" optimizations for signed / pointers
+KBUILD_CFLAGS	+= $(call cc-option,-fno-strict-overflow)
+
 KBUILD_CFLAGS   += $(call cc-disable-warning, address-of-packed-member)
 
 # Align the bit size of userspace programs with the kernel
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
