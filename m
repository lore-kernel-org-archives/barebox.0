Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XoC0k-0001q3-Tc
 for barebox@lists.infradead.org; Tue, 11 Nov 2014 14:01:36 +0000
Date: Tue, 11 Nov 2014 15:01:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141111140108.GU30369@pengutronix.de>
References: <1415643587-12643-1-git-send-email-ezequiel.garcia@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415643587-12643-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: Re: [PATCH v4 0/5] mvebu: Add network support for Armada 370/XP
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Mon, Nov 10, 2014 at 03:19:42PM -0300, Ezequiel Garcia wrote:
> Changes from v3:
> 
>   * As requested by Sascha, added a patch to fix the indentation
>     in the marvell phys array.
> 
> Changes from v2:
> 
>   * Included SPI in the PUP register as noted by Sebastian.
> 
>   * Added MAC flow control configuration. Added missing support
>     for TX-delayed RGMII (RGMII_TXID) and RX-delayed RGMII.
>     As per Sebastian's comments.
> 
>   * Dropped the defconfig patch. mvebu_defconfig should work fine.
> 
> Ezequiel Garcia (5):
>   ARM: mvebu: Enable PUP register
>   net: phy: marvell: Fix array identation
>   net: phy: Support Marvell 88EE1545 PHY
>   net: phy: Support Marvell 88EE1543 PHY
>   net: Add driver for Armada 370/XP 10/100/1000 Mbps network controller

Applied for now. I assume this works generally. I can fold in a fixup
when Uwe has found the problem on his board.

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
