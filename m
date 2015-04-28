Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yn9ry-0001H2-9L
 for barebox@lists.infradead.org; Tue, 28 Apr 2015 18:04:31 +0000
Date: Tue, 28 Apr 2015 20:04:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150428180406.GM6325@pengutronix.de>
References: <1430233181-17135-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430233181-17135-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] net: e1000: add HAS_DMA dependency
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 28, 2015 at 05:59:41PM +0300, Antony Pavlov wrote:
> The e1000 driver uses the dma coherent functions
> and thus can only be build for architectures implementing them.
> 
> Here is mips malta build error log:
> 
>   drivers/built-in.o: In function `e1000_transmit':
>   drivers/net/e1000.c:(.text.e1000_transmit+0x80): undefined reference to
>   `dma_sync_single_for_device'
>   drivers/built-in.o: In function `e1000_poll':
>   drivers/net/e1000.c:(.text.e1000_poll+0x60): undefined reference to
>   `dma_sync_single_for_cpu'
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/net/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

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
