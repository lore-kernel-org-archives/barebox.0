Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YOXP8-0001BT-Qv
 for barebox@lists.infradead.org; Thu, 19 Feb 2015 20:08:59 +0000
Date: Thu, 19 Feb 2015 21:08:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150219200836.GB12209@pengutronix.de>
References: <29A2697B0516A946B1023D5E798DFCF67BACD7A2@mail-yang>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <29A2697B0516A946B1023D5E798DFCF67BACD7A2@mail-yang>
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
Subject: Re: Specify where to save Barebox env
To: "Boulais, Marc-Andre" <maboulais@rheinmetall.ca>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Feb 18, 2015 at 07:55:46PM +0000, Boulais, Marc-Andre wrote:
> Good day,
> I am working on a phytec-phycore-OMAP446  system where the system
> boots from the SD card. On it, I have MLO+barebox.bin (v2015.02). The
> system boots ok.  However, when I set NV variables (from its prompt)
> and then do a "saveenv", I would like the environment to be saved in
> NAND. Is there a way to configure Barebox to do that ?

Normally barebox stores the environment on the medium it is started
from. Looking at arch/arm/boards/phytec-phycore-omap4460/board.c:

#ifdef CONFIG_PARTITION
        devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "xload_raw");
        dev_add_bb_dev("xload_raw", "xload");
        devfs_add_partition("nand0", SZ_128K, SZ_512K, DEVFS_PARTITION_FIXED, "self_raw");
        dev_add_bb_dev("self_raw", "self0");
        devfs_add_partition("nand0", SZ_128K + SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
        dev_add_bb_dev("env_raw", "env0");
#endif

The last two lines create /dev/env0 on nand. If you boot from nand the
environment should be stored there already.

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
