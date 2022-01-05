Delivery-date: Wed, 05 Jan 2022 10:22:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n52VO-00Baez-7G
	for lore@lore.pengutronix.de; Wed, 05 Jan 2022 10:22:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n52VM-0007z5-VM
	for lore@pengutronix.de; Wed, 05 Jan 2022 10:22:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uD684zmb0kzIDj/XweKXjbbYkhXque41UKaJssk0RJ4=; b=pJ1VzyTcyIC7Dax5UDRyay4F/v
	RWjNBgQRF8JTacQ1tFhpUZch7K+Eo9Mb/gslyrewKKOtkwDhw3nw7MC4BcbUSAMF9XPkIVkUVGNyp
	lbOCAiF3XUxXSb3hx2jY5teYRIrUmg0bZGDnhMFh5WQxPH7A9hJWIAITYJvbTacMLVCUH5fkxR6UP
	64vJx73EEqPnEEyX81qw0AhFjRbQZyrMB27Uv+4bOPfLeWmaB8MrqJJNNW7/8NUaHtYZeNt2xCq8N
	/7oboe95E1eFG99W+HRb3COZ5nDYSfMJJhksiqItOR50mCHsaD1fp5uR33Ja7ptU7gyDydIaVIDqc
	/4YY0Zlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n52U6-00EKGu-0F; Wed, 05 Jan 2022 09:21:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n52U0-00EKEp-Jo
 for barebox@lists.infradead.org; Wed, 05 Jan 2022 09:21:26 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n52Tx-0007rx-Lt; Wed, 05 Jan 2022 10:21:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220103120336.1729791-1-a.fatoum@pengutronix.de>
 <20220105091423.GQ6003@pengutronix.de>
Message-ID: <089dca59-c852-751a-00c6-df572a832d62@pengutronix.de>
Date: Wed, 5 Jan 2022 10:21:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220105091423.GQ6003@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_012124_701396_49D4694A 
X-CRM114-Status: GOOD (  27.37  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: regulator: add support for enabling/disabling
 regulators
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 05.01.22 10:14, Sascha Hauer wrote:
> On Mon, Jan 03, 2022 at 01:03:36PM +0100, Ahmad Fatoum wrote:
>> For testing regulator drivers, it can be handy to enable/disable them
>> from the shell prompt. Extend the regulator command to support this.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  commands/regulator.c     | 38 +++++++++++++++++++++++++++++++++++---
>>  drivers/regulator/core.c |  8 ++++++++
>>  include/regulator.h      |  1 +
>>  3 files changed, 44 insertions(+), 3 deletions(-)
>>
>> diff --git a/commands/regulator.c b/commands/regulator.c
>> index 3e2595f8bfc1..e6b2f4852db4 100644
>> --- a/commands/regulator.c
>> +++ b/commands/regulator.c
>> @@ -6,16 +6,48 @@
>>  #include <common.h>
>>  #include <command.h>
>>  #include <regulator.h>
>> +#include <getopt.h>
>>  
>>  static int do_regulator(int argc, char *argv[])
>>  {
>> -	regulators_print();
>> +	struct regulator *chosen;
>> +	int opt, ret;
>> +
>> +	while ((opt = getopt(argc, argv, "e:d:")) > 0) {
>> +		switch (opt) {
>> +		case 'e':
>> +		case 'd':
>> +			chosen = regulator_get_name(optarg);
>> +			if (IS_ERR_OR_NULL(chosen)) {
>> +				printf("regulator not found\n");
>> +				return COMMAND_ERROR;
>> +			}
>> +
>> +			ret = opt == 'e' ? regulator_enable(chosen)
>> +				         : regulator_disable(chosen);
>> +			regulator_put(chosen);
>> +			return ret;
> 
> The barebox regulator core distinguishes between struct regulator and
> struct regulator_internal. regulator_internal represents the physical
> regulator whereas regulator is allocated for each consumer. If the
> regulator core were a bit more sophisticated then a regulator would
> have it's own enable count and you would be warned when a regulators
> enable count goes below zero.
> 
> I agree that controlling regulators on the command line would be useful,
> but I also don't want to block extending the regulator core in such a
> way.

Should I move the command implementation then into drivers/regulator/core.c?

That's what I did here[1], but I seem to recall that you objected to
moving the command into drivers/ to access internals, when the API
should suffice/be extended. I can't find the mail right now though or
perhaps my recollection is erroneous.

So how to proceed?

[1]: https://lore.barebox.org/barebox/20191106094459.w32tgsl22ty34vhe@pengutronix.de/#t

Cheers,
Ahmad

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

