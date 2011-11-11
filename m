Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROpIW-0007Wc-9i
 for barebox@lists.infradead.org; Fri, 11 Nov 2011 11:29:29 +0000
Date: Fri, 11 Nov 2011 12:29:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111111112920.GR16886@pengutronix.de>
References: <1320874797-14270-1-git-send-email-lucas.demarchi@profusion.mobi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1320874797-14270-1-git-send-email-lucas.demarchi@profusion.mobi>
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
Subject: Re: [PATCH 0/4] Fixes for x86
To: Lucas De Marchi <lucas.demarchi@profusion.mobi>
Cc: barebox@lists.infradead.org

On Wed, Nov 09, 2011 at 07:39:53PM -0200, Lucas De Marchi wrote:
> The following patches are fixes for x86 in order to be able to build barebox
> with ARCH=x86 and generic_defconfig. Patch 3 fixes build for any version of gcc
> while the last one is specific to gcc 4.6 (I'm not sure about gcc 4.5).
> 
> With gcc 4.6 there's still an error, but when it's linking barebox, that I
> didn't find out how to fix. I thought the problem was in the linker or linker
> script but they seem to be ok since it works when compiled with gcc 4.4. The
> error is the following:
> 
>   LD      barebox
> ld: section .eh_frame loaded at [0000000000011a54,0000000000018ac3] overlaps section .barebox_initcalls loaded at [0000000000011a54,0000000000011a9b]
> make: *** [barebox] Error 1

Applied patches 2-4. For 1 I prefer the solution just posted.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
