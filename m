Delivery-date: Tue, 12 Aug 2025 18:18:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulrhy-009ivs-0V
	for lore@lore.pengutronix.de;
	Tue, 12 Aug 2025 18:18:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulrhx-0005OV-Io
	for lore@pengutronix.de; Tue, 12 Aug 2025 18:18:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GvHaE8fHuYKJTzovdq1wdM6e98ldgDfu00qYCxvAcG8=; b=a1BkTSLAdoW1CjDd9IVjJLrIej
	9JS1tCKnu4XBYNBCj/6iYTqT7f2P6lZ7AOQUXGtjik0QQsHYA2MbWPlBDUr2H1CoBhjkaCrQP+0c1
	m8DE2u2twfhkf/I7nRO1momfJUavq5Wmq+EkfFIvbCaYuuNggvlJCitZ/VCL20Cpb+mlskOELZxEX
	GY4hoP5dHX4JJ0Sj5pdfhL1cGXqnXYLTIy5fuHbPH3U1LhrLrCMAKKrT7PinJgJoJ8+l6N1QLI0dx
	ZJaEjWKsx+iJt3Tl5dyl+hccZ0cDYhhuPUYb8OlSHj0gXuhmmUeFKf82ecI1N+vQs/MmyuR+eufKK
	SEmIsIFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulrhh-0000000BHGb-0KUT;
	Tue, 12 Aug 2025 16:18:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ullYm-0000000AQYa-1HeB
	for barebox@lists.infradead.org;
	Tue, 12 Aug 2025 09:44:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ullYk-0000ue-Ef; Tue, 12 Aug 2025 11:44:46 +0200
Message-ID: <ffd2461f-b3eb-4866-9157-04f284c5c3e8@pengutronix.de>
Date: Tue, 12 Aug 2025 11:44:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
 <20250811122824.1667791-24-a.fatoum@barebox.org>
 <aJsK9lRVzTzBt7Fu@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aJsK9lRVzTzBt7Fu@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_024448_349179_95DEC2DE 
X-CRM114-Status: GOOD (  17.50  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 23/44] optee: add revision info to tee devinfo output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 8/12/25 11:35, Sascha Hauer wrote:
> On Mon, Aug 11, 2025 at 02:28:03PM +0200, Ahmad Fatoum wrote:
>> We currently only report an implementation ID when doing devinfo on the
>> tee device. Improve upon that by translating the ID to a string and
>> printing the OP-TEE revision if possible.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
>> ---
>>  drivers/tee/optee/smc_abi.c | 16 +++++++++++-----
>>  drivers/tee/tee_core.c      | 20 +++++++++++++++++++-
>>  2 files changed, 30 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/tee/optee/smc_abi.c b/drivers/tee/optee/smc_abi.c
>> index aab8ebb186ed..0b8d581cf19b 100644
>> --- a/drivers/tee/optee/smc_abi.c
>> +++ b/drivers/tee/optee/smc_abi.c
>> @@ -549,8 +549,10 @@ static bool optee_msg_api_uid_is_optee_api(optee_invoke_fn *invoke_fn)
>>  	return false;
>>  }
>>  
>> -static void optee_msg_get_os_revision(optee_invoke_fn *invoke_fn)
>> +static void optee_msg_get_os_revision(struct device *dev,
>> +				      optee_invoke_fn *invoke_fn)
>>  {
>> +	struct param_d *param;
>>  	union {
>>  		struct arm_smccc_res smccc;
>>  		struct optee_smc_call_get_os_revision_result result;
>> @@ -564,10 +566,14 @@ static void optee_msg_get_os_revision(optee_invoke_fn *invoke_fn)
>>  		  &res.smccc);
>>  
>>  	if (res.result.build_id)
>> -		pr_info("revision %lu.%lu (%08lx)\n", res.result.major,
>> -			res.result.minor, res.result.build_id);
>> +		param = dev_add_param_fixed(dev, "revision", "%lu.%lu (%08lx)",
>> +					    res.result.major, res.result.minor,
>> +					    res.result.build_id);
>>  	else
>> -		pr_info("revision %lu.%lu\n", res.result.major, res.result.minor);
>> +		param = dev_add_param_fixed(dev, "revision", "%lu.%lu",
>> +				    res.result.major, res.result.minor);
>> +
>> +	pr_info("revision %s\n", param->get(dev, param));
> 
> In 20/44 you protected this with a if (!IS_ERR(param)). Don't we need this
> here as well?

Yes, good point. I will add a helper that does this check and use if for
v2 (which will hopefully be much shorter, because the rest is applied? ;-)

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



