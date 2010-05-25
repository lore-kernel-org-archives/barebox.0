Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OGu1S-0007NB-3g
	for barebox@lists.infradead.org; Tue, 25 May 2010 13:18:18 +0000
Date: Tue, 25 May 2010 15:18:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100525131816.GN17272@pengutronix.de>
References: <4BFBBF17.8010504@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4BFBBF17.8010504@eukrea.com>
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
Subject: Re: barebox tftp to 2k pagesize NAND
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Tue, May 25, 2010 at 02:14:15PM +0200, Eric B=E9nard wrote:
> Hi,
>
> while running barebox on a i.MX25 which has 2k pagesize nand, I noticed  =

> it's not possible to do a tftp directly to NAND (tftp barebox.bin  =

> /dev/nand0.barebox for example).
>
> tftp try to write 512bytes packets to the NAND thus we get :
> offset 0x00000200 not page aligned
> when it tries to write the second packet.
>
> The workaround is :
> tftp to ram
> cp ram =3D> nand
>
> Do you have any idea on how tof ix this problem ?

Use /dev/nand0.barebox.bb instead. You are not supposed to use the non
bad block aware devices directly.

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
