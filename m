Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SaeRr-0001O9-EZ
 for barebox@lists.infradead.org; Sat, 02 Jun 2012 02:52:16 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 9D904FF8776
 for <barebox@lists.infradead.org>; Sat,  2 Jun 2012 04:55:31 +0200 (CEST)
Date: Sat, 2 Jun 2012 04:52:22 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120602025222.GO2202@game.jcrosoft.org>
References: <1338542601-28151-1-git-send-email-antonynpavlov@gmail.com>
 <1338542601-28151-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1338542601-28151-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 2/2] MIPS: XBurst: suitable solution for per-board debug_ll
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 13:23 Fri 01 Jun     , Antony Pavlov wrote:
> In the commit 40492a0c1305835c996e15eb1cce2406473ae76d
> (MIPS: add common header file for DEBUG_LL via NS16550)
> introduced common DEBUG_LL via NS16550 for MIPS
> (see file arch/mips/include/debug_ll_ns16550.h).
> 
> In the commit 1cbe2b2c00de0efca503a983d0d008833f186f33
> (MIPS: XBurst: add Ritmix RZX-50 board support)
> the file debug_ll_ns16550.h used in
> the file arch/mips/mach-xburst/include/mach/debug_ll.h.
> 
> Usage looks like this:
> 
> ------------------------------------------------
> +#ifdef CONFIG_BOARD_RZX50
> +#include <mach/debug_ll_jz4755.h>
> +#endif
> +
> +#include <debug_ll_ns16550.h>
> ------------------------------------------------
> 
> So after adding another board (e.g. A320) we will have something like this:
> 
> ------------------------------------------------
>  #ifdef CONFIG_BOARD_RZX50
>  #include <mach/debug_ll_jz4755.h>
>  #endif
> 
I'll include it via config.h or at least have a common hearder name and just
have a single config to enable it and then enable it at board config level

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
