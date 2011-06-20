Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QYZ2t-0001GN-2c
	for barebox@lists.infradead.org; Mon, 20 Jun 2011 07:37:20 +0000
Date: Mon, 20 Jun 2011 09:37:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110620073715.GR23771@pengutronix.de>
References: <1308211963-4384-1-git-send-email-h.feurstein@gmail.com>
	<20110620064501.GL23771@pengutronix.de>
	<BANLkTi=2s_PWjLeNNEaOigRWfKg7JmYMtg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BANLkTi=2s_PWjLeNNEaOigRWfKg7JmYMtg@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH] spi: add at25 spi eeprom driver
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 20, 2011 at 09:23:40AM +0200, Hubert Feurstein wrote:
> Hi Sascha,
> =

> 2011/6/20 Sascha Hauer <s.hauer@pengutronix.de>:
> > Hi Hubert,
> >
> > On Thu, Jun 16, 2011 at 10:12:43AM +0200, Hubert Feurstein wrote:
> >> =A0obj-y =A0 =A0 =A0 =A0+=3D mfd/
> >> =A0obj-$(CONFIG_LED) +=3D led/
> >> +obj-y =A0 =A0 =A0 =A0+=3D misc/
> >> diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> >
> > I think we should move the driver up to drivers/eeprom and skip the
> > 'misc'. The kernel guys like to get rid of it also.
> >
> OK
> =

> >> +
> >> + =A0 =A0 =A0 =A0 =A0 =A0 /* Wait for non-busy status */
> >> + =A0 =A0 =A0 =A0 =A0 =A0 start_time =3D get_time_ns();
> >> +
> >> + =A0 =A0 =A0 =A0 =A0 =A0 retries =3D 0;
> >> + =A0 =A0 =A0 =A0 =A0 =A0 do {
> >> +
> >> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 sr =3D spi_w8r8(at25->spi, A=
T25_RDSR);
> >> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (sr < 0 || (sr & AT25_SR_=
nRDY)) {
> >> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_dbg(at25=
->cdev.dev,
> >> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 "rdsr --> %d (%02x)\n", sr, sr);
> >> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 mdelay(1);

We can remove this mdelay. In the kernel it makes sense to use msleep to
give the cpu a chance to sleep. In barebox we are polling anyway, so we
can better poll the status register instead of the timer register. This
gives us the chance to bail out here after 1.1ms instead of 1, 2, ...

> >> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 continue;
> >> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
> >> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (!(sr & AT25_SR_nRDY))
> >> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> >> + =A0 =A0 =A0 =A0 =A0 =A0 } while (retries++ < 3 || !is_timeout(start_=
time, EE_TIMEOUT));
> >
> > I don't understand this. The loop is limited by retries++ < 3. Why this
> > additional is_timeout? Is this the same in the kernel?
> >
> Hmm, I don't know why we have both here. I simply ported the kernel code.

Looking at it again it seems like 'poll for EE_TIMEOUT ms but at least
three times'. I think we can skip the retries and just poll for
EE_TIMEOUT ms. The most important thing about timeouts is that we bail
out after reasonable time to give the user a chance to continue without
this driver and to give him a clue where it hangs. The exact amount
of time we poll is not really important.

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
