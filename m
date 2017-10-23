Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e6XZX-00050e-31
 for barebox@lists.infradead.org; Mon, 23 Oct 2017 07:54:57 +0000
Date: Mon, 23 Oct 2017 09:54:33 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20171023075433.tfhz5odczkrlbyrd@pengutronix.de>
References: <20171018134117.20289-1-uwe@kleine-koenig.org>
 <20171018134117.20289-2-uwe@kleine-koenig.org>
 <20171023072036.23nneaapd7orpopv@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171023072036.23nneaapd7orpopv@pengutronix.de>
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
Subject: Re: [PATCH 2/3] ARM: i.MX: bbu-internal: new handler to make use of
 mmc boot partitions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 23, 2017 at 09:20:36AM +0200, Sascha Hauer wrote:
> On Wed, Oct 18, 2017 at 03:41:16PM +0200, Uwe Kleine-K=F6nig wrote:
> > From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > =

> > This handler updates the non-active MMC boot partition and after a
> > successful update makes the updated partition the active one. This way
> > the machine should continue to be bootable when the update fails.
> =

> Adding something like this as a comment above
> imx6_bbu_internal_mmcboot_register_handler() would be nice.

ok.

> > +static int imx_bbu_internal_v2_mmcboot_update(struct bbu_handler *hand=
ler,
> > +					      struct bbu_data *data)
> > +{
> > +	struct imx_internal_bbu_handler *imx_handler =3D
> > +		container_of(handler, struct imx_internal_bbu_handler, handler);
> > +	int ret;
> > +	uint32_t *barker;
> > +	char *bootpartvar;
> > +	const char *bootpart;
> > +	char *devicefile;
> > +
> > +	barker =3D data->image + imx_handler->flash_header_offset;
> > +
> > +	if (*barker !=3D IVT_BARKER) {
> > +		printf("Board does not provide DCD data and this image is no imximag=
e\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	ret =3D asprintf(&bootpartvar, "%s.boot", data->devicefile);
> > +	if (ret < 0) {
> > +		printf("Failed to allocate string for boot variable\n");
> =

> I think messages for failed memory allocations which eat more space than
> the actual allocation should be avoided. Just return -ENOMEM without a
> message.

In general not giving an error message makes the problem harder to
locate. But maybe if I'm unable to allocate 20 Bytes the problem is
obvious.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
