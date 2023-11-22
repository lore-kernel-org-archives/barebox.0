Delivery-date: Wed, 22 Nov 2023 19:40:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5s9L-004i7n-31
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 19:40:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5s9L-0008EX-Th
	for lore@pengutronix.de; Wed, 22 Nov 2023 19:40:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=90xLiIa4WngW0/MWzzslPFRDY01SpWqZTRn2gp6N4fk=; b=JKk/BupdfZVP0V3KtJH4LvrKt6
	OsOYgwFpgOVLAZlCbzpHX7u8drekhULcFcvkMRd2vb8TV4ecRCgNL4020fR21dMiasES5TAoeD2JX
	SiLeT3vnjVMqpXc8cRgHrSsPfFF9Ln4DjUkdBHyzwaIvVVxdPQ3Kz+zR8CpPzp8nVM70fFTGLR5p+
	fkmKQ7Ch72Te27L2xa4eUhhC8IY4FL7oqcGKUNegnxuQ1fjKAlt8oCg8IQOKxutjDKVyjc42kyQI7
	pexKIMdJgCXPVnE9yCzcmY9aVplpuSFV515W1yHXnC6UYG2viG3IHicZzq0J4a7vpet0lUWbOHceb
	noY33vQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5s85-002qTE-0m;
	Wed, 22 Nov 2023 18:39:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5s81-002qS3-0t
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 18:39:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5s7z-0007nu-8E; Wed, 22 Nov 2023 19:39:11 +0100
Message-ID: <38b15584-d75d-7430-7b0a-24a9e7b28104@pengutronix.de>
Date: Wed, 22 Nov 2023 19:39:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220103120336.1729791-1-a.fatoum@pengutronix.de>
 <20220105091423.GQ6003@pengutronix.de>
 <089dca59-c852-751a-00c6-df572a832d62@pengutronix.de>
In-Reply-To: <089dca59-c852-751a-00c6-df572a832d62@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_103913_315178_195CE826 
X-CRM114-Status: GOOD (  27.83  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] commands: regulator: add support for enabling/disabling
 regulators
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 05.01.22 10:21, Ahmad Fatoum wrote:
> Hi,
> 
> On 05.01.22 10:14, Sascha Hauer wrote:
>> On Mon, Jan 03, 2022 at 01:03:36PM +0100, Ahmad Fatoum wrote:
>>> For testing regulator drivers, it can be handy to enable/disable them
>>> from the shell prompt. Extend the regulator command to support this.
>>>
>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> ---
>>>  commands/regulator.c     | 38 +++++++++++++++++++++++++++++++++++---
>>>  drivers/regulator/core.c |  8 ++++++++
>>>  include/regulator.h      |  1 +
>>>  3 files changed, 44 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/commands/regulator.c b/commands/regulator.c
>>> index 3e2595f8bfc1..e6b2f4852db4 100644
>>> --- a/commands/regulator.c
>>> +++ b/commands/regulator.c
>>> @@ -6,16 +6,48 @@
>>>  #include <common.h>
>>>  #include <command.h>
>>>  #include <regulator.h>
>>> +#include <getopt.h>
>>>  
>>>  static int do_regulator(int argc, char *argv[])
>>>  {
>>> -	regulators_print();
>>> +	struct regulator *chosen;
>>> +	int opt, ret;
>>> +
>>> +	while ((opt = getopt(argc, argv, "e:d:")) > 0) {
>>> +		switch (opt) {
>>> +		case 'e':
>>> +		case 'd':
>>> +			chosen = regulator_get_name(optarg);
>>> +			if (IS_ERR_OR_NULL(chosen)) {
>>> +				printf("regulator not found\n");
>>> +				return COMMAND_ERROR;
>>> +			}
>>> +
>>> +			ret = opt == 'e' ? regulator_enable(chosen)
>>> +				         : regulator_disable(chosen);
>>> +			regulator_put(chosen);
>>> +			return ret;
>>
>> The barebox regulator core distinguishes between struct regulator and
>> struct regulator_internal. regulator_internal represents the physical
>> regulator whereas regulator is allocated for each consumer. If the
>> regulator core were a bit more sophisticated then a regulator would
>> have it's own enable count and you would be warned when a regulators
>> enable count goes below zero.
>>
>> I agree that controlling regulators on the command line would be useful,
>> but I also don't want to block extending the regulator core in such a
>> way.
> 
> Should I move the command implementation then into drivers/regulator/core.c?
> 
> That's what I did here[1], but I seem to recall that you objected to
> moving the command into drivers/ to access internals, when the API
> should suffice/be extended. I can't find the mail right now though or
> perhaps my recollection is erroneous.
> 
> So how to proceed?

I keep forward-porting this patch every time I port a regulator driver.
What do I need to do to get this merged?

Cheers,
Ahmad

> 
> [1]: https://lore.barebox.org/barebox/20191106094459.w32tgsl22ty34vhe@pengutronix.de/#t
> 
> Cheers,
> Ahmad
> 
>>
>> Sascha
>>
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



