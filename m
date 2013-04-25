Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVT5B-0002bp-2J
 for barebox@lists.infradead.org; Thu, 25 Apr 2013 20:47:58 +0000
Date: Thu, 25 Apr 2013 22:47:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130425204750.GJ20989@pengutronix.de>
References: <20130424201127.GG32299@pengutronix.de>
 <1366880959-25765-1-git-send-email-u.bely@sam-solutions.com>
 <1366891124.4158.117.camel@coredoba.hi.pengutronix.de>
 <517924A2.9030300@sam-solutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <517924A2.9030300@sam-solutions.net>
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
Subject: Re: [PATCH] ARM: OMAP5 processors support
To: Uladzimir Bely <u.bely@sam-solutions.net>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Apr 25, 2013 at 03:42:10PM +0300, Uladzimir Bely wrote:
> 
> I'm not too familiar with barebox's defaultenv/defaultenv-2. Our work on
> omap5 was based mostly on omap5 code from U-Boot and omap4 code from barebox.
> Mostly, I used pcm049 as an example of omap4-based board in barebox. So
> arch/arm/boards/omap5_sevm/env/config looks like this one, but includes
> only most necessary thinks to load to barebox prompt.
> 
> Please, give me a hint, which board can be used as an example of using
> defaultenv-2, maybe I'll do something.
>

See for example the i.MX53 loco (aka qsb) board:

arch/arm/boards/freescale-mx53-loco/env/

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
