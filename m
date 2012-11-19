Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaRnO-00061a-MH
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 13:53:55 +0000
Received: from cpebcc8100fb8db-cmbcc8100fb8d8.cpe.net.cable.rogers.com
 ([174.116.196.46]:58327 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
 id 1TaRnL-0002GC-Ps
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 08:53:51 -0500
Date: Mon, 19 Nov 2012 08:53:45 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1211190847250.11705@oneiric>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RFC: first patch for getting arch-specific stuff out of
 asm-generic/barebox.lds.h
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  looking for comments on this patch as simply the *first* tweak to
start cleaning arch-specific content out of that barebox.lds.h.
here's the incredibly simple change to handle just x86:

===== start =====

diff --git a/arch/x86/lib/barebox.lds.S b/arch/x86/lib/barebox.lds.S
index 8bd2a7b..500fa91 100644
--- a/arch/x86/lib/barebox.lds.S
+++ b/arch/x86/lib/barebox.lds.S
@@ -16,6 +16,7 @@
  */

 #undef i386
+#include <mach/barebox.lds.h>
 #include <asm-generic/barebox.lds.h>

 OUTPUT_FORMAT("elf32-i386", "elf32-i386", "elf32-i386")
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index b2bd19e..6e09de1 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -4,7 +4,6 @@
 	defined CONFIG_ARCH_IMX51 || \
 	defined CONFIG_ARCH_IMX53 || \
 	defined CONFIG_ARCH_IMX6 || \
-	defined CONFIG_X86 || \
 	defined CONFIG_ARCH_EP93XX
 #include <mach/barebox.lds.h>
 #endif

===== end =====

  of all the tests in the asm-generic file, the x86-related test is
unique in that it would end up including nothing but macro
definitions, so all the above does is remove that check from the
asm-generic file and explicitly put it into the x86 file -- it
*appears* that this has the same effect, and i tested it by building a
regular sandbox, which worked fine.  (does that represent a reasonable
test?)

  there's more that can be done, but the above at least gets rid of
one silly test in asm-generic/barebox.lds.h that doesn't need to be
there.

  thoughts?  if it looks reasonable, i can submit it as an official
patch.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
