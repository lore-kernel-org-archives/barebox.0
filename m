Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OfttG-0005mH-O2
	for barebox@lists.infradead.org; Mon, 02 Aug 2010 12:13:12 +0000
Date: Mon, 2 Aug 2010 14:13:08 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20100802121308.GA13900@pengutronix.de>
References: <cover.1280749932.git.baruch@tkos.co.il>
	<531234713e1c3de945df03afb0a1dc96165bea22.1280749932.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <531234713e1c3de945df03afb0a1dc96165bea22.1280749932.git.baruch@tkos.co.il>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] arm: add support for the serial ATAG
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

Hi Baruch,

> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
>  arch/arm/include/asm/armlinux.h |    4 ++++
>  arch/arm/lib/armlinux.c         |   19 +++++++++++++++++++
>  2 files changed, 23 insertions(+), 0 deletions(-)
> =

I like it.  Last time I was tempted to implement this myself I would
have added a command to set the serial from the shell as in my case the
serial number was saved in env and passed to Linux via a kernel
parameter.

So you can count that as an Ack.

Thanks
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
