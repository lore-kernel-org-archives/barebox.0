Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e40rE-0004lF-PI
 for barebox@lists.infradead.org; Mon, 16 Oct 2017 08:34:46 +0000
Date: Mon, 16 Oct 2017 10:34:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171016083422.72ws3bpqdumg6gba@pengutronix.de>
References: <20171016080146.16022-1-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171016080146.16022-1-jbe@pengutronix.de>
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
Subject: Re: [PATCH] OMAP_GPMC: this driver depends on MTD
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi J=FCrgen,

On Mon, Oct 16, 2017 at 10:01:46AM +0200, Juergen Borleis wrote:
> Otherwise it fails with:
> =

> drivers/bus/omap-gpmc.c:498: undefined reference to `of_get_nand_bus_widt=
h'
> =

> Signed-off-by: Juergen Borleis <jbe@pengutronix.de>

I would prefer a

	if (IS_ENABLED(CONFIG_MTD) && !strncmp(child->name, "nand", 4))
		ret =3D gpmc_probe_nand_child(dev, child);

That would allow to use the GPMC without MTD support which is a valid
usecase if for example only a network device is connected.

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
