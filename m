Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5o1Q-00035r-Cg
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 08:53:30 +0000
Date: Mon, 18 Mar 2019 09:53:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190318085326.iug3uzy5ejyyg654@pengutronix.de>
References: <20190318073242.30339-1-user@vserver64>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190318073242.30339-1-user@vserver64>
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
Subject: Re: [PATCH] ARM: i.MX: extend kindle-mx50 defconfig
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org, Roland Hieber <rohieb@rohieb.name>

On Mon, Mar 18, 2019 at 07:32:42AM +0000, Alexander Kurz wrote:
> From: Alexander Kurz <akurz@blala.de>
> 
> The current defaultenv-kindle-mx50 requires MCI_STARTUP to boot the installed
> linux. CMD_LOADY is mentioned in the doc for barebox update purposes.
> FS_EXT4, FS_FAT and FS_FAT_WRITE gives users file system access. Also enable
> CMD_MEMTEST, CMD_CLK, CMD_REGULATOR and CMD_EDIT for interested users.
> The extended image will consume 195kB of available 253kB.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/configs/kindle-mx50_defconfig | 28 +++++++++++-----------------
>  1 file changed, 11 insertions(+), 17 deletions(-)

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
