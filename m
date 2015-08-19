Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tilbrook.insync.tv ([188.122.33.11] helo=mail.insync.tv)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZS4NF-0001Xi-Mu
 for barebox@lists.infradead.org; Wed, 19 Aug 2015 14:29:54 +0000
Message-ID: <55D492C1.3000003@insync.tv>
Date: Wed, 19 Aug 2015 15:29:21 +0100
From: Dave Kitchen <dave.kitchen@insync.tv>
MIME-Version: 1.0
References: <55CB2C1C.4000002@insync.tv>
 <20150819142020.GF18700@pengutronix.de>
In-Reply-To: <20150819142020.GF18700@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: MTD with non-power-of-2 page size
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha

Thank you for the hint. I now have running code with the non-power-of-2 
page size.
Shall I try and generate/submit a patch for this? The code may be 
marginally slower in the power-of-2 case than the original, but I defy 
anyone to notice if they are using spi boot!

Regards
Dave

On 19/08/15 15:20, Sascha Hauer wrote:
> Hi Dave,
>
> On Wed, Aug 12, 2015 at 12:21:00PM +0100, Dave Kitchen wrote:
>>
>> I have just started to work with barebox on an Atmel at91sam9g45 processor.
>> The board has an Atmel AT45DB161 dataflash configured as 528-byte page size.
>> I find that eg saveenv command does not run as the page erase fails
>> with EINVAL. On tracing this is fired from the page size and offset
>> correction code [mtd/core,c mtd_erase_align()] which uses bit
>> masking to align the size and offset. Unfortunately bit-masking does
>> not work with non-power-of-2 pages. Has anyone else addressed this
>> problem?
>>
>> The 'trivial' exercise of replacing the bit masks by modulo [%]
>> operator does not succeed as the compiler I am using (gcc!) does not
>> support long-long divmod.
>
> You could use do_div here which returns the remainder. Also see the
> mtd_div_by_eb() and mtd_mod_by_eb() functions which may be what you are
> looking for.
>
> Sascha
>

-- 
Dave Kitchen
InSync technology Ltd
Tilbrook House
2-4 Grenehurst Way
Petersfield
GU31 4AZ
+44(0) 1730 235117
-fwd

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
