Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiKIP-0007li-0w
 for barebox@lists.infradead.org; Fri, 20 Dec 2019 15:34:30 +0000
References: <20191219091310.27421-1-l.stach@pengutronix.de>
 <20191219091310.27421-2-l.stach@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <8b2367fa-b90e-0ce0-d906-cf4212a9ef2a@pengutronix.de>
Date: Fri, 20 Dec 2019 16:34:25 +0100
MIME-Version: 1.0
In-Reply-To: <20191219091310.27421-2-l.stach@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 1/3] ARM64: entry: save/restore potentially clobbered
 registers
To: barebox@lists.infradead.org, rcz@pengutronix.de, Lucas Stach <lst@pengutronix.de>

Hello Lucas,

On 12/19/19 10:13 AM, Lucas Stach wrote:
> While the comment is correct that currently arm_early_mmu_cache_invalidate()
> is only a call to to v8_invalidate_icache_all() , which doesn't clobber x0-x2,
> this starts to fall apart as soon as we do something more in this function.
> 
> Make sure to properly save/restore the parameters passed to the entry function.

I did the same in <20191002075754.9257-1-a.fatoum@pengutronix.de>, except for
x4-x6 instead of x19-x21, but reported that his i.MX8 still didn't boot.

Cheers
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
