Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkShS-0000eL-MG
 for barebox@lists.infradead.org; Fri, 09 Oct 2015 08:06:47 +0000
Date: Fri, 9 Oct 2015 10:06:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151009080624.GF7858@pengutronix.de>
References: <1444241036-23622-1-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1444241036-23622-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [RFC] common: filetype: is_fat_or_mbr() considered harmful
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Peter,

On Wed, Oct 07, 2015 at 09:03:56PM +0300, Peter Mamonov wrote:
> Deleted pieces of code detect MBR-containig device as a FAT-type device,
> if it's first partition contains a FAT filesystem. So, one can mount the first
> partition of a hard drive containing FAT FS using the following command:
> 	barebox: mount /dev/ata0.0 /mnt/0
> as well as this one:
> 	barebox: mount /dev/ata0 /mnt/1
> Both commands mount the same FS.
> 
> This behaviour causes automount (mount -a) to mount FAT FS
> on a first partition twice:
> 	barebox: mount
> 	none on / type ramfs
> 	none on /dev type devfs
> 	/dev/ata0 on /mnt/ata0 type fat
> 	/dev/ata0.0 on /mnt/ata0.0 type fat
> 	/dev/ata0.1 on /mnt/ata0.1 type ext4

This is_fat_or_mbr mechanism never worked very well and had funny side
effects. Would be nice to get rid of it.
Simply removing this option is not a solution though, we have to find a
proper way to keep the current feature and make it more sane.

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
