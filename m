Delivery-date: Thu, 05 Oct 2023 08:54:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qoIFi-006MmN-EE
	for lore@lore.pengutronix.de; Thu, 05 Oct 2023 08:54:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qoIFf-00062T-VV
	for lore@pengutronix.de; Thu, 05 Oct 2023 08:54:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GVZJf8+Nfb65RbHOS2rkSahevsZkcvItXsux5uznGzY=; b=ReMz/qmVcMP+z10WDMzYUEI7VY
	GUFq5POLhiaX1onafaK7/OFSUa+Xl7orCpCem3s656l1kW5J5USSGUwV3JLdER5HBipzlXRVI7uMV
	Wcs5ehtQRvJiBJxuDFkrnjl+6Fu3Xlvo3BxjQUp5v0f9JjxOOJKY9WdmDvPmM7zMVdg5w78+ywnN4
	osOCAYYi+c2l2mnbcW7PR20AZ2OqVNUND7C+lMZm+ZHbv8SFQ9vQUEDTmmG2NU6DiEbO0kypt/zBe
	QnNaBwfX9rMcvrKJ6Amts5QklMkySffASFZ5CfL1i41097cnl/V3AtHnufXcKUOv7XulFMbHd+FIs
	QXj+Zpjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoIEZ-001Y2i-1a;
	Thu, 05 Oct 2023 06:53:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoIEW-001Y2A-1c
	for barebox@lists.infradead.org;
	Thu, 05 Oct 2023 06:53:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qoIEV-0005hR-8x; Thu, 05 Oct 2023 08:53:15 +0200
Message-ID: <9d7b22f9-ee56-6ab2-c193-4f2b8e02fa39@pengutronix.de>
Date: Thu, 5 Oct 2023 08:53:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230914073018.3462650-1-a.fatoum@pengutronix.de>
 <20230926113853.GC637806@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230926113853.GC637806@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_235316_540078_B2FADF93 
X-CRM114-Status: GOOD (  22.96  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: platform: don't fail of_find_device_by_node() if no
 driver bound
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 26.09.23 13:38, Sascha Hauer wrote:
> On Thu, Sep 14, 2023 at 09:30:18AM +0200, Ahmad Fatoum wrote:
>> of_find_device_by_node() may be called by a driver following
>> of_platform_populate in order to bind the children to drivers.
>> It's thus wrong to return NULL when a device has been found, but no
>> driver was registered. That also aligns the function with the
>> expectation resulting from its name: A device is found and devices may
>> be bound or not.
> 
> I hesitated applying this one because I am not sure if some users expect
> to have a driver bound when of_find_device_by_node() returns a valid
> pointer.
> 
> I applied it now, let's see what happens.

I ran into this porting the CAAM driver to work on i.MX8M. I don't know
if existing drivers are affected, but it's the correct thing to do.

> 
> Sascha
> 
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/of/platform.c | 6 ++----
>>  1 file changed, 2 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
>> index bd5f2ad82c6b..1f79a539f541 100644
>> --- a/drivers/of/platform.c
>> +++ b/drivers/of/platform.c
>> @@ -23,11 +23,9 @@
>>  struct device *of_find_device_by_node(struct device_node *np)
>>  {
>>  	struct device *dev;
>> -	int ret;
>>  
>> -	ret = of_device_ensure_probed(np);
>> -	if (ret)
>> -		return NULL;
>> +	/* Not having a driver is not an error here */
>> +	(void)of_device_ensure_probed(np);
>>  
>>  	if (deep_probe_is_supported())
>>  		return np->dev;
>> -- 
>> 2.39.2
>>
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



