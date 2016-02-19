Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x230.google.com ([2607:f8b0:400c:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aWqTu-0004ND-JO
 for barebox@lists.infradead.org; Fri, 19 Feb 2016 19:12:47 +0000
Received: by mail-vk0-x230.google.com with SMTP id k196so83780857vka.0
 for <barebox@lists.infradead.org>; Fri, 19 Feb 2016 11:12:25 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160219082915.GO3939@pengutronix.de>
References: <1455792617-13671-1-git-send-email-s.hauer@pengutronix.de>
 <1455792617-13671-2-git-send-email-s.hauer@pengutronix.de>
 <CAHQ1cqHOpW-iv8+wcrz1_azV0Ljs1H_z-E6WZi06opZ3dcqEWQ@mail.gmail.com>
 <20160219082915.GO3939@pengutronix.de>
Date: Fri, 19 Feb 2016 11:12:24 -0800
Message-ID: <CAHQ1cqGi2M1hKD0sMMWp=NRGyOmgtDvTOopE41UzUurErhXwyw@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/3] Fix return check of dev_request_mem_region
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Feb 19, 2016 at 12:29 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Thu, Feb 18, 2016 at 04:58:49PM -0800, Andrey Smirnov wrote:
>> On Thu, Feb 18, 2016 at 2:50 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>> > dev_request_mem_region returns an ERR_PTR, fix places which check for a
>> > NULL pointer instead. This patch has been generated with this semantic
>> > patch:
>> >
>> > // <smpl>
>> > @@
>> > expression e,e1,e2;
>> > @@
>> >
>> > e = dev_request_mem_region(...)
>> > ... when != e = e1
>> > if (
>> > -   e == NULL
>> > +   IS_ERR(e)
>> >    ) {
>> >      ...
>> >      return
>> > -      e2
>> > +      PTR_ERR(e)
>> >      ;
>> >      }
>> > // </smpl>
>>
>> This wouldn't handle correctly the cases where code bails out using
>> goto (look for example at diff for phy-am335x.c in this patch). I
>> played around with Cocinelle as well and here's what I came up with:
>>
>>
>> // <smpl>
>> @i@
>> @@
>>
>> #define CONFIG_TSE_USE_DEDICATED_DESC_MEM
>
> This doesn't work for me. I assume you want to define
> CONFIG_TSE_USE_DEDICATED_DESC_MEM to let coccinelle walk into the
> correct path in drivers/net/altera_tse.c, but for me it still changes
> the !CONFIG_TSE_USE_DEDICATED_DESC_MEM code path.

Hmmm, that is very strange. You are correct, I did include that bit
for that exact purpose. Perhaps we are using different versions of the
tool? Mine is "spatch version 1.0.1 with Python support and with PCRE
support". The way I invoked it was "spatch --sp-file check.cocci
--very-quiet --dir barebox"

>
>>
>>
>> // Handle immediate returns
>> @@
>> expression e;
>> expression e1;
>> @@
>>
>> e = dev_request_mem_region(...);
>>
>> ...
>>
>> - if (e == NULL)
>> -    return e1;
>> + if (IS_ERR(e))
>> +    return PTR_ERR(e);
>>
>> @ rule1 @
>> expression e;
>> @@
>>
>> e = dev_request_mem_region(...);
>>
>> // Fix exit codepath first
>> @@
>> expression rule1.e;
>> identifier ret, label;
>> constant errno;
>> @@
>>
>> if (e == NULL)
>> {
>>
>>   ...
>>
>> // Setting the ret code and jumping to error handling code
>> (
>> - ret = -errno;
>> + ret = PTR_ERR(e);
>>
>>   ...
>>
>>   goto label;
>>
>> // Return after doing some extra steps
>> |
>>
>> - return -errno;
>> + return PTR_ERR(e);
>> )
>> }
>>
>> // Fix the check itself. Having this as a standalone rule allows
>> // to catch cases where error codepath doesn't bail out
>> @depends on i@
>
> I assume you mean "depends on rule1", because otherwise it never
> actually changes the wrong error check.
>

Darn! I missed that regression. The problem with making it depending
on "rule1" is that it misses the cases where only the incorrect check
is performed and no bailing out is done (atmel_nand.c).


> Overall this looks better than my version. I recreated the patch with
> your version and fixed up the altera-tse driver manually.

In case you missed it there's also "dove.c" that needs to be corrected manually.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
