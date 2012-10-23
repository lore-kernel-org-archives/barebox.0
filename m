Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQYiG-0004F9-H8
 for barebox@lists.infradead.org; Tue, 23 Oct 2012 07:15:45 +0000
Date: Tue, 23 Oct 2012 09:15:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121023071542.GM27665@pengutronix.de>
References: <CA+pW49pE4oHFFC4=8UzDm+KTfYVVKWGzcmUT6n+Sza2HkeUL-A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+pW49pE4oHFFC4=8UzDm+KTfYVVKWGzcmUT6n+Sza2HkeUL-A@mail.gmail.com>
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
Subject: Re: How to flash ubi image from barebox
To: Madhu koriginja <madhava.koriginja@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 17, 2012 at 04:41:59PM +0530, Madhu koriginja wrote:
> Hi All,
>              Please help me how to flash the ubi image from barebox.
> I generated the ubifs image using the mkfs.jffs2,

I assume the above is a typo, right? mkfs.jffs2 won't create ubifs
images.

> then I created the ubi
> image using the ubinize. I am trying to flash this ubi image on NAND.
> 
> I tried in two ways
> 1) I flashed the UBI image directly on /dev/nand0.rootfs.bb(erased the
> partition before flash).

This should generally work.

> 
> 2) I executed the below commands from barebox
> #erase /dev/nand0.rootfs.bb
> #ubiattach /dev/nand0.rootfs
>  After this command it created the /dev/ubi0
> #ubimkvol /dev/ubi0 rootfs 0
>    After this command it created the /dev/ubi0.rootfs

This should also work.

Do the parameters to mkfs.ubifs/ubinize match your hardware? Some
parameters are not really obvious.

Also, what hardware are you on?

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
