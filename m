Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eI9wz-0003Cc-Kg
 for barebox@lists.infradead.ORG; Fri, 24 Nov 2017 09:07:15 +0000
Date: Fri, 24 Nov 2017 10:06:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171124090643.dp35rgx5y5duz5i6@pengutronix.de>
References: <20171122102231.16872-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171122102231.16872-1-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/6] net/e1000: more cleanups and ways to access i210
 storage
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Wed, Nov 22, 2017 at 11:22:25AM +0100, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> these are a few patches that cumulated here related to the i210 network
> controller.
> =

> These are nearly good enough to populate the attached flash with a valid
> firmware (which you still need to have yourself) on all machines I have
> access to.
> =

> There is still one (to me) known problem: When the flash doesn't contain
> a valid image, accessing the eeprom (which is a simulated device on i210
> that is backed up by shadow RAM and the two first pages of flash) gives
> the contents of iNVM instead of the expected default eeprom. That
> results in a few wrong turns in the code but they are not grave enough
> to stop being able to write a valid firmware image.
> =

> A bit that is still missing is that a customer machine uses an flash
> that is write protected at power on. An i210 with an programmed flash is
> clever enough to remove the write protection before writing to it, but
> that doesn't help when the flash is not programmed (tin opener inside).
> I have a prototype that can remove the write protection with a
> cryptic command but that's not ready for prime time yet.
> =

> Best regards
> Uwe
> =

> Uwe Kleine-K=F6nig (6):
>   net/e1000: fix coding style at a few locations
>   net/e1000: don't use the eeprom word size as timeout to get a
>     semaphore
>   net/e1000: reorder functions
>   net/e1000: provide access to iNVM even if a flash is present
>   net/e1000: fix size of invm device
>   net/e1000: provide device for accessing emulated eeprom
> =

>  drivers/net/e1000/e1000.h  |   8 +-
>  drivers/net/e1000/eeprom.c | 324 ++++++++++++++++++++++++++-------------=
------
>  drivers/net/e1000/main.c   |   6 +-
>  3 files changed, 196 insertions(+), 142 deletions(-)

Applied, thanks

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
