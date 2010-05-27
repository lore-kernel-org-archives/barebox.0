Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from h51baff8c.k3918.sta.perspektivbredband.net ([81.186.255.140]
	helo=flatfrog.com)
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OHas7-0005MT-EK
	for barebox@lists.infradead.org; Thu, 27 May 2010 11:03:31 +0000
Message-ID: <4BFE517F.9050704@flatfrog.com>
Date: Thu, 27 May 2010 13:03:27 +0200
From: Orjan Friberg <of@flatfrog.com>
MIME-Version: 1.0
References: <4BFD34A9.6030008@flatfrog.com>
	<20100527093132.GC23664@pengutronix.de>
In-Reply-To: <20100527093132.GC23664@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: OMAP 3530 arch_shutdown "undefined instruction"
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 2010-05-27 11:31, Sascha Hauer wrote:
> Seems this does not work on Cortex Processors. Can you try replacing
> this with the following please:
>
> 	asm volatile (
> 		"bl __mmu_cache_flush;"
> 		"bl __mmu_cache_off;"
> 		:
> 		:
> 		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "cc", "memory"
> 	);

Thanks, this seems to work fine (in the sense that I can load and run a 
second stage bootloader; I haven't tried verifying what happens with the 
I and D cache).

-- 
Orjan Friberg
FlatFrog Laboratories AB

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
