Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8IOx-0008Sh-VG
 for barebox@lists.infradead.org; Thu, 12 Sep 2019 06:16:21 +0000
Date: Thu, 12 Sep 2019 08:16:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190912061617.guwsnwogkiya2y36@pengutronix.de>
References: <20190909203451.13047-1-u.kleine-koenig@pengutronix.de>
 <20190909203451.13047-3-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909203451.13047-3-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v4 2/2] mci: implement command to switch a mmc device to
 enhanced mode
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 09, 2019 at 10:34:51PM +0200, Uwe Kleine-K=F6nig wrote:
> +	ret =3D mci_send_ext_csd(mci, ext_csd);
> +	if (ret) {
> +		printf("Failure to read EXT_CSD register\n");
> +		free(ext_csd);
> +		return ERR_PTR(-EIO);
> +	}
> +
> +	return ext_csd;
> +}
> +
> +/* enh_area -m [-c] /dev/mmcX */

-m is not implemented

> +static int do_mmc_enh_area(int argc, char *argv[])
> +{
> +	const char *devpath;
> +	struct mci *mci;
> +	u8 *ext_csd;
> +	int set_completed =3D 0;
> +	int opt;
> +	int ret;
> +
> +	while ((opt =3D getopt(argc, argv, "c")) > 0) {
> +		switch (opt) {
> +		case 'c':
> +			set_completed =3D 1;
> +			break;
> +		}
> +	}
> +
> +	/*
> +	 * -m is currently mandatory to allow more flexible enhanced area
> +	 * specifications in the future.
> +	 */

-m?

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
