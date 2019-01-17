Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkF8a-0007D5-LJ
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 21:23:46 +0000
Date: Thu, 17 Jan 2019 22:23:39 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190117212339.GA4532@ravnborg.org>
References: <20190117063840.13674-1-andrew.smirnov@gmail.com>
 <20190117063840.13674-9-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190117063840.13674-9-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 08/12] ARM: mmu: Share code for dma_alloc_coherent()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey.

On Wed, Jan 16, 2019 at 10:38:36PM -0800, Andrey Smirnov wrote:
> Both ARM and ARM64 implement almost identical algorithms in
> dma_alloc_coherent(). Move the code to mmu-common.c, so it can be
> shared.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/cpu/mmu-common.c | 21 +++++++++++++++++++++
>  arch/arm/cpu/mmu-common.h |  7 +++++++
We already have rch/arm/cpu/mmu.h, wait is the benefit of the extra header file?
In other words, suggest to move this to mmu.h

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
