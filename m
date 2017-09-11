Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1drIxU-0006WU-3H
 for barebox@lists.infradead.org; Mon, 11 Sep 2017 07:16:43 +0000
Date: Mon, 11 Sep 2017 09:16:14 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170911071614.ubhmelfunysejs4a@pengutronix.de>
References: <6e6e8b7d-3fe7-04ca-c275-efbf89cec410@gr13.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e6e8b7d-3fe7-04ca-c275-efbf89cec410@gr13.net>
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
Subject: Re: boot problem w/ barebox
To: "Enrico Weigelt, metux IT consult" <enrico.weigelt@gr13.net>
Cc: d.schultz@phytec.de, barebox@lists.infradead.org, ptxdist@pengutronix.de

On Sat, Sep 09, 2017 at 11:01:34AM +0200, Enrico Weigelt, metux IT consult =
wrote:
> Hi folks,
> =

> =

> I've got a really strange booting problem on an phycore-imx6
> based board (pretty much the same as mira):
> =

> * barebox v2017.06.1-phy2 comes up properly, but cant boot
>   the kernel (v4.13) - just hangs w/o any output (not even
>   uncompression message)
> * putting the kernel manually into the factory-image (sdcard)
>   w/ old 2015 barebox boots the kernel
> * w/ DEBUG_LL + earlyprintk it doesn't even does that, just
>   hangs like w/ new barebox
> =

> =

> Here's the last output I've got: (added few more debug outputs)
> =

> > Loading ARM Linux zImage '/mnt/mmc/boot/zImage'
> > Loading devicetree from '/mnt/mmc/boot/imx6q-phytec-mira-rdk-emmc.dtb'
> > Updating DT commandline:  console=3Dttymxc1,115200n8 root=3D/dev/mmcblk=
0p2
> rootwait rw earlyprintk=3D1
> > DT commandline:  console=3Dttymxc1,115200n8  root=3D/dev/mmcblk0p2 root=
wait rw
> earlyprintk=3D1
> > booting kernel with devicetree
> > start_linux: kernel entry point: 12000000
> >                            dtb: 18000000
> >                           swap: 0
> >                           arch: 0
> > shutting down barebox
> =

> My first suspicion was zero'ed DT memory node (which OTOH doesn't
> explain why earlyprintk doesn't work), but fixing that didn't help.
> =

> Could there be any vital low-level init missing in the new bbx ?
> Maybe the entry point correct ?
> =

> Any ideas where I could have a deeper look at ?

Try adding a #define DEBUG in linux-4.13/arch/arm/boot/compressed/head.S
and make sure enabled DEBUG_LL and selected the right UART in your
.config.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
