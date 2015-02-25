Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YQWJ8-00005v-Hn
 for barebox@lists.infradead.org; Wed, 25 Feb 2015 07:22:59 +0000
Date: Wed, 25 Feb 2015 08:22:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150225072233.GP12209@pengutronix.de>
References: <1424764334-39730-1-git-send-email-t.gamez@phytec.de>
 <1424764334-39730-3-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1424764334-39730-3-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [For next PATCH 3/3] ARM: phytec-som-am335x: Update sd-card
 rootfs to ext4
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 24, 2015 at 08:52:14AM +0100, Teresa G=E1mez wrote:
> Update rootfs to ext4. ext3 filesystems are still getting mounted.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
>  arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc | 2 =
+-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/b=
oot/mmc b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/m=
mc
> index 1a642f9..447e471 100644
> --- a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc
> +++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc
> @@ -5,4 +5,4 @@ global.bootm.oftree=3D/boot/oftree
>  =

>  bootargs-ip
>  =

> -global.linux.bootargs.dyn.root=3D"root=3D/dev/mmcblk0p2 rootfstype=3Dext=
3 rw rootwait"
> +global.linux.bootargs.dyn.root=3D"root=3D/dev/mmcblk0p2 rootfstype=3Dext=
4 rw rootwait"

Is the rootfstype necessary anyway? It should be automatically detected,
no?

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
