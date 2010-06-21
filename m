Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OQaYs-0005wH-Lj
	for barebox@lists.infradead.org; Mon, 21 Jun 2010 06:32:51 +0000
Date: Mon, 21 Jun 2010 08:32:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100621063247.GB12115@pengutronix.de>
References: <AANLkTilzfYtRwI1kdFG0O53fRz9NApQnW0P98dZEK-Yo@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTilzfYtRwI1kdFG0O53fRz9NApQnW0P98dZEK-Yo@mail.gmail.com>
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
Subject: Re: Fat32 support
To: Jose Luis Zabalza <jlz.3008@gmail.com>
Cc: barebox@lists.infradead.org

Hello Jos=E9,

On Mon, Jun 21, 2010 at 06:34:31AM +0200, Jose Luis Zabalza wrote:
> Hello All.
> =

> A simple question. Is it posible read a file on fat32 USB memory
> device from barebox?

No, currently not.

> =

> If not, is it posible write some code to do this? What steps will be nece=
ssary?
> - port from linux kernel usb-storage support.?
> - port form linux kernel fat 32 support?

This is surely possible, though you might be better off with the U-Boot
code as a template for porting. You'll probably also need dos
partitioning support.

> =

> My final objetive is firmwarize the board from a USB fat32 USB memory
> device with a new barebox "firmwarize" command because I am surprised
> that there is not on barebox?

I think you don't need an extra command to do this once all necessary
code is in place. It's more a matter of a script like 'usb; mount -tfat
/dev/xxx /mnt; cp /mnt/xy /dev/nor0.kernel;'
We don't have this at the moment because nobody needed it yet. We mostly
use networking or dfu (device firmware update) for updating purposes.
That said patches are very welcome ;)

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
