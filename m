Delivery-date: Wed, 17 Nov 2021 09:13:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnG4U-0007OK-45
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 09:13:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnG4T-0007cx-3F
	for lore@pengutronix.de; Wed, 17 Nov 2021 09:13:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=REp4iWZcSb2W5lY5n2V1A5kKDIuAHWMMSE9oShsWUNI=; b=jAMLbj3BbeyEeP74KPVrCEFZKF
	iCYt+CT/G4dKRvkPxYX0cHWmLpTE9GTQTTfxF6q7i1zCbPq+iT8rdu3hUsZNIU1apEUibNDfybWYp
	R6DHuBJqZ0MJgBKfPBqT5b0rS5HDKoQfJHiz94/HiZbxYrf+ubfVinsPhjRSqvHnXRNny4CTlxsiq
	yq2Fg8Z2jk/Gzz1/PhzwawsSabuZiAOQVDRaSPf5mVbFn25ln519/sO0aUyR+BwZGHPRiIQQrVRJb
	bF39bLsKQUkVzvM9g26jPw5l2FkQIsMpwISSWEBwmczE39M57E8K68pZwORLlWLUm/uYLARqiIjSq
	WWyH1UDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnG36-003uO4-EB; Wed, 17 Nov 2021 08:12:08 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnG30-003uMr-GK
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 08:12:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
 Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rtlXeOpIsPcKlcI8xRpDuzY0GbvCwVvlzcuL29aDEdw=; b=kfurn1x+5e1jOSor5UM6LzaJFI
 d5jplHrw5MH89lW2F9kagaiCoyfVVAIBnBiwl0DCtuNqug98fjBok1E8CHHZFsbSNf+lqVEKK7fXL
 PkDqrLtH0QzeAfkTIdYJulC+xCVBr1dZjLjv4eVkcuIIiQI1+Z/DIVOFHBhF9bwQu8rypXSZQj9ZL
 r/5TvunN1UBHqZGzwiaMFVninXMQW9mSIY+eg651R7l5KC2r3v7alQBMLWDc943NL7fQWYhdEEWzL
 MxJraIeEsyybTFdsyX1E6M3Avv/HGDP9WA+VdBkU4fSf4UVGLDfF/nveGWIYUJ8zgzXduYwQvoHFT
 HgWSjf8w==;
Received: from [89.212.21.243] (port=36166 helo=[192.168.69.215])
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>)
 id 1mnG2k-003IPK-0D; Wed, 17 Nov 2021 09:11:54 +0100
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Y.Bas@phytec.de, s.riedmueller@phytec.de
References: <20211115130208.619443-1-andrej.picej@norik.com>
 <20211115130208.619443-4-andrej.picej@norik.com>
 <20211117072118.GH6556@pengutronix.de>
From: Andrej Picej <andrej.picej@norik.com>
Message-ID: <bc395f93-7380-cc0c-9aad-78fd81d1dba6@norik.com>
Date: Wed, 17 Nov 2021 09:11:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211117072118.GH6556@pengutronix.de>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_001202_904142_D353C30F 
X-CRM114-Status: GOOD (  21.51  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] regulator: allow use of dummy regulator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 17. 11. 21 08:21, Sascha Hauer wrote:
> On Mon, Nov 15, 2021 at 02:02:06PM +0100, Andrej Picej wrote:
>> It is quite common for users to delete power supply nodes of regulators
>> which aren't yet supported.
>> The idea of a function call or devicetree property which allows use of
>> dummy regulator is not new. This implementation uses barebox specific
>> devicetree property "barebox,allow-dummy-supply" to allow switching to
>> dummy power regulator.
>> Basically just catch the regulators ensure_probed error, if this
>> property is set.
>>
>> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
>> ---
>>   drivers/regulator/core.c | 9 ++++++++-
>>   1 file changed, 8 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
>> index 097f7d779..1c58932e1 100644
>> --- a/drivers/regulator/core.c
>> +++ b/drivers/regulator/core.c
>> @@ -231,8 +231,15 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
>>   	}
>>   
>>   	ret = of_device_ensure_probed(node);
>> -	if (ret)
>> +	if (ret) {
>> +		if (of_get_property(dev->device_node, "barebox,allow-dummy-supply", NULL)) {
>> +			dev_dbg(dev, "Allow use of dummy regulator for " \
>> +				"%s-supply\n", supply);
>> +			ri = NULL;
>> +			goto out;
>> +		}
>>   		return ERR_PTR(ret);
> 
> I wonder if we should rather add a property on the producer side than on
> the consumer side, i.e. Add a barebox,status = "disabled" property to
> the regulator node. We had the same discussion with phys recently, maybe
> we can use the same approach for both issues.
> 

I was wandering that too. But decided to go with consumer side so users 
which might want to use this have to enable this for every consumers 
which can use dummy regulators. IMO this would mean more thought would 
go into this and would be consequently more error prone.

So for producer side did you have in mind that this setting will be set 
for every regulator, like this?

>                 regulators {
>                         vddcore_reg: bcore1 {
> +                               barebox,allow-dummy-supply;
>                                 regulator-min-microvolt = <730000>;
>                                 regulator-max-microvolt = <1380000>;
>                                 regulator-always-on;
>                         };

Or should this setting be set for all regulators provided by the same 
IC, like this?

>                 regulators {
> +                       barebox,allow-dummy-supply;
>                         vddcore_reg: bcore1 {
>                                 regulator-min-microvolt = <730000>;
>                                 regulator-max-microvolt = <1380000>;
>                                 regulator-always-on;
>                         };

I guess we could make both cases work, first check if 
"barebox,allow-dummy-supply" is present in the regulator node and then 
also check parent node (regulators)? What do you think?

BR,
Andrej

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

