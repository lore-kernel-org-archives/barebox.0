Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glxGL-0006Jz-88
 for barebox@lists.infradead.org; Tue, 22 Jan 2019 14:42:51 +0000
Date: Tue, 22 Jan 2019 15:42:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190122144240.t7bknlqpipjpzeda@pengutronix.de>
References: <49608661548074089@myt5-f1576e7b5bad.qloud-c.yandex.net>
 <20190121151232.djbrymvdolvpva3z@pengutronix.de>
 <20190121163503.GA2854@ravnborg.org>
 <20190122063306.yvfd6p2b52ofw2ab@pengutronix.de>
 <33796811548166043@iva7-4f557d6b60d4.qloud-c.yandex.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33796811548166043@iva7-4f557d6b60d4.qloud-c.yandex.net>
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
Cc: Barebox List <barebox@lists.infradead.org>, Sam Ravnborg <sam@ravnborg.org>

On Tue, Jan 22, 2019 at 05:07:23PM +0300, Seraphim Dolbilov wrote:
> Hi, Sascha
> 
> 22.01.2019, 09:33, "Sascha Hauer" <s.hauer@pengutronix.de>:
> > This only works when you want to add something to the environment for
> > all boards. When you only want to change the environment for a single
> > board then defaultenv_append_directory() is the right choice.
> 
> Thanks, did so! However, environment is not recompiled on change,
> so I have to do `make clean && make` in order to get the newest one.
> Is it a bug or an expected behaviour?

It's an expected bug ;)

I know this behaviour and it's definitely a bug, but unfortunately I
have no idea how to fix this.

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
