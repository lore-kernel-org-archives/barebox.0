Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXPBd-0001x8-30
 for barebox@lists.infradead.org; Tue, 08 Apr 2014 06:07:09 +0000
Date: Tue, 8 Apr 2014 08:06:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140408060619.GR27055@pengutronix.de>
References: <1396856329-17464-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1396856329-17464-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/3] MIPS: loongson-ls1b: switch to device tree probe
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 07, 2014 at 11:38:46AM +0400, Antony Pavlov wrote:
> New boards should probe from devicetree and
> not use the platform registration code.
> 
> This patchseries adds device tree stuff for
> Longson LS1B SoC and Loongson Tech LS1B Demo Board.
> 
> Antony Pavlov (3):
>   MIPS: add Longson LS1B SoC dtsi file
>   MIPS: add Loongson Tech LS1B Demo Board dts file
>   MIPS: loongson-ls1b: switch to device tree

Applied, thanks.

BTW what's the status of mips devicetree support in Linux Mainline? I
sometimes have a look at arch/mips/boot/dts there and find it empty.
Does the kernel start with the devicetrees you add to barebox?

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
