Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e0Jzk-0002cu-5W
 for barebox@lists.infradead.org; Fri, 06 Oct 2017 04:12:18 +0000
Date: Fri, 6 Oct 2017 06:11:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171006041153.xgrjynzwido3mjfj@pengutronix.de>
References: <6f652c2e-d971-052d-8e96-3ae7ad984500@solidxs.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6f652c2e-d971-052d-8e96-3ae7ad984500@solidxs.nl>
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
Subject: Re: Kernel device tree gets modified with bootm command when
 CONFIG_OFDEVICE is enabled
To: Marcel Hamer <marcel@solidxs.nl>
Cc: barebox@lists.infradead.org

Hi Marcel,

On Tue, Oct 03, 2017 at 11:36:49AM +0200, Marcel Hamer wrote:
> Hello,
> =

> When passing a custom device tree to the kernel using the 'bootm' command=
 I
> see the device tree gets 'fixed up' when the CONFIG_OFDEVICE option is
> enabled. Probably this should not be the case when the dtb is passed to t=
he
> kernel?
> =

> This happens on line common/bootm.c:395:
> =

> =A0=A0=A0 oftree =3D of_get_fixed_tree(data->of_root_node);
> =

> Should this not be changed to:
> =

> =A0=A0=A0 oftree =3D of_flatten_db(data->of_root_node);

No. Getting the fixed up tree is exactly what we want here. There are
some cases in which it's absolutely mandatory to use the fixed tree
(memory banks, they are oftem empty in the Linux provided dts files)
and other in which is convenient (mtd, to make sure the kernel sees the
same partitions as the bootloader).
There might be some cases where we want to have more control over which
fixups run and which don't, but generally we want to have the fixed tree
here.

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
