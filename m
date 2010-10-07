Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P3sWy-0007Us-CK
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 15:37:17 +0000
Date: Thu, 7 Oct 2010 17:37:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101007153713.GH28242@pengutronix.de>
References: <1286457858-29771-1-git-send-email-jbe@pengutronix.de>
	<1286457858-29771-6-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1286457858-29771-6-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCH 5/7] Add MCI card support to barebox
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi J=FCrgen,

On Thu, Oct 07, 2010 at 03:24:16PM +0200, Juergen Beisert wrote:
> This adds the basic framework to handle MCI cards in barebox.
> =

> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
>  drivers/Kconfig        |    1 +
>  drivers/Makefile       |    1 +
>  drivers/mci/Kconfig    |   30 ++
>  drivers/mci/Makefile   |    1 +
>  drivers/mci/mci-core.c | 1308 ++++++++++++++++++++++++++++++++++++++++++=
++++++
>  include/mci.h          |  230 +++++++++
>  6 files changed, 1571 insertions(+), 0 deletions(-)
>  create mode 100644 drivers/mci/Kconfig
>  create mode 100644 drivers/mci/Makefile
>  create mode 100644 drivers/mci/mci-core.c
>  create mode 100644 include/mci.h
>

This whole patch looks quite good.
Please add some linebreaks in mci-core.c. I don't want strict 80
character lines, but some lines are really long.

[snip]

> +static int mci_probe(struct device_d *mci_dev)
> +{
> +	struct mci *mci;
> +	int rc;
> +
> +	mci =3D xzalloc(sizeof(struct mci));
> +	mci_dev->priv =3D mci;
> +
> +#ifdef CONFIG_MCI_STARTUP
> +	/* if enabled, probe the attached card immediately */
> +	rc =3D mci_card_probe(mci_dev);
> +	if (rc =3D=3D -ENODEV) {
> +		/*
> +		 * If it fails, add the 'probe' parameter to give the user
> +		 * a chance to insert a card and try again. Note: This may fail
> +		 * systems that rely on the MCI card for startup (for the
> +		 * persistant environment for example)
> +		 */
> +		rc =3D add_mci_parameter(mci_dev);
> +		if (rc !=3D 0) {
> +			pr_err("Failed to add 'probe' parameter to the MCI device\n");
> +			goto on_error;
> +		}
> +	}
> +#endif
> +
> +#ifndef CONFIG_MCI_STARTUP

#else instead?

> +	/* add params on demand */
> +	rc =3D add_mci_parameter(mci_dev);
> +	if (rc !=3D 0) {
> +		pr_err("Failed to add 'probe' parameter to the MCI device\n");
> +		goto on_error;
> +	}
> +#endif
> +
> +	return rc;
> +
> +on_error:
> +	free(mci);
> +	return rc;
> +}
> +

[snip]

> +
> +/** host information */
> +struct mci_platformdata {
> +	struct device_d *hw_dev;	/**< the host MCI hardware device */
> +	unsigned voltages;
> +	unsigned host_caps;	/**< Host's interface capabilities, refer MMC_VDD_*=
 and FIXME */
> +	unsigned f_min;		/**< host interface lower limit */
> +	unsigned f_max;		/**< host interface upper limit */
> +	unsigned clock;		/**< Current clock used to talk to the card */
> +	unsigned bus_width;	/**< used data bus width to the card */
> +
> +	int (*init)(struct device_d*, struct device_d*);	/**< init the host int=
erface */
> +	void (*set_ios)(struct device_d*, struct device_d*, unsigned, unsigned)=
;	/**< change host interface settings */
> +	int (*send_cmd)(struct device_d*, struct mci_cmd*, struct mci_data*);	/=
**< handle a command */
> +};

I prefer this struct named mci_host, this seems to match better what it
actually is. For the convenience of drivers set init/set_ios/send_cmd
functions should be passed a pointer to the mci_host, not the device,
because that's what they actually registered. I already prepared a patch
for this, I'll send it in a seperate mail.

> +
> +/** MMC/SD and interface instance information */
> +struct mci {
> +	unsigned version;
> +	int high_capacity;	/**< !=3D 0 when a high capacity card is connected (=
OCR -> OCR_HCS) */
> +	unsigned card_caps;	/**< Card's capabilities */
> +	unsigned ocr;		/**< card's "operation condition register" */
> +	unsigned scr[2];
> +	unsigned csd[4];	/**< card's "card specific data register" */
> +	unsigned cid[4];	/**< card's "card identification register" */
> +	unsigned short rca;	/* FIXME */
> +	unsigned tran_speed;	/**< not yet used */
> +	unsigned read_bl_len;	/**< currently used data block length for read ac=
cesses */
> +	unsigned write_bl_len;	/**< currently used data block length for write =
accesses */
> +	uint64_t capacity;	/**< Card's data capacity in bytes */
> +	int ready_for_use;	/** true if already probed */
> +};
> +
> +int mci_register(struct mci_platformdata*);
> +
> +#define GET_HOST_DATA(x) (x->priv)
> +#define GET_HOST_PDATA(x) (x->platform_data)
> +#define GET_MCI_DATA(x) (x->priv)
> +#define GET_MCI_PDATA(x) (x->platform_data)
> +
> +#endif /* _MCI_H_ */
> -- =

> 1.7.2.3
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
