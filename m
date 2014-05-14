Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkTGE-0004Tr-Sd
 for barebox@lists.infradead.org; Wed, 14 May 2014 07:05:55 +0000
Date: Wed, 14 May 2014 09:05:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140514070532.GW5858@pengutronix.de>
References: <1400006306-5540-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1400006306-5540-1-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH 1/3] asm-generic: add IO memory accessors
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 13, 2014 at 08:38:24PM +0200, Franck Jullien wrote:
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>

Applied 1/3 and 2/3 as fixes to master.

Sascha

> ---
>  include/asm-generic/io.h |   12 ++++++++++++
>  1 files changed, 12 insertions(+), 0 deletions(-)
> 
> diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
> index 3f0f5a2..8d83d68 100644
> --- a/include/asm-generic/io.h
> +++ b/include/asm-generic/io.h
> @@ -219,4 +219,16 @@ static inline void writesb(const void __iomem *addr, const void *buf, int len)
>  	outsb(addr - PCI_IOBASE, buf, len);
>  }
>  
> +#define ioread8(addr)		readb(addr)
> +#define ioread16(addr)		readw(addr)
> +#define ioread16be(addr)	__be16_to_cpu(__raw_readw(addr))
> +#define ioread32(addr)		readl(addr)
> +#define ioread32be(addr)	__be32_to_cpu(__raw_readl(addr))
> +
> +#define iowrite8(v, addr)	writeb((v), (addr))
> +#define iowrite16(v, addr)	writew((v), (addr))
> +#define iowrite16be(v, addr)	__raw_writew(__cpu_to_be16(v), addr)
> +#define iowrite32(v, addr)	writel((v), (addr))
> +#define iowrite32be(v, addr)	__raw_writel(__cpu_to_be32(v), addr)
> +
>  #endif /* __ASM_GENERIC_IO_H */
> -- 
> 1.7.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
