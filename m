Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jluRC-0002Ln-1M
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 13:18:39 +0000
Date: Thu, 18 Jun 2020 15:18:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200618131835.GK11869@pengutronix.de>
References: <1925287845.342649.1592468544667@mail.vodafone.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1925287845.342649.1592468544667@mail.vodafone.de>
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
Subject: Re: eMMC partitions kernel comand line
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Cc: barebox@lists.infradead.org

Hi Giorgio,

On Thu, Jun 18, 2020 at 10:21:12AM +0200, Giorgio Dal Molin wrote:
> Hallo,
> 
> I'm working on an arm IMX7 module with an eMMC flash on it.
> 
> I don't need/want to have a partition table on the eMMC, some hardcoded
> partitions are just OK. I've already defined them in the barebox device tree
> and it works, for barebox:
> 
> ...
>   partition@0 {
>     label = "bl_env";
>     reg = <BLENV_OFS BLENV_SIZE>;
>   };
>   partition@1 {
>     label = "boot";
>     reg = <BOOT_OFS BOOT_SIZE>;
>   };
> ...
> 
> Unfortunately the same trick is not supported by the linux kernel.
> What works for the kernel is the special command line option:
> 
> blkdevparts=mmcblk1:1M(bl_env),50M(boot),...
> 
> My question is: is it possible to let barebox automatically generate
> this command line according to what it has in its device tree or do I
> have to do it manually.

No, this is currently not possible, at least not without adding this
feature to barebox. Note that barebox doesn't know which MMC device
corresponds to "mmcblk1" as it depends on the initialization order in
Linux which MMC ends up as "mmcblk1".

It might be worth trying to add device tree partitioning support for
MMCs to Linux. The command line option was accepted also, so why not
device tree?

Regards,
  Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
