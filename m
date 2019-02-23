Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gxUO3-0003RS-59
 for barebox@lists.infradead.org; Sat, 23 Feb 2019 10:18:28 +0000
Date: Sat, 23 Feb 2019 11:16:12 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190223101612.GA24086@ravnborg.org>
References: <20190220072930.14300-1-andrew.smirnov@gmail.com>
 <20190220072930.14300-3-andrew.smirnov@gmail.com>
 <f18cf7da-6ca0-d3b6-0a77-9da7bef39276@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f18cf7da-6ca0-d3b6-0a77-9da7bef39276@kalray.eu>
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
Subject: Re: [PATCH 02/25] usb: xhci-hcd: Do not zero out DMA coherent memory
To: Yann Sionneau <ysionneau@kalray.eu>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Wed, Feb 20, 2019 at 10:29:49AM +0100, Yann Sionneau wrote:
> I'm not sure dma_alloc_coherent() should return zeroed out memory.
> 
> I'm pretty sure it does not.
> 
> mips arch seems to memset it to 0, but not all arch do that.

Christoph Hellwig had a patch series that zeroed memory for
all archs on dma_alloc_coherent() and friends.
https://lkml.org/lkml/2018/12/14/103

barebox should do the same as I see it.

I recall the patch series is applied but I did not check.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
