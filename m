Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ta9eA-0001zI-HS
 for barebox@lists.infradead.org; Sun, 18 Nov 2012 18:31:11 +0000
Received: from cpebcc8100fb8db-cmbcc8100fb8d8.cpe.net.cable.rogers.com
 ([174.116.196.46]:60353 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
 id 1Ta9e9-0004AF-TI
 for barebox@lists.infradead.org; Sun, 18 Nov 2012 13:31:09 -0500
Date: Sun, 18 Nov 2012 13:31:06 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <alpine.DEB.2.02.1211181240360.32651@oneiric>
Message-ID: <alpine.DEB.2.02.1211181326250.704@oneiric>
References: <alpine.DEB.2.02.1211181240360.32651@oneiric>
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
Subject: Re: shouldn't asm-generic/barebox.lds.h be arch-independent?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  there is one more oddity(?) with the way the linker "lds" files are
set up.  if i read this correctly (and i could be wrong), here's
arch/x86/lib/barebox.lds.S:

#undef i386
#include <asm-generic/barebox.lds.h>

  which gets us to that included file, which contains:

#if defined CONFIG_ARCH_IMX25 || \
        defined CONFIG_ARCH_IMX35 || \
        defined CONFIG_ARCH_IMX51 || \
        defined CONFIG_ARCH_IMX53 || \
        defined CONFIG_ARCH_IMX6 || \
        defined CONFIG_X86 || \       <-- that will be true, correct?
        defined CONFIG_ARCH_EP93XX
#include <mach/barebox.lds.h>
#endif

  which finally takes us to
arch/x86/mach-i386/include/mach/barebox.lds.h, which is nothing more
than a collection of macro definitions.  there's no "pre-image"
content to be incorporated into the final image -- it's just
preprocessor content.  so why isn't all that simply at the beginning
of the main x86 barebox.lds.S file?

  or am i missing something?

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
