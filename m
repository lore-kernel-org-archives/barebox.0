Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pdfbh-0008Is-6S
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 09:06:06 +0000
Date: Fri, 14 Jan 2011 10:06:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110114090601.GC24373@pengutronix.de>
References: <1294845697-2729-1-git-send-email-eric@eukrea.com>
	<201101141045.18241.marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201101141045.18241.marc@cpdesign.com.au>
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
Subject: Re: [PATCH] i2c-imx: sync with kernel's driver
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

On Fri, Jan 14, 2011 at 10:45:18AM +1100, Marc Reilly wrote:
> On Thursday, January 13, 2011 02:21:37 am Eric B=E9nard wrote:
> > strange behaviour was observed with actual driver : bus lock, probe of
> > absent adresses, wrong data read.
> > This patch sync the driver with linux's one and after a few tests, we
> > don't see anymore strange behaviour (tested on i.MX27).
> > =

> > Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> =

> FWIW, This patch doesn't seem to break anything for me, but I also wasn't =

> seeing any problems (that I was aware of!).

I'll interpret this as an Acked-by.

Sascha

> =

> Cheers,
> Marc
> =

> > ---
> >  drivers/i2c/busses/i2c-imx.c |   35 ++++++++---------------------------
> >  1 files changed, 8 insertions(+), 27 deletions(-)
> > =

> > diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> > index 266cb52..93e978e 100644
> > --- a/drivers/i2c/busses/i2c-imx.c
> > +++ b/drivers/i2c/busses/i2c-imx.c
> > @@ -151,7 +151,7 @@ static int i2c_imx_bus_busy(struct i2c_adapter
> > *adapter, int for_busy) break;
> >  		if (!for_busy && !(temp & I2SR_IBB))
> >  			break;
> > -		if (is_timeout(start, MSECOND)) {
> > +		if (is_timeout(start, 500 * MSECOND)) {
> >  			dev_err(adapter->dev,
> >  				 "<%s> timeout waiting for I2C bus %s\n",
> >  				 __func__,for_busy ? "busy" : "not busy");
> > @@ -170,34 +170,15 @@ static int i2c_imx_trx_complete(struct i2c_adapter
> > *adapter) start =3D get_time_ns();
> >  	while (1) {
> >  		unsigned int reg =3D readb(base + IMX_I2C_I2SR);
> > -		if (reg & I2SR_ICF)
> > -			break;
> > -
> > -		if (is_timeout(start, 100 * MSECOND)) {
> > -			dev_err(adapter->dev, "<%s> TXR timeout\n", __func__);
> > -			return -EIO;
> > -		}
> > -	}
> > -
> > -	return 0;
> > -}
> > -
> > -static int i2c_imx_wait_iif(struct i2c_adapter *adapter)
> > -{
> > -	unsigned long base =3D adapter->dev->map_base;
> > -	uint64_t start;
> > -
> > -	start =3D get_time_ns();
> > -	while (1) {
> > -		unsigned int reg =3D readb(base + IMX_I2C_I2SR);
> >  		if (reg & I2SR_IIF)
> >  			break;
> > =

> >  		if (is_timeout(start, 100 * MSECOND)) {
> > -			dev_err(adapter->dev, "<%s> IIF timeout\n", __func__);
> > +			dev_err(adapter->dev, "<%s> TXR timeout\n", __func__);
> >  			return -EIO;
> >  		}
> >  	}
> > +	writeb(0, base + IMX_I2C_I2SR);
> > =

> >  	return 0;
> >  }
> > @@ -277,9 +258,13 @@ static void i2c_imx_stop(struct i2c_adapter *adapt=
er)
> >  		udelay(i2c_imx->disable_delay);
> >  	}
> > =

> > +	if (!i2c_imx->stopped) {
> > +		i2c_imx_bus_busy(adapter, 0);
> > +		i2c_imx->stopped =3D 1;
> > +	}
> > +
> >  	/* Disable I2C controller, and force our state to stopped */
> >  	writeb(0, base + IMX_I2C_I2CR);
> > -	i2c_imx->stopped =3D 1;
> >  }
> > =

> >  static void i2c_imx_set_clk(struct imx_i2c_struct *i2c_imx,
> > @@ -379,10 +364,6 @@ static int i2c_imx_read(struct i2c_adapter *adapte=
r,
> > struct i2c_msg *msgs) if (result)
> >  		return result;
> > =

> > -	result =3D i2c_imx_wait_iif(adapter);
> > -	if (result)
> > -		return result;
> > -
> >  	/* setup bus to read data */
> >  	temp =3D readb(base + IMX_I2C_I2CR);
> >  	temp &=3D ~I2CR_MTX;
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
