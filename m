Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSGdz-0004OH-4a
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 06:49:35 +0000
Date: Mon, 11 Jun 2018 08:49:22 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20180611064922.qmf3k7mfanv5g4j5@pengutronix.de>
References: <20180608084244.12816-1-u.kleine-koenig@pengutronix.de>
 <20180611064326.zkre4wacg2zkluov@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180611064326.zkre4wacg2zkluov@pengutronix.de>
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
Subject: Re: [PATCH] mvebu: create bbu handler for kwb images and use it on
 cubox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hallo Sascha,

On Mon, Jun 11, 2018 at 08:43:26AM +0200, Sascha Hauer wrote:
> On Fri, Jun 08, 2018 at 10:42:44AM +0200, Uwe Kleine-K=F6nig wrote:
> > +static int mvebu_bbu_flash_update_handler(struct bbu_handler *bbuh,
> > +					  struct bbu_data *data)
> > +{
> > +	struct mvebu_bbu_handler *mbbuh =3D
> > +		container_of(bbuh, struct mvebu_bbu_handler, bbuh);
> > +	const void *image =3D data->image;
> > +	size_t size =3D data->len;
> > +	enum filetype ft =3D file_detect_type(image, size);
> > +
> > +	if ((mbbuh->version =3D=3D 0 && ft =3D=3D filetype_kwbimage_v0) ||
> > +	    (mbbuh->version =3D=3D 1 && ft =3D=3D filetype_kwbimage_v1) ||
> > +	    data->flags & BBU_FLAG_FORCE) {
> > +		int ret =3D bbu_confirm(data);
> > +		if (ret)
> > +			return ret;
> > +
> > +		return write_file_flash(bbuh->devicefile, image, size);
> > +	} else {
> > +		pr_err("%s is not a valid kwbimage\n", data->imagefile);
> > +		return -EINVAL;
> > +	}
> > +}
> =

> Could this code be shared with other boards?

Sure. It should work on all mvebu targets that boot from a flash memory.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
