Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp08.smtpout.orange.fr ([80.12.242.130]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y9IGu-00006d-4d
 for barebox@lists.infradead.org; Thu, 08 Jan 2015 18:57:29 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1420658559-17527-1-git-send-email-robert.jarzmik@free.fr>
 <20150108133933.GC23940@pengutronix.de>
Date: Thu, 08 Jan 2015 19:56:57 +0100
In-Reply-To: <20150108133933.GC23940@pengutronix.de> (Sascha Hauer's message
 of "Thu, 8 Jan 2015 14:39:33 +0100")
Message-ID: <87387l3xty.fsf@free.fr>
MIME-Version: 1.0
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
Subject: Re: [PATCH v2] mtd: nand: add mrvl-nand driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

>
> So when use_default is true you use the last entry in the array. This
> means you could skip reading the nand id when use_default is true. This
> is a bit more efficient and makes the intention of the code more clear.
Absolutely agreed, vor v3.

>> +	if (chip->options & NAND_BUSWIDTH_16)
>> +		ndcr |= NDCR_DWIDTH_M | NDCR_DWIDTH_C;
>> +	else
>> +		ndcr &= ~NDCR_DWIDTH_M & NDCR_DWIDTH_C;
>
> You want to clear both bits here, right? Then this is wrong and
> should be ndcr &= ~NDCR_DWIDTH_M & ~NDCR_DWIDTH_C;
> (or ndcr &= ~(NDCR_DWIDTH_M | NDCR_DWIDTH_C); which I'd consider more
> readable)
Good catch, I'll take your syntax also. As you probably have guessed, my testing
is with a 16 bits wide NAND.

> Otherwise I'm fine with this driver and we can merge it once the pxa3xx
> base support is ready.
Okay, great. I'm working on it. I'll post the v3 to not forget, and then let's
wait until I have pxa3xx support sorted out. I'll repost anyway the driver once
pxa3xx support is ironed out. In the meantime other reviewers could spot
something I overlooked.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
