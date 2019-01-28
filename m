Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1go2WS-0006p0-2o
 for barebox@lists.infradead.org; Mon, 28 Jan 2019 08:44:05 +0000
Date: Mon, 28 Jan 2019 09:44:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190128084401.wtotdfiyr5oi2wjp@pengutronix.de>
References: <20190121151232.djbrymvdolvpva3z@pengutronix.de>
 <20190121163503.GA2854@ravnborg.org>
 <20190122063306.yvfd6p2b52ofw2ab@pengutronix.de>
 <33796811548166043@iva7-4f557d6b60d4.qloud-c.yandex.net>
 <20190122144240.t7bknlqpipjpzeda@pengutronix.de>
 <12201721548173536@iva5-750e13568e4d.qloud-c.yandex.net>
 <20190123091134.2ibecc3f2sxgr6gc@pengutronix.de>
 <39543571548237706@iva8-6be7d23653d9.qloud-c.yandex.net>
 <20190123101735.faeyxjmmfxogvwqt@pengutronix.de>
 <8696391548418684@myt4-929fb874f3f2.qloud-c.yandex.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8696391548418684@myt4-929fb874f3f2.qloud-c.yandex.net>
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
Subject: Re: [HELP] Barebox porting
To: Seraphim Dolbilov <s.dlblv@ya.ru>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Jan 25, 2019 at 03:18:04PM +0300, Seraphim Dolbilov wrote:
> Hello Sascha,
> 
> 23.01.2019, 13:17, "Sascha Hauer" <s.hauer@pengutronix.de>:
> > How is the integrity checked? Some md5sum or something? Anyway, you're
> > better off doing that in C.
> 
> Well, how can I call C functions from shell without implementing own shell command?

Well you can't, but maybe I misunderstand you.

What I tried to express is that whenever you implement something complex
in barebox shell, you are better off going a step back, look what you
are trying to archieve and implement that in C.
Doing correct error handling in a limited shell is hard and printing
useful error messages even harder.

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
