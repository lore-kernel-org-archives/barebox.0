Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1acqDf-0000uW-TW
 for barebox@lists.infradead.org; Mon, 07 Mar 2016 08:08:48 +0000
Date: Mon, 7 Mar 2016 09:08:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160307080825.GI21869@pengutronix.de>
References: <1456934863-30990-1-git-send-email-s.hauer@pengutronix.de>
 <1456934863-30990-6-git-send-email-s.hauer@pengutronix.de>
 <201603041248.53632.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201603041248.53632.jbe@pengutronix.de>
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
Subject: Re: [PATCH 5/7] ARM: i.MX: karo-tx6: Setup other PMICs
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 04, 2016 at 12:48:53PM +0100, Juergen Borleis wrote:
> Hi Sascha,
> =

> On Wednesday 02 March 2016 17:07:41 Sascha Hauer wrote:
> > diff --git a/arch/arm/boards/karo-tx6x/pmic-rn5t567.c
> > b/arch/arm/boards/karo-tx6x/pmic-rn5t567.c new file mode 100644
> > index 0000000..363ffbc
> > --- /dev/null
> > +++ b/arch/arm/boards/karo-tx6x/pmic-rn5t567.c
> > [...]
> > +int rn5t567_pmic_setup(struct i2c_client *client)
> > +{
> > +=A0=A0=A0=A0=A0=A0=A0int ret;
> > +=A0=A0=A0=A0=A0=A0=A0unsigned char value;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D i2c_read_reg(client, 0x11, &value, 1);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret !=3D 1) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0pr_err("i2c read error\n"=
);
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return ret;
> > +=A0=A0=A0=A0=A0=A0=A0}
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D rn5t567_setup_regs(client, rn5t567_regs,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0ARRAY_SIZE(rn5t567_regs));
> > +=A0=A0=A0=A0=A0=A0=A0if (ret)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return ret;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D i2c_read_reg(client, RN5T567_DC1DAC, &val=
ue, 1);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret =3D=3D 1)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0pr_debug("VDDCORE set to =
%umV\n", regval_to_mV(value));
> > +=A0=A0=A0=A0=A0=A0=A0else
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0pr_err("i2c read error\n"=
);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0ret =3D i2c_read_reg(client, RN5T567_DC2DAC, &val=
ue, 1);
> > +=A0=A0=A0=A0=A0=A0=A0if (ret =3D=3D 1)
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0pr_debug("VDDSOC =A0set t=
o %umV\n", regval_to_mV(value));
> =

> In the case of a successfull init this will return '1' and barebox then p=
rints
> an annoying error message like this:
> =

> Karo-tx6: PMIC setup failed with error -1

Just fixed this, see next branch.

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
