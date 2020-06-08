Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji9pd-0003rn-2F
 for barebox@lists.infradead.org; Mon, 08 Jun 2020 04:56:22 +0000
Date: Mon, 8 Jun 2020 06:56:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200608045616.GG11869@pengutronix.de>
References: <20200603062032.15288-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603062032.15288-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: correctly work with disabled CONFIG_MMU
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>

On Wed, Jun 03, 2020 at 09:20:32AM +0300, Antony Pavlov wrote:
> There are some issues with CONFIG_MMU=n in MIPS configuration
> (e.g. qemu-malta_defconfig):
> 
>   * "Cannot request SDRAM region for stack" error message on start;
>   * empty kseg1_ram0 region in the iomem command output.
> 
> The patch fixes the problems by forcing KSEG1 memory region usage
> for CONFIG_MMU=n MIPS configurations.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/include/asm/io.h | 6 +++++-
>  arch/mips/lib/reloc.c      | 6 +++++-
>  2 files changed, 10 insertions(+), 2 deletions(-)

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
