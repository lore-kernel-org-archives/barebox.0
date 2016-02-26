Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZCFu-0003gH-Im
 for barebox@lists.infradead.Org; Fri, 26 Feb 2016 06:52:03 +0000
Date: Fri, 26 Feb 2016 07:51:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160226065139.GL3939@pengutronix.de>
References: <1456391693-25172-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1456391693-25172-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/4] MIPS: ath79: pbl: use more lowlevel init code from
 U-Boot_mod
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 25, 2016 at 12:14:49PM +0300, Antony Pavlov wrote:
> U-Boot_mod is a popular bootloader for Atheros AR93xx chips,
> please see https://github.com/pepe2k/u-boot_mod for details.
> 
> It's reasonable to import some lowlevel AR9331 initialization
> code from U-Boot_mod.
> 
> Antony Pavlov (4):
>   MIPS: ath79: pbl: import AR9331 CP0 init routine from U-Boot_mod
>   MIPS: ath79: pbl: import hornet_1_1_war routine from U-Boot_mod
>   MIPS: tplink-mr3020: pbl: use more lowlevel init code from U-Boot_mod
>   MIPS: black-swift: pbl: use more lowlevel init code from U-Boot_mod

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
