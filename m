Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZCzs-0005ZR-SD
 for barebox@lists.infradead.org; Tue, 18 Dec 2018 10:53:10 +0000
Date: Tue, 18 Dec 2018 11:52:54 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20181218105254.jsaewf5glubqh4wt@pengutronix.de>
References: <20181215100235.22494-1-linux@rempel-privat.de>
 <20181218103257.4c4ae9f5651bafc774e9230a@gmail.com>
 <e9ce6255-0da2-f244-16b5-46e9d251b216@pengutronix.de>
 <20181218123250.5a76fa37a9ceba65dd68fff9@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181218123250.5a76fa37a9ceba65dd68fff9@gmail.com>
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
Subject: Re: [PATCH v1 1/3] MIPS: migrate all files to SPDX
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Oleksij Rempel <linux@rempel-privat.de>, barebox@lists.infradead.org

On Tue, Dec 18, 2018 at 12:32:50PM +0300, Antony Pavlov wrote:
> > Beside, go you agree to upgrade files copyrighted by you as 
> > GPL-2.0-or-later?
> 
> Not now. We use many codes from linux kernel (mostly GPL-2.0-only).
> Can we face the problems of porting linux kernel code to barebox?
> 
> I see strange thing: most barebox files are GPL-2.0-only,
> but asm/bitopts.h changed GPL-2.0-only to GPL-2.0-or-later after the commit
> 
> commit 227a20fe31c6a03795a202f95af95fb371951963
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Wed Jul 16 09:40:30 2014 +0200
> 
>     consistently use the same bitops.h file
> 
> @Sascha Please comment on GPL-2.0-only vs GPL-2.0-or-later in barebox.

Barebox has preferred GPL-2.0-only starting from day-1, see toplevel
COPYING. As GPL-2.0-or-later is compatible with that, it is ok to
include or-later code into an otherwhise-2.0-only codebase.

rsc
-- 
Pengutronix e.K.                           | Dipl.-Ing. Robert Schwebel  |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
