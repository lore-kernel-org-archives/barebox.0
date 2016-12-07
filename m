Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEib3-0006Mh-1U
 for barebox@lists.infradead.org; Wed, 07 Dec 2016 20:13:45 +0000
Date: Wed, 7 Dec 2016 21:13:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161207201323.i272fd2el3vseclb@pengutronix.de>
References: <1480061167-21590-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1480061167-21590-1-git-send-email-t.remmet@phytec.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/6] ubi: remove character device flag from static volumes
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 25, 2016 at 09:06:01AM +0100, Teresa Remmet wrote:
> Instead of marking static volume device files as character devices 
> introduced a truncate callback for device files.
> This makes it possible to dump static ubi volumes from flash.
> 
> Teresa Remmet (6):
>   libfile: copy_file: Only open regular files with O_TRUNC
>   devfs: Add optional truncate callback for device files
>   ubi: Add truncate callback
>   fs: Remove O_TRUNC check for devices when open files
>   commands: ubi: ubiupdatevol: Open device with O_TRUNC
>   ubi: barebox: Remove character device flag from static volumes

Applied, thanks

Sascha

> 
>  commands/ubi.c            |  2 +-
>  drivers/mtd/ubi/barebox.c | 19 ++++++++++++++++---
>  fs/devfs.c                |  5 +++++
>  fs/fs.c                   |  2 +-
>  include/driver.h          |  1 +
>  lib/libfile.c             | 22 ++++++++++++++++------
>  6 files changed, 40 insertions(+), 11 deletions(-)
> 
> -- 
> 1.9.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
