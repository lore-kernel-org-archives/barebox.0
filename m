Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft7D7-0002tX-9K
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 08:15:12 +0000
Date: Fri, 24 Aug 2018 10:12:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180824081221.sfbshtbnlbeas5aa@pengutronix.de>
References: <20180824025421.19968-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180824025421.19968-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: mmu64: Don't flush freshly invalidated region
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 23, 2018 at 07:54:21PM -0700, Andrey Smirnov wrote:
> Current code for dma_sync_single_for_device(), when called with dir
> set to DMA_FROM_DEVICE, will first invalidate given region of memory
> as a first step and then clean+invalidate it as a second. While the
> second step should be harmless it seems to be an unnecessary no-op
> that could probably be avoided.
> 
> Analogous code in Linux kernel (4.18) in arch/arm64/mm/cache.S:
> 
> ENTRY(__dma_map_area)
> 	cmp	w2, #DMA_FROM_DEVICE
> 	b.eq	__dma_inv_area
> 	b	__dma_clean_area
> ENDPIPROC(__dma_map_area)
> 
> is written to only perform either invalidate or clean, depending on
> the direction, so change dma_sync_single_for_device() to behave in the
> same vein and perfom _either_ invlidate or flush of the given region.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
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
