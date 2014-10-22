Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xgpby-00005L-MB
 for barebox@lists.infradead.org; Wed, 22 Oct 2014 06:41:35 +0000
Date: Wed, 22 Oct 2014 08:41:09 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20141022064109.GH8316@pengutronix.de>
References: <1413909243.628274148@f65.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1413909243.628274148@f65.i.mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: LPC43xx
To: Alexander Shiyan <shc_work@mail.ru>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello,

On Tue, Oct 21, 2014 at 08:34:03PM +0400, Alexander Shiyan wrote:
> We started developing device which uses NXP LPC43xx CPU. I would like to =
add
> support for this CPU series into barebox.
> The problem is that there is no support for this architecture in the Linu=
x kernel,
> and it would upset the current concept (the barebox tree is very similar =
to Linux
> tree and we not have any orphan arch-s).
> What you recommend to do?
The two obvious options are:

 - place support for your CPU where it would be for Linux
 - add support for your CPU to Linux

I'm (obviously) not Sascha, but I guess both would be fine.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
