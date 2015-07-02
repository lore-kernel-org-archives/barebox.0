Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAYGl-0006Hy-3F
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 06:46:47 +0000
Date: Thu, 2 Jul 2015 08:46:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150702064621.GA18700@pengutronix.de>
References: <20150702080733.ba99c058b69ad76948f7e8c4@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150702080733.ba99c058b69ad76948f7e8c4@gmail.com>
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
Subject: Re: should we change 'extern inline' to 'static inline'?
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 02, 2015 at 08:07:33AM +0300, Antony Pavlov wrote:
> Hi!
> 
> It looks like 'extern inline' breaks gcc-5.x build.
> 
> Here is U-Boot patch https://patchwork.ozlabs.org/patch/490178/
> 
> In barebox we have several 'extern inline' functions in arch/blackfin and arch/ppc:
> 
> arch/blackfin/include/asm/io.h
> arch/blackfin/include/asm/processor.h
> arch/ppc/include/asm/atomic.h
> arch/ppc/include/asm/bitops.h
> arch/ppc/include/asm/io.h
> 
> I can't fix it by myself because I have neither blackfin nor ppc cross-compiler to check result.

Thanks for noting. I just created the according patches. My build
checker will detect the failures if there are any.

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
