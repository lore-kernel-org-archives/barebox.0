Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YmfmD-00005K-Hm
 for barebox@lists.infradead.org; Mon, 27 Apr 2015 09:56:34 +0000
Date: Mon, 27 Apr 2015 11:56:11 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20150427095611.GJ19431@pengutronix.de>
References: <1430126650-6382-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430126650-6382-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] mtd: partition: Fix OF partition fixup
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hello Sascha,

On Mon, Apr 27, 2015 at 11:24:10AM +0200, Sascha Hauer wrote:
> To get the number of address cells and size cells we have to use
> the newly created partition node, not the parent device node. The
> parent device node returns the address/size cells of the controller
> node, not the partition node.
seems like correctly "schlau gekuckt" and matching the problem report I
sent you (off-list).

Just tested your patch and it really fixes my problem, it works fine now
with and without passing a dtb for booting. As you pointed out this
doesn't explain though why the use case with an explicit dtb worked
already before. I verified that of_mtd_fixup is called there, but didn't
dig any deeper, e.g. by testing if the partitioning is really modified
if I did any changes. Will do so later today.

I'd formulate the commit log a tad more critical, like adding:

	On an am335x machine this fixes the device tree passed to Linux.
	The situation there is:

        ...
        gpmc@50000000 {
                ...
                #address-cells =3D <0x2>;
                #size-cells =3D <0x1>;
                ranges =3D <0x0 0x0 0x8000000 0x10000000>;
                ...
                nand@0,0 {
                        reg =3D <0x0 0x0 0x0>;
                        #address-cells =3D <0x1>;
                        #size-cells =3D <0x1>;
                        ...
                        partition@7 {
                                label =3D "system";
                                reg =3D <0x220000 0x7de0000>;
                        };
                };
        };

	and without this patch barebox passes three bytes for
	partition@7's reg property instead of only two which naturally
	confuses Linux and yields to the system partition to start at 0
	with a size of 0x220000.

Other than than that:

Reported-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
Tested-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Thanks
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
