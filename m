Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiKug-0007D1-Pt
 for barebox@lists.infradead.org; Fri, 20 Dec 2019 16:14:04 +0000
References: <20191219091310.27421-1-l.stach@pengutronix.de>
 <20191219091310.27421-2-l.stach@pengutronix.de>
 <8b2367fa-b90e-0ce0-d906-cf4212a9ef2a@pengutronix.de>
 <98d2d1809d0ec5ce73883bea0280b171e44b7c69.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ee27a60b-785f-d1fb-545a-7d169eae9363@pengutronix.de>
Date: Fri, 20 Dec 2019 17:14:00 +0100
MIME-Version: 1.0
In-Reply-To: <98d2d1809d0ec5ce73883bea0280b171e44b7c69.camel@pengutronix.de>
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
To: Lucas Stach <l.stach@pengutronix.de>, barebox@lists.infradead.org, rcz@pengutronix.de, Lucas Stach <lst@pengutronix.de>

Hi,

On 12/20/19 4:42 PM, Lucas Stach wrote:
>> I did the same in <20191002075754.9257-1-a.fatoum@pengutronix.de>, except for
>> x4-x6 instead of x19-x21, but

Rouven* [was missing here]

> reported that his i.MX8 still didn't boot.
> 
> I have not thoroughly analyzed the called cache maintenance functions,
> but I specifically used x19-x21 as they are defined as callee-saved in
> the aarch64 calling convention.
> x4-x6 would be function parameter/return values, so they might get
> clobbered, right?

Ah, v8_invalidate_dcache_all indeed clobbers x4. So this explains
it. Thanks for fixing. :)

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
