Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XOiM6-0003lT-7a
 for barebox@lists.infradead.org; Tue, 02 Sep 2014 07:18:19 +0000
Date: Tue, 2 Sep 2014 09:17:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140902071747.GY5352@pengutronix.de>
References: <1409574455-15746-1-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1409574455-15746-1-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH v3 0/3] Add device tree support of Atmel NAND driver
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 01, 2014 at 02:27:32PM +0200, Rapha=EBl Poggi wrote:
> Change since v2:
> 	* Combine in one patch the creation and initialisation of "has_pmecc" st=
ructure member
> 	* Combine patch "[PATCH 3/5] mtd: atmel_nand: retrieve ecc_mode from pda=
ta" =

> 		and "[PATCH 4/5] board: atmel: initialise ecc_mode"
> 	* Let NAND_ATMEL_PMECC config, but change the test in atmel_nand
> =

> Change since v1:
>         * Reorder patchs
>         * Fix some clean style issue.
> =

> This patchset adds the device tree support for the Atmel NAND driver.
> =

> The first patch add the has_pmecc structure member to be able to retrieve=
 pmecc from device tree
> and adds the has_pmecc on boards which need it.
> =

> The second patch retrieves the ecc_mode from the plateform data, and remo=
ve this code:
> =

>         nand_chip->ecc.mode =3D NAND_ECC_SOFT;
> =

> which arbitrary sets the ecc.mode to NAND_ECC_SOFT and changes the value =
depending of the config and plateform data.
> With this, we can use the same logics for device tree and non device tree=
 probing of the driver. =

> It also adds the ecc_mode on boards which are missing it (boards which us=
e NAND_ECC_SOFT).
> =

> The third patch adds the device tree in the atmel_nand driver.
> =

> Rapha=EBl Poggi (4):
> 	(1) mtd: nand: add has_pmecc member
> 	(2) mtd: atmel_nand: retrieve ecc_mode from pdata
> 	(3) mtd: atmel_nand: add support for device tree

Applied, thanks

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
