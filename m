Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEEmI-00086o-Cp
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 09:42:02 +0000
Received: by mail-wi0-f180.google.com with SMTP id n3so4634968wiv.1
 for <barebox@lists.infradead.org>; Mon, 04 Aug 2014 02:41:35 -0700 (PDT)
Date: Mon, 4 Aug 2014 11:42:40 +0200
From: =?iso-8859-1?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Message-ID: <20140804094240.GA6709@gmail.com>
References: <1407141112-3868-1-git-send-email-poggi.raph@gmail.com>
 <1407141112-3868-2-git-send-email-poggi.raph@gmail.com>
 <53DF4EF6.8050408@atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53DF4EF6.8050408@atmel.com>
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
Subject: Re: [PATCH V2 1/2] i2c: at91: add support of device tree
To: Bo Shen <voice.shen@atmel.com>, barebox@lists.infradead.org

> Hi Rapha=EBl Poggi,
> =

> On 08/04/2014 04:31 PM, Rapha=EBl Poggi wrote:
> >Signed-off-by: Rapha=EBl Poggi <poggi.raph@gmail.com>
> >---
> >  drivers/i2c/busses/i2c-at91.c |   66 +++++++++++++++++++++++++++++++++=
+++-----
> >  1 file changed, 58 insertions(+), 8 deletions(-)
> >
> >diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91=
.c
> >index 399f6a9..944a8b3 100644
> >--- a/drivers/i2c/busses/i2c-at91.c
> >+++ b/drivers/i2c/busses/i2c-at91.c
> >@@ -346,6 +346,12 @@ static struct at91_twi_pdata at91sam9g10_config =3D=
 {
> >  	.has_unre_flag =3D false,
> >  };
> >
> >+static struct at91_twi_pdata at91sam9x5_config =3D {
> >+	.clk_max_div =3D 7,
> >+	.clk_offset =3D 4,
> >+	.has_unre_flag =3D false,
> >+};
> >+
> =

> Can you add this also for non device tree?
Ok no problem.

> =

> >  static struct platform_device_id at91_twi_devtypes[] =3D {
> >  	{
> >  		.name =3D "i2c-at91rm9200",
> >@@ -367,20 +373,63 @@ static struct platform_device_id at91_twi_devtypes=
[] =3D {
> >  	}
> >  };
> >
> >+static struct of_device_id at91_twi_dt_ids[] =3D {
> >+	{
> >+		.compatible =3D "atmel,at91rm9200-i2c",
> >+		.data =3D (unsigned long) &at91rm9200_config,
> >+	} , {
> >+		.compatible =3D "atmel,at91sam9260-i2c",
> >+		.data =3D (unsigned long) &at91sam9260_config,
> >+	} , {
> >+		.compatible =3D "atmel,at91sam9261-i2c",
> >+		.data =3D (unsigned long) &at91sam9261_config,
> >+	} , {
> >+		.compatible =3D "atmel,at91sam9g20-i2c",
> >+		.data =3D (unsigned long) &at91sam9g20_config,
> >+	} , {
> >+		.compatible =3D "atmel,at91sam9g10-i2c",
> >+		.data =3D (unsigned long) &at91sam9g10_config,
> >+	}, {
> >+		.compatible =3D "atmel,at91sam9x5-i2c",
> >+		.data =3D (unsigned long) &at91sam9x5_config,
> >+	}, {
> >+		/* sentinel */
> >+	}
> >+};
> >+
> >+static struct at91_twi_pdata *at91_twi_get_driver_data(struct device_d =
*dev)
> >+{
> >+    struct at91_twi_pdata *i2c_data =3D NULL;
> >+    int rc;
> >+
> >+    if (dev->device_node) {
> >+	const struct of_device_id *match;
> >+	match =3D of_match_node(at91_twi_dt_ids, dev->device_node);
> >+	if (!match)
> >+	    i2c_data =3D NULL;
> >+	else
> >+	    i2c_data =3D (struct at91_twi_pdata *)match->data;
> >+    }
> >+    else {
> =

> Maybe better if: } else {
Ok
> =

> >+	rc =3D dev_get_drvdata(dev, (unsigned long *)&i2c_data);
> >+	if (rc)
> >+	    i2c_data =3D NULL;
> >+    }
> >+
> >+    return i2c_data;
> >+}
> >+
> >  static int at91_twi_probe(struct device_d *dev)
> >  {
> >  	struct at91_twi_dev *i2c_at91;
> >-	struct at91_twi_pdata *i2c_data;
> >-	int rc;
> >+	int rc =3D 0;
> >  	u32 bus_clk_rate;
> >
> >  	i2c_at91 =3D xzalloc(sizeof(struct at91_twi_dev));
> >
> >-	rc =3D dev_get_drvdata(dev, (unsigned long *)&i2c_data);
> >-	if (rc)
> >-		goto out_free;
> >-
> >-	i2c_at91->pdata =3D i2c_data;
> >+	i2c_at91->pdata =3D at91_twi_get_driver_data(dev);
> >+	if (!i2c_at91->pdata)
> >+	    goto out_free;
> =

> Maybe add error information will be better.

Yes, you're right.

> =

> Btw, do you use "tab" for alignment?
Yes, but maybe my vim config is wrong ? (set tabstop=3D4, set shiftwidth=3D=
4, set softtabstop=3D4)

> =

> >  	i2c_at91->base =3D dev_request_mem_region(dev, 0);
> >  	if (!i2c_at91->base) {
> >@@ -389,7 +438,7 @@ static int at91_twi_probe(struct device_d *dev)
> >  		goto out_free;
> >  	}
> >
> >-	i2c_at91->clk =3D clk_get(dev, "twi_clk");
> >+	i2c_at91->clk =3D clk_get(dev, NULL);
> >  	if (IS_ERR(i2c_at91->clk)) {
> >  		dev_err(dev, "no clock defined\n");
> >  		rc =3D -ENODEV;
> >@@ -429,6 +478,7 @@ static struct driver_d at91_twi_driver =3D {
> >  	.name		=3D "at91-twi",
> >  	.probe		=3D at91_twi_probe,
> >  	.id_table	=3D at91_twi_devtypes,
> >+	.of_compatible	=3D DRV_OF_COMPAT(at91_twi_dt_ids),
> >  };
> >  device_platform_driver(at91_twi_driver);
> >
> >
> =

> Best Regards,
> Bo Shen
> =


Thanks for you review,

Rapha=EBl Poggi

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
