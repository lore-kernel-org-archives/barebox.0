Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SPX1I-0005r1-Sn
 for barebox@lists.infradead.org; Wed, 02 May 2012 10:42:53 +0000
Date: Wed, 2 May 2012 12:42:49 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20120502104249.GA20039@pengutronix.de>
References: <4FA10C8D.9010803@sensometrix.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4FA10C8D.9010803@sensometrix.ch>
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
Subject: Re: Flashing kernel from Linux
To: Patrick Gerber <patrick.gerber@sensometrix.ch>
Cc: barebox@lists.infradead.org

On Wed, May 02, 2012 at 12:29:33PM +0200, Patrick Gerber wrote:
> Dear mailing list
> =

> I used to flash the linux kernel using barebox update command.
> Now I would like to do the same from the Linux side. A simple dd to
> /dev/mtdblockX used to work with uboot but doesn't work with
> barebox. Barebox complain at startup about bad image...
> Do you have any hint about how to flash the kernel from the Linux side ?
You first need to erase the flash (using flash_erase from the mtd-utils)
and then you might need to use nandwrite to actually write the image.

IIRC Busybox contains these utilities, too.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
