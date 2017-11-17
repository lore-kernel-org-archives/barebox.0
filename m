Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eFccN-0008VC-K0
 for barebox@lists.infradead.org; Fri, 17 Nov 2017 09:07:25 +0000
Date: Fri, 17 Nov 2017 10:06:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171117090657.mux43ro5gkrtfeor@pengutronix.de>
References: <221136220.35006899.1510666491764.JavaMail.zimbra@kalray.eu>
 <20171117083340.6jtpf2dix5pukaks@pengutronix.de>
 <1782166044.55530197.1510908734299.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1782166044.55530197.1510908734299.JavaMail.zimbra@kalray.eu>
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
Subject: Re: [PATCH] Net: add mdio_i2c driver.
To: =?iso-8859-15?Q?Cl=E9ment?= Leger <cleger@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Nov 17, 2017 at 09:52:14AM +0100, Cl=E9ment Leger wrote:
> Hi Sascha,
> =

> Indeed, I though about that and I was facing another problem.
> The mdio to i2c driver does not have a specific address.
> ie, it is not a device but rather a bus.
> If I put the mdio_i2c  node under the i2c bus, then I should assign
> it an i2c address. This address should represent the phy address.
> However, this would means I would have one mdio-i2c driver per phy.

Some AT24 EEPROMs have the same problem, they also use multiple
addresses. AFAIK for them only the first address is provided in the
"reg" property. See drivers/eeprom/at24c.c how the driver handles this
situation.
Normally I think multi address devices should simply provide their
reg space as reg =3D <start size>; like other devices do aswell. I don't
know what the I2C core maked from this though.

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
