Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkVrE-0004vA-4U
 for barebox@lists.infradead.org; Fri, 18 Jan 2019 15:14:57 +0000
Date: Fri, 18 Jan 2019 16:14:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190118151450.4g3ijr64cuclsqrd@pengutronix.de>
References: <87941547037637@iva6-19b25c513db4.qloud-c.yandex.net>
 <20190109130341.sxiqrcg43mxuzrai@pengutronix.de>
 <26388451547654386@iva5-0acfc31d2b43.qloud-c.yandex.net>
 <20190117075948.4f6pwllc66k774gj@pengutronix.de>
 <3289771547729062@iva1-5148b5385b62.qloud-c.yandex.net>
 <20190117132845.wkyeunk3b5nze7jv@pengutronix.de>
 <3768381547736522@iva8-8d7a47df0521.qloud-c.yandex.net>
 <20190117162618.GA31768@ravnborg.org>
 <20190117210633.55qy73uxxxyouabj@pengutronix.de>
 <9599781547823688@sas2-7b909973f402.qloud-c.yandex.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9599781547823688@sas2-7b909973f402.qloud-c.yandex.net>
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

Hi Seraphim,

On Fri, Jan 18, 2019 at 06:01:28PM +0300, Seraphim Dolbilov wrote:
> Dear friends, 
> I faced a strange problem with serial ports on my board. I have 4 imx-uart's enabled with DT,
> and barebox console is available on all of them even when:
> - CONFIG_CONSOLE_ACTIVATE_FIRST is set Y,
> - CONFIG_CONSOLE_ACTIVATE_ALL is set N
> - `chosen` section of my DTS contains `stdout-path = &uart1;` string.
> 
> Is it a bug or an expected behaviour?

No, this shouldn't happen.

Note for device tree based boards you should turn off
CONFIG_CONSOLE_ACTIVATE_FIRST as the console will be activated by the
/chosen/stdout-path property. With CONFIG_CONSOLE_ACTIVATE_FIRST
enabled it can happen that the first to be registered console gets
activated by this option and another one from the /chosen/stdout-path
property. Maybe this is your problem already or are really all four
consoles activated?

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
