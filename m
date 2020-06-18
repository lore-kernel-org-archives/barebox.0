Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlunD-0003nF-OO
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 13:41:25 +0000
Date: Thu, 18 Jun 2020 15:41:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200618134121.GL11869@pengutronix.de>
References: <1592403665-18064-1-git-send-email-u74147@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1592403665-18064-1-git-send-email-u74147@gmail.com>
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
Subject: Re: [PATCH v2] MIPS: AR9331: OKUD Max9331
To: Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 17, 2020 at 10:21:05PM +0800, Du Huanpeng wrote:
> Oleksij and Kevin's Useless Devices.
>         O&KUD Max9331
> 
>  AR9331 400MHz MIPS
>    64M DRAM
>    16M SPI Flash
>     4G USB Nand Flash
>      3 User LEDs
>      3 Ports(1Wan/2Lan)
>      1 TTL Debug Uart
> 
> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  Documentation/boards/mips/max9331.rst          | 144 +++++++++++++++++++++++++
>  arch/mips/boards/Makefile                      |   1 +
>  arch/mips/boards/okud-max9331/Makefile         |   2 +
>  arch/mips/boards/okud-max9331/lowlevel.S       |  22 ++++
>  arch/mips/boards/okud-max9331/lowlevel_boot0.S |  22 ++++
>  arch/mips/configs/ath79_defconfig              |   1 +
>  arch/mips/dts/Makefile                         |   1 +
>  arch/mips/dts/ar9331-okud-max9331.dts          | 140 ++++++++++++++++++++++++
>  arch/mips/mach-ath79/Kconfig                   |   7 ++
>  images/Makefile.ath79                          |   8 ++
>  10 files changed, 348 insertions(+)
>  create mode 100644 Documentation/boards/mips/max9331.rst
>  create mode 100644 arch/mips/boards/okud-max9331/Makefile
>  create mode 100644 arch/mips/boards/okud-max9331/lowlevel.S
>  create mode 100644 arch/mips/boards/okud-max9331/lowlevel_boot0.S
>  create mode 100644 arch/mips/dts/ar9331-okud-max9331.dts

Applied, thanks

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
