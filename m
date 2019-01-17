Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkAUp-0000on-TL
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 16:26:25 +0000
Date: Thu, 17 Jan 2019 17:26:18 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190117162618.GA31768@ravnborg.org>
References: <44943261547037040@iva5-750e13568e4d.qloud-c.yandex.net>
 <87941547037637@iva6-19b25c513db4.qloud-c.yandex.net>
 <20190109130341.sxiqrcg43mxuzrai@pengutronix.de>
 <26388451547654386@iva5-0acfc31d2b43.qloud-c.yandex.net>
 <20190117075948.4f6pwllc66k774gj@pengutronix.de>
 <3289771547729062@iva1-5148b5385b62.qloud-c.yandex.net>
 <20190117132845.wkyeunk3b5nze7jv@pengutronix.de>
 <3768381547736522@iva8-8d7a47df0521.qloud-c.yandex.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3768381547736522@iva8-8d7a47df0521.qloud-c.yandex.net>
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
To: =?utf-8?B?0KHQtdGA0LDRhNC40Lwg0JTQvtC70LHQuNC70L7Qsg==?= <s.dlblv@ya.ru>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Serapim

> BTW, am I right to suppose that all functions in `obj-y` marked
> as `initcall` and `exitcall` are invoked in the beginning and in the
> end of barebox main code respectively?
Enabel initcall debug - then you can see when they are called.
It is a very usefull debug tool.
Use the .map file to go from an address to a function.


Note: Please try to limit your line length in your mails.
This makes replying simpler.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
