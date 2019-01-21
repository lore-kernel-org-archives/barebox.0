Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glU6c-0007IB-KB
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 07:34:52 +0000
Date: Mon, 21 Jan 2019 08:34:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190121073446.n6cgvaqthiruzyvy@pengutronix.de>
References: <20190118003827.17517-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190118003827.17517-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 00/12] ARM/ARM64 MMU code consolidation, zeroing of
 DMA coherent memory
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 17, 2019 at 04:38:15PM -0800, Andrey Smirnov wrote:
> Everyone:
> 
> This series is a result of my attempt at changing the behaviour of
> dma_alloc_coherent() to guarantee that memory it returns is zeroed
> out. Mostly to avoid having to do that explicitly in driver code, but
> also to match behaviour that that function has in Linux. While working
> on that I noticed that there was a fair bit of MMU/DMA related code
> between ARM/ARM64 that can be shared, so I created a number of patches
> to do just that.
> 
> Feedback is welcome!

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
