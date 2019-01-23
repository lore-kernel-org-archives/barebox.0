Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmEZP-0002V4-6o
 for barebox@lists.infradead.org; Wed, 23 Jan 2019 09:11:41 +0000
Date: Wed, 23 Jan 2019 10:11:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190123091134.2ibecc3f2sxgr6gc@pengutronix.de>
References: <49608661548074089@myt5-f1576e7b5bad.qloud-c.yandex.net>
 <20190121151232.djbrymvdolvpva3z@pengutronix.de>
 <20190121163503.GA2854@ravnborg.org>
 <20190122063306.yvfd6p2b52ofw2ab@pengutronix.de>
 <33796811548166043@iva7-4f557d6b60d4.qloud-c.yandex.net>
 <20190122144240.t7bknlqpipjpzeda@pengutronix.de>
 <12201721548173536@iva5-750e13568e4d.qloud-c.yandex.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <12201721548173536@iva5-750e13568e4d.qloud-c.yandex.net>
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

On Tue, Jan 22, 2019 at 07:12:16PM +0300, Seraphim Dolbilov wrote:
> How can I get an output of a shell command in hush shell?
> Backticks and $() cannot do not work :(

You can't get the output of a command, that's not implemented. Some
commands work around this in the way that you can pass a variable name
on the commandline and after exit the variable will be filled with the
desired result. the "readline" command is an example for this.

What are you trying to archieve? Often the desire to parse the output of
a command is a sign that you are stretching the barebox scripting
capabilities beyond their limits. Some piece of C code is doing the job
in a much more robust way.

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
