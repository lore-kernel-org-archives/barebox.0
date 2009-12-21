Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMiJ2-0004I8-DO
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 13:28:13 +0000
Date: Mon, 21 Dec 2009 14:27:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20091221132709.GI15126@pengutronix.de>
References: <alpine.LFD.2.00.0912200705560.18199@localhost>
	<20091221093248.GT15126@pengutronix.de>
	<alpine.LFD.2.00.0912210807310.16078@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0912210807310.16078@localhost>
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
Subject: Re: more CONFIG oddities in the current barebox tree
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Dec 21, 2009 at 08:09:11AM -0500, Robert P. J. Day wrote:
> 
>   leftovers from one of my earliest posts ...
> 
> On Mon, 21 Dec 2009, Sascha Hauer wrote:
> 
> > On Sun, Dec 20, 2009 at 07:08:02AM -0500, Robert P. J. Day wrote:
> 
> > > ===== MODVERSIONS =====
> > > ./Makefile:  KBUILD_BUILTIN := $(if $(CONFIG_MODVERSIONS),1)
> > > ./scripts/Makefile:#subdir-$(CONFIG_MODVERSIONS) += genksyms
> 
>   so is barebox actually going to support MODVERSIONS?

I think not. If we ever want to do we can add this back in.

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
