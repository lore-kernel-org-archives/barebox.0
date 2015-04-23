Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YlA99-0008OX-7b
 for barebox@lists.infradead.org; Thu, 23 Apr 2015 05:58:00 +0000
Date: Thu, 23 Apr 2015 07:57:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150423055732.GG6325@pengutronix.de>
References: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH v2 00/14] Add support for Lenovo ix4-300d NAS
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Mon, Apr 20, 2015 at 10:11:12PM +0200, Sebastian Hesselbarth wrote:
> This is v2 of the patch set adding support for the Lenovo ix4-300d
> NAS based on Marvell Armada XP MV78230 SoC. Compared to v1 [1] there
> have been the following changes:
> 
> - SPI GPIO bitbang driver now respects -EPROBE_DEFER
> - Add ix4 and its drivers to mvebu_defconfig
> 
> [1] http://www.spinics.net/lists/u-boot-v2/msg23048.html
> 
> Sebastian Hesselbarth (14):
>   net: phy: Support Marvell 88E1318S PHY
>   gpio: Add driver for 74x164 compatible shift-registers
>   spi: ath79: move spidelay from spi-bitbang-txrx
>   spi: Add SPI GPIO bitbang driver
>   bus: mvebu-mbus: Remove coherency attribute
>   bus: mvebu-mbus: Drop device reference
>   bus: mvebu-mbus: Convert mbus platform driver to direct driver
>   ARM: mvebu: Move PCIe register defines to socid.h
>   ARM: mvebu: armada-xp: Fixup broken MV78230-A0 SoC ID
>   ARM: mvebu: armada-xp: Limit PUP access to Armada XP
>   ARM: mvebu: armada-xp: Use MBUS_ERR_PROP_EN define
>   ARM: mvebu: armada-xp: Sort boards and images alphabetically
>   ARM: mvebu: armada-xp: Add Lenovo Iomega ix4-300d
>   ARM: Add Lenovo ix4 and related drivers to mvebu_defconfig

Applied, thanks

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
