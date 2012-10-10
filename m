Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLrzr-0007Tn-J9
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 08:50:32 +0000
Date: Wed, 10 Oct 2012 10:50:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121010085029.GS27665@pengutronix.de>
References: <1354932.YHvktshCZC@linux-xmcx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354932.YHvktshCZC@linux-xmcx>
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
Subject: Re: USB to Serial
To: =?iso-8859-15?Q?G=FCnter?= Gebhardt <guenter.gebhardt@freenet.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 09, 2012 at 10:46:03AM +0200, G=FCnter Gebhardt wrote:
> Hello,
> =

> is there support for USB to Serial Converters?

We have support for serial when barebox is the device
(drivers/usb/gadget/serial.c), but not for USB serial converters.

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
