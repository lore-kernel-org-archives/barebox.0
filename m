Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTl2c-0000Y5-L8
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 09:29:12 +0000
Date: Fri, 15 Jun 2018 11:28:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180615092857.yrvh4pgs4ccu2pum@pengutronix.de>
References: <20180615041136.23492-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180615041136.23492-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 00/27] Console code consolidation
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Thu, Jun 14, 2018 at 09:11:06PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> While debugging the reason behind print_hex_dump() not producing
> carriage return properly, when used in PBL, I realised that current
> codebase contained:
> 
>  - at least 5 places where '\n' was replaced with '\n\r'
>  - at least 3 almost identical implementations of puts()
>  - at least 3 almost identical implementations of printf()
> 
> so this patcheset is an attempt to consolidate, share and simplify
> console related code.

The console support really deserves some cleanup. We have the LL console
support, PBL console support, regular console support and simple console
support, all mixed into a single codebase so that it's sometimes really
hard to understand what is going on.

Instead of optimizing the different variants for better code sharing I
wonder if we could not consolidate some of the console types to reduce
the number of variants in the code.  PBL console works by calling
pbl_set_putc() to specify a putc function.  PUTC_LL instead works by
putting a PUTC_LL function into a SoC specific header function. Instead
each board could provide its own putc function, say board_putc() or so.
This would be enough to replace the DEBUG_LL and the PBL console
support.

Then I don't like weak functions. It can provide nifty solutions to some
problems, but I think it also often leads to situations where you don't
really know if something has been overwritten or with what is has been
overwritten with. I don't consider replacing ifdefs with weak functions
a general improvment.

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
