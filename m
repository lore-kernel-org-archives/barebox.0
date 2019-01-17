Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkEs4-0001D5-Kb
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 21:06:42 +0000
Date: Thu, 17 Jan 2019 22:06:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190117210633.55qy73uxxxyouabj@pengutronix.de>
References: <44943261547037040@iva5-750e13568e4d.qloud-c.yandex.net>
 <87941547037637@iva6-19b25c513db4.qloud-c.yandex.net>
 <20190109130341.sxiqrcg43mxuzrai@pengutronix.de>
 <26388451547654386@iva5-0acfc31d2b43.qloud-c.yandex.net>
 <20190117075948.4f6pwllc66k774gj@pengutronix.de>
 <3289771547729062@iva1-5148b5385b62.qloud-c.yandex.net>
 <20190117132845.wkyeunk3b5nze7jv@pengutronix.de>
 <3768381547736522@iva8-8d7a47df0521.qloud-c.yandex.net>
 <20190117162618.GA31768@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190117162618.GA31768@ravnborg.org>
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
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>, =?utf-8?B?0KHQtdGA0LDRhNC40Lwg0JTQvtC70LHQuNC70L7Qsg==?= <s.dlblv@ya.ru>

On Thu, Jan 17, 2019 at 05:26:18PM +0100, Sam Ravnborg wrote:
> Hi Serapim
> 
> > BTW, am I right to suppose that all functions in `obj-y` marked
> > as `initcall` and `exitcall` are invoked in the beginning and in the
> > end of barebox main code respectively?
> Enabel initcall debug - then you can see when they are called.
> It is a very usefull debug tool.
> Use the .map file to go from an address to a function.

Or enable CONFIG_KALLSYMS, then the name of the function is printed.

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
