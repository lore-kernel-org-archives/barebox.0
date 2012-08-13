Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T0olk-0008Gh-52
 for barebox@lists.infradead.org; Mon, 13 Aug 2012 07:08:57 +0000
Date: Mon, 13 Aug 2012 09:08:50 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20120813070850.GM25520@pengutronix.de>
References: <20120812114647.GF6271@game.jcrosoft.org>
 <1344772179-13591-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1344772179-13591-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/4] fs/mount: add autodetection type support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hello,

On Sun, Aug 12, 2012 at 01:49:36PM +0200, Jean-Christophe PLAGNIOL-VILLARD =
wrote:
> +static const char * detect_fs(const char *filename)
> +{
> +	enum filetype type =3D file_name_detect_type(filename);
> +	struct driver_d *drv;
> +	struct fs_driver_d *fdrv;
> +
> +	if (type =3D=3D filetype_unknown)
> +		return NULL;
> +
> +	for_each_driver(drv) {
> +		fdrv =3D drv_to_fs_driver(drv);
> +
> +		if (drv->bus !=3D &fs_bus)
> +			continue;
> +
> +		if(type =3D=3D fdrv->type)
> +			return drv->name;
fdrv could be local to this loop only.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
