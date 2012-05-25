Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SY0ey-0001Si-RN
 for barebox@lists.infradead.org; Fri, 25 May 2012 19:58:54 +0000
Date: Fri, 25 May 2012 21:58:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120525195847.GT30400@pengutronix.de>
References: <OFFE55D117.F033B5DE-ONC1257A09.006BA85C-C1257A09.006BA869@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OFFE55D117.F033B5DE-ONC1257A09.006BA85C-C1257A09.006BA869@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: NAND defect Block handling
To: =?iso-8859-15?Q?J=FCrgen?= Kilb <J.Kilb@phytec.de>
Cc: barebox@lists.infradead.org

Hi J=FCrgen,

On Fri, May 25, 2012 at 09:35:54PM +0200, J=FCrgen Kilb wrote:
> Hi,
> I discovered a problem which I thought would be handled in a different wa=
y..
> During "tftp 250Mbyte_Testimage.bin /dev/nand0.rootfs.bb" an I/O error oc=
curred
> and tftp stopped downloading/writing the file to the nand0.rootfs.bb part=
ition.
> =

> =3D=3D=3D
> ...###################################write: I/O error
> =

> tftp failed: error -5
> =3D=3D=3D
> =

> As far as I debugged the problem, a block erase error occurred. I thought=
 the
> normal behavior should be, mark the defect block as bad and continue with =

> the next block.
> =

> What is the best way to handle such problems?
> =

> - implement such a behavior if the destination is a *.bb device
> - add a nand_write command
> - add a global option to mark a bad nand block

We have a command for this: nand -b

I think the best was would be to automatically mark a block as bad when
it occurs. It should be configurable during runtime though so that we
can activate it once we know a driver is actually working. Otherwise
many developers end up with 100% bad blocks on their nand devices.

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
