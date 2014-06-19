Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eusmtp01.atmel.com ([212.144.249.242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WxUtR-0004MB-S3
 for barebox@lists.infradead.org; Thu, 19 Jun 2014 05:28:14 +0000
Message-ID: <53A274CE.7060503@atmel.com>
Date: Thu, 19 Jun 2014 13:27:42 +0800
From: Bo Shen <voice.shen@atmel.com>
MIME-Version: 1.0
References: <CACqcpZDTj-XaPOyH+Twhku26eSa-S3p3xDOWszAQC7JKfOyfsA@mail.gmail.com>
 <539A5353.7090306@atmel.com>
 <CACqcpZCNBZ6he2OnqQcdT3dPoeP0nFqSmteHAGYyLKAtAoT=nw@mail.gmail.com>
 <539AF326.7010504@gmail.com> <539E9A90.4010808@atmel.com>
 <20140619043154.GE15426@ns203013.ovh.net>
In-Reply-To: <20140619043154.GE15426@ns203013.ovh.net>
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
Subject: Re: atmel_nand pmecc on 8k page [RFC]
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe PLAGNIOL-VILLARD,

On 06/19/2014 12:31 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 15:19 Mon 16 Jun     , Bo Shen wrote:
>>
>> Hi Matteo,
>>
>> On 06/13/2014 08:48 PM, Matteo Fortini wrote:
>>> Hi all,
>>> glad you found my patch useful. Sascha rejected it because he sees it
>>> more fit to separate the initialization of sama5d3 and sam9 since they
>>> are quite different.
>>>
>>> I started, as advised by Sascha, to create into sam9_smc.c the function
>>>
>>> void sama5d3_smc_configure(int id, int cs, struct sama5d3_smc_config
>>> *config)
>>>
>>> but this brings on some other changes to keep the same structure of
>>> functions,  i.e. we would need to implement
>>>
>>> static void sama5d3_smc_cs_configure(void __iomem *base, struct
>>> sama5d3_smc_config *config)
>>>
>>> and all the related functions, since the argument changes from struct
>>> sam9_smc_config * to struct sama5d3_smc_config *
>>>
>>> Now I'm asking you all for a comment: should we go ahead and create a
>>> new sama5d3_smc.c file with all the functions (some will unfortunately
>>> be a duplicate of those present in sam9_smc.c), or should I do a partial
>>> hack to insert sama5d3 specific functions into sam9_smc.c (like, for
>>> example, playing with config structures so that the sam9 one is just the
>>> head of the sama5d3)?
>>
>> I think we'd better to create a new sama5d3_smc.c. This will be more
>> readable, and also benefit for the new coming SoC.
>
>
> NACK
>
> that was raised on the kernel the sam9 & sama5 does does share the IP the a5
> just have more features

After I search the latest Linux kernel code, I don't find the related 
information, can you be more specific? A link or some reference code 
will be better.

> Best Regards,
> J.

Best Regards,
Bo Shen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
