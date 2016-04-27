Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avPdg-0002pg-O9
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 13:36:25 +0000
Date: Wed, 27 Apr 2016 15:36:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160427133600.GV7860@pengutronix.de>
References: <1461653060-13481-1-git-send-email-s.hauer@pengutronix.de>
 <CAOMZO5BvYEBGnZbT1aznEbgoZH_hZS=a+-phUz+wJPX02BmqFg@mail.gmail.com>
 <20160427092501.GT7860@pengutronix.de>
 <201604271451.17221.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201604271451.17221.jbe@pengutronix.de>
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
Subject: Re: [PATCH v2] ARM: i.MX: increase barebox partition sizes
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 27, 2016 at 02:51:17PM +0200, Juergen Borleis wrote:
> Hi,
> 
> On Wednesday 27 April 2016 11:25:01 Sascha Hauer wrote:
> > [...]
> > > Here the environment partition size is changed from 512kB to 128kB.
> > > Couldn't this cause issues?
> >
> > Normally the environment is much smaller, so I wouldn't expect issues
> > here. The alternative to making the environment smaller would be to move
> > other partitions to the back. This would probably hurt more, especially
> > since a regular fdisk starts the first partition at offset 1MiB.
> 
> It hurts if the NAND's erase block size is 128 kiB and the block is marked bad. 
> In the 512 kiB case this would shrink the environment to 384 kiB, in the 128 
> kiB case to 0. Or do I miss something?

D'oh. Indeed it hurts on Nand. I assumed that this is a MMC partition.
There is no 1MiB requirement on Nand and we do not have a partition
table on Nand which may conflict with the device tree partitions.

Since this is i.MX25 and the imx_defconfig doesn't (yet) build so big
images I will drop this hunk for now.

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
