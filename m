Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBoug-0006PF-1e
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 15:31:38 +0000
Date: Wed, 12 Sep 2012 17:31:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120912153134.GY6180@pengutronix.de>
References: <20120912142743.GR31207@game.jcrosoft.org>
 <1347461308-24208-1-git-send-email-plagnioj@jcrosoft.com>
 <1347461308-24208-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347461308-24208-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 3/7] defaultenv: switch hostname to global.hostname
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 12, 2012 at 04:48:24PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 
> diff --git a/arch/arm/boards/eukrea_cpuimx25/env/config b/arch/arm/boards/eukrea_cpuimx25/env/config
> index b6bf93f..9c70988 100644
> --- a/arch/arm/boards/eukrea_cpuimx25/env/config
> +++ b/arch/arm/boards/eukrea_cpuimx25/env/config
> @@ -24,16 +24,16 @@ rootfs_loc=nand
>  
>  # rootfs
>  rootfs_type=ubifs
> -rootfsimage=$hostname/rootfs.$rootfs_type
> +rootfsimage=${global.hostname}/rootfs.$rootfs_type

This fixes all cases where global.hostname is read, but not where it's
set, i.e.

hostname=eukrea-cpuimx25

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
