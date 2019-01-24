Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmZQH-0006D0-8u
 for barebox@lists.infradead.org; Thu, 24 Jan 2019 07:27:38 +0000
Date: Thu, 24 Jan 2019 08:27:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190124072734.45xwbq6tjcjln3q5@pengutronix.de>
References: <20190122183825.9046-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190122183825.9046-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2] ARM: zynq: fix "'IO_SPACE_LIMIT' redefined" warning
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Tue, Jan 22, 2019 at 09:38:25PM +0300, Antony Pavlov wrote:
> The patch fixes the following compiler's warning:
> 
> In file included from include/common.h:33:0,
>                  from arch/arm/mach-zynq/zynq.c:18:
> arch/arm/include/asm/io.h:4:0: warning: "IO_SPACE_LIMIT" redefined
>  #define IO_SPACE_LIMIT 0
> 
> In file included from
> arch/arm/mach-zynq/zynq.c:17:0:
> include/asm-generic/io.h:92:0: note: this is the location of the previous definition
>  #define IO_SPACE_LIMIT 0xffff
> 
> Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/arm/mach-zynq/zynq.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

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
