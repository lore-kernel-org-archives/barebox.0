Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDEYz-0006AP-Th
 for barebox@lists.infradead.org; Thu, 29 Mar 2012 12:34:50 +0000
Date: Thu, 29 Mar 2012 14:34:42 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120329143442.0df5cccd@eb-e6520>
In-Reply-To: <OF21220E76.68770C91-ONC12579D0.004452DB-C12579D0.0044D7C4@o0802.rafi.inhouse>
References: <OF440839EF.2383F590-ONC12579D0.00410F43-C12579D0.004184D1@o0802.rafi.inhouse>
 <20120329140303.71c94361@eb-e6520>
 <OF21220E76.68770C91-ONC12579D0.004452DB-C12579D0.0044D7C4@o0802.rafi.inhouse>
Mime-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Create NAND Partition through barebox
To: christian.buettner@rafi.de
Cc: barebox@lists.infradead.org

Le Thu, 29 Mar 2012 14:32:01 +0200,
christian.buettner@rafi.de a =E9crit :

> This is my current config:
> =

> #!/bin/sh
> =

> machine=3Dtest
> =

> kernel_loc=3Dnand
> rootfs_loc=3Dnand
> =

> rootfs_type=3Dubifs
> =

> kernel=3DzImage
> rootfs=3Drootfs
> envimage=3Denviron.bin
> =

> autoboot_timeout=3D3
> =

> nfsroot=3D"/tools/rootfs/test"
> =

> console=3D"console=3Dttymxc0,115200"
> =

> bootargs=3D${console}
> =

> nand_parts=3D"256k(barebox)ro,768k(bareboxenv),4M(kernel),-(root)"
> kdev=3D"/dev/nand0.kernel.bb"
> rootfs_mtdblock_nand=3D3
> =

> =

> =

> But i see no NAND in devinfo
> =

this one works on an i.MX535 here :
nand_parts=3D"512k(barebox)ro,512k(bareboxenv),3M(kernel),-(root)"
rootfs_mtdblock_nand=3D3
nand_device=3D"mxc_nand"
ubiroot=3D"$machine-rootfs"
device_type=3D"nand"

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
