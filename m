Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VnPee-0007J0-25
 for barebox@lists.infradead.org; Mon, 02 Dec 2013 09:19:00 +0000
Message-ID: <1385975637.4086.0.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 02 Dec 2013 10:13:57 +0100
In-Reply-To: <1385753667.115679915@f393.i.mail.ru>
References: <1385753349-29390-1-git-send-email-l.stach@pengutronix.de>
 <1385753667.115679915@f393.i.mail.ru>
Mime-Version: 1.0
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
Subject: Re: [PATCH] ARM: i.MX6: add initial support for SolidRun Cubox-i
 Carrier-1
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Am Freitag, den 29.11.2013, 23:34 +0400 schrieb Alexander Shiyan:
> > Needs some more work for things like ethernet, right now only
> > MMC and USB are tested.
> ...
> > diff --git a/arch/arm/boards/solidrun-carrier-1/board.c b/arch/arm/boards/solidrun-carrier-1/board.c
> ...
>  +	devfs_add_partition(bootsource_name, 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, barebox_name);
> > +	devfs_add_partition(bootsource_name, SZ_512K, SZ_512K, DEVFS_PARTITION_FIXED, default_environment_name);
> > +	default_environment_path = "/dev/mmc1.bareboxenv";
> 
> Why partitions cannot be moved into dts?
> 
No reason really, except me not thinking about it. Will fix in v2.

Thanks,
Lucas

-- 
Pengutronix e.K.                           | Lucas Stach                 |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5076 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
