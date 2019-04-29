Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0Fj-0007ZM-7g
 for barebox@lists.infradead.org; Mon, 29 Apr 2019 06:59:04 +0000
Date: Mon, 29 Apr 2019 08:59:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190429065900.n7tczvxxnm55nsay@pengutronix.de>
References: <20190425143232.25405-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190425143232.25405-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 0/4] ARM: mmu: misc armv7 cache/MMU fixes
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, lst@pengutronix.de, sam@ravnborg.org

On Thu, Apr 25, 2019 at 04:32:28PM +0200, Ahmad Fatoum wrote:
> This series fixes a number of potential caching issues with armv7.
> 
> They are:
> 
> - Cortex-A7 erratum #814220
>   Because of this erratum, the CPU may reorder cache maintenance operations
>   when it shouldn't.
> - Wrong Cache invalidation order for Cortex-A7
>   On the Cortex-A7, the L2 cache needs to be invalidated before the L1 cache.
> - Device memory isn't marked NX (Never eXecute)
>   NX prevents the CPU instruction prefetcher from inadvertently
>   accessing memory mapped devices

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
