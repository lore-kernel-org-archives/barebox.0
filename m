Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Taisj-0002A7-FJ
 for barebox@lists.infradead.org; Tue, 20 Nov 2012 08:08:40 +0000
Date: Tue, 20 Nov 2012 09:08:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121120080831.GE10369@pengutronix.de>
References: <alpine.DEB.2.02.1211190946120.13661@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1211190946120.13661@oneiric>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: where is tftp mounting documented in the source code?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Nov 19, 2012 at 09:48:41AM -0500, Robert P. J. Day wrote:
> 
>   perusing the wiki and ran across page on TFTP support:
> http://wiki.barebox.org/doku.php?id=filesystems:tftp which suggests:
> 
>   mount 192.168.1.1 tftp /mnt/tftp

This was the original mount behaviour. This was recently changed to
mount -t fstype <ip> /dir, mainly to allow making the fstype option
optional for autodetecting the type. The wiki page is out of date here.
As a sidenote I brought back the old behaviour as a compatibility option
to not break old environments.

>   bootm /mnt/tftp/uImage
> 
> but where is that documented in the source or help?  if i configure in
> long help options, then i get:
> 
> barebox:/ help mount
> Usage: mount [[-t <fstype] <device> <mountpoint>]
> Mount a filesystem of a given type to a mountpoint.
> If no fstype is specified, try to detect it automatically.
> If no argument is given, list mounted filesystems.
> 
> which says nothing about tftp mounting.  where would someone already
> running barebox bring up help info that explains the tftp mounting?

mount -t tftp 192.168.1.1 /mnt/tftp

The special thing about tftp is that tftp does not have directory
listing support, so you will always see an empty directory, even when
mounted. The files are there nevertheless and can be accessed.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
