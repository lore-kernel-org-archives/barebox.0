Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ0qW-0004w7-1U
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 13:17:52 +0000
Date: Thu, 27 Feb 2014 14:17:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140227131729.GM17250@pengutronix.de>
References: <1393368681-1190-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <1393368681-1190-7-git-send-email-u.kleine-koenig@pengutronix.de>
 <530D2660.6080104@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <530D2660.6080104@gmail.com>
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
Subject: Re: [PATCH 06/10] ARM: a9m2410: convert to devfs_create_partitions
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org, Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

On Wed, Feb 26, 2014 at 12:25:20AM +0100, Sebastian Hesselbarth wrote:
> On 02/25/2014 11:51 PM, Uwe Kleine-K=F6nig wrote:
> >Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> >---
> >  arch/arm/boards/a9m2410/a9m2410.c | 23 +++++++++++++++++------
> >  1 file changed, 17 insertions(+), 6 deletions(-)
> >
> >diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410=
/a9m2410.c
> >index b2b6c87117a3..8d528cf60378 100644
> >--- a/arch/arm/boards/a9m2410/a9m2410.c
> >+++ b/arch/arm/boards/a9m2410/a9m2410.c
> >@@ -117,13 +117,24 @@ static int a9m2410_devices_init(void)
> >  			16, IORESOURCE_MEM, NULL);
> >
> >  #ifdef CONFIG_NAND
> >-	/* ----------- add some vital partitions -------- */
> >-	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, =
"self_raw");
> >-	dev_add_bb_dev("self_raw", "self0");
> >-
> >-	devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, =
"env_raw");
> >-	dev_add_bb_dev("env_raw", "env0");
> >+	devfs_create_partitions("nand0", (struct devfs_partition[]){
> =

> nit: It would be even more readable, if you move the struct
> devfs_partition[] out of a9m2410_device_init() and reference
> it here instead, i.e.
> =

> static struct devfs_partition a9m2410_nand_partitions[] =3D {
> 	...
> 	{ }
> };
> =

> ...
> =

> static int a9m2410_devices_init(void)
> {
> ...
> 	#ifdef CONFIG_NAND
> 	devfs_create_partitions("nand0", a9m2410_nand_partitions);
> 	#endif
> ...
> =

> in here and the following patches.

+1

In this particular case the __maybe_unused can also be avoided with

	if(IS_ENABLED(CONFIG_NAND))
		devfs_create_partitions("nand0", a9m2410_nand_partitions);

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
