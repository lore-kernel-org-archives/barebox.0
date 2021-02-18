Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCfBL-0002Aj-TL
 for barebox@lists.infradead.org; Thu, 18 Feb 2021 09:01:08 +0000
References: <1474779923.1916.1613564552090@office.mailbox.org>
 <20210217123517.GC19583@pengutronix.de>
 <635893483.2404.1613565899806@office.mailbox.org>
 <20210217131702.GD19583@pengutronix.de>
 <1708069310.14913.1613635242547@office.mailbox.org>
 <20210218083444.GD10569@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <2177a110-305f-98ae-f3bc-f2a9db358143@pengutronix.de>
Date: Thu, 18 Feb 2021 10:01:04 +0100
MIME-Version: 1.0
In-Reply-To: <20210218083444.GD10569@pengutronix.de>
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
Subject: Re: Heartbeat LED during init script
To: Sascha Hauer <sha@pengutronix.de>, Marcel Hellwig <barebox+mailing@cookiesoft.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Helo,

On 18.02.21 09:34, Sascha Hauer wrote:
> On Thu, Feb 18, 2021 at 09:00:42AM +0100, Marcel Hellwig wrote:
>> Hey Sasha,
>>
>> I have a slight problem here:
>> This is what I think:
>>
>> Because the memtest gets called in the init routine, the `ctrl` is
>> completly ignored, at least I can't interrupt it nor the LED blinks.
> 
> Yes, ctrlc() is allowed only after startup. We could move calling
> poller_call() up, before we test if ctrlc is allowed.

I believe that's the correct thing to do.
See my "[PATCH 2/3] console: unconditionally run poller_call in ctrlc()"
from a few days ago. You can cherry pick that now if you like.

> 
>> But if I insert `poller_call`, the led blinks, but the memtest is
>> painfully slow (like 10x slower at least).
> 
> poller_call() takes some time. A solution might be to call poller_call()
> just every thousand times or so in memtest loop.
> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
