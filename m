Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1emgPP-0000lD-Fo
 for barebox@lists.infradead.org; Fri, 16 Feb 2018 13:50:42 +0000
Date: Fri, 16 Feb 2018 14:50:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180216135027.il7pvnf6lskw3wkb@pengutronix.de>
References: <20180205171815.19272-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180205171815.19272-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] partitions: Align partition numbering with that of Linux
 kernel
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Mon, Feb 05, 2018 at 09:18:15AM -0800, Andrey Smirnov wrote:
> Change the way Barebox numbers DOS/EFI partitions, such that it would
> be consistent with how Linux kernel does it. With this change:
> 
>   - Both types of partitions are numbered starting from 1, not 0
> 
>   - Extended DOS partitions always start from 5, leaving first 4 to
>     non-extended ones.

I am not very happy with this change because it breaks boards expecting
a certain numbering. See for example:

arch/arm/mach-omap/omap_generic.c:116:static char *envpath = "/mnt/mmc0.0/barebox.env";
arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc:3:global.bootm.image=/mnt/mmc0.0/linuximage
arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc1:3:mount /dev/mmc1.0

There are more examples in-tree and for sure more out of tree.

We need very strong reasons to change this numbering.

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
