Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx4Lh-0002Cy-3K
 for barebox@lists.infradead.org; Mon, 12 Aug 2019 07:02:34 +0000
Date: Mon, 12 Aug 2019 09:02:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190812070231.rqwbytsywcumzyok@pengutronix.de>
References: <20190807163046.6160-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807163046.6160-1-yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH 1/2] riscv: use generic bitsperlong.h
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 08, 2019 at 01:30:45AM +0900, Masahiro Yamada wrote:
> Linux highly depends on the fact that the 'long' and the pointer
> have the same width, and so does barebox.
> 
> So, we can always use include/asm-generic/bitsperlong.h, which
> determines BITS_PER_LONG depending on CONFIG_64BIT.
> 
> This is what Linux does (at least in the kernel-space), and barebox
> can follow it.
> 
> Currently, barebox only supports 32-bit riscv, but this should work
> when it supports 64-bit by adding CONFIG_64BIT to arch/riscv/Kconfig.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
>  arch/riscv/include/asm/bitsperlong.h | 11 +----------
>  1 file changed, 1 insertion(+), 10 deletions(-)

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
