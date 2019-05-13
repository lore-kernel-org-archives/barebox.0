Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ9tf-0001ZY-AZ
 for barebox@lists.infradead.org; Mon, 13 May 2019 12:17:36 +0000
Date: Mon, 13 May 2019 14:17:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190513121733.ltfzf2nn3opsw4b7@pengutronix.de>
References: <1557540308-10843-1-git-send-email-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557540308-10843-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH] arch: add KBUILD_DEFCONFIG to allow "make defconfig"
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

On Sat, May 11, 2019 at 11:05:08AM +0900, Masahiro Yamada wrote:
> Currently, "make defconfig" is only supported for sandbox and x86.
> 
> I set KBUILD_DEFCONFIG to support "make defconfig" where I was able
> to find a suitable one.
> 
> nios2 and openrisc have a single generic_defconfig, so it is definitely
> good for KBUILD_DEFCONFIG.
> 
> For arm, mips, I assume qemu is a preferred choice over a real board.
> 
> blackfin has only one defconfig. Since it is inactive (it is gone in
> Linux), so no more defconfig will come in.

Yes, blackfin is dead. I should remove it from barebox. It hasn't seen
an active commit for years now.

> 
> I am not sure about ppc and riscv, so I did not touch them.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---

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
