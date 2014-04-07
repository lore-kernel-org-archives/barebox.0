Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WX4Jm-00072i-6Y
 for barebox@lists.infradead.org; Mon, 07 Apr 2014 07:50:10 +0000
Received: by mail-lb0-f171.google.com with SMTP id w7so4515008lbi.30
 for <barebox@lists.infradead.org>; Mon, 07 Apr 2014 00:49:47 -0700 (PDT)
Date: Mon, 7 Apr 2014 11:59:48 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140407115948.197594e062567fea4b495067@gmail.com>
In-Reply-To: <20140407073856.GJ27055@pengutronix.de>
References: <1396722934-23818-1-git-send-email-antonynpavlov@gmail.com>
 <1396722934-23818-3-git-send-email-antonynpavlov@gmail.com>
 <20140407073856.GJ27055@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 2/5] spi: add controller driver for Atheros
 AR7XXX/AR9XXX SoCs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 7 Apr 2014 09:38:56 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Sat, Apr 05, 2014 at 10:35:31PM +0400, Antony Pavlov wrote:
> > +static int ath79_spi_setup(struct spi_device *spi)
> > +{
> > +	struct spi_master *master =3D spi->master;
> > +	struct device_d spi_dev =3D spi->dev;
> > +
> > +	if (spi->bits_per_word !=3D 8) {
> > +		dev_err(master->dev, "master doesn't support %d bits per word reques=
ted by %s\n",
> > +			spi->bits_per_word, spi_dev.name);
> > +		return -1;
> > +	}
> > +
> > +	if ((spi->mode & (SPI_CPHA | SPI_CPOL)) !=3D SPI_MODE_0) {
> > +		dev_err(master->dev, "master doesn't support SPI_MODE%d requested by=
 %s\n",
> > +			spi->mode & (SPI_CPHA | SPI_CPOL), spi_dev.name);
> > +		return -1;
> > +	}
> =

> Better -EINVAL?
> =

> Otherwise this series looks good.
>
 =

Sure!

I'll resend the series.
 =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
