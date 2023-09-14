Delivery-date: Thu, 14 Sep 2023 09:53:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qghA8-00ElaZ-Ja
	for lore@lore.pengutronix.de; Thu, 14 Sep 2023 09:53:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qghA6-0002i7-Hi
	for lore@pengutronix.de; Thu, 14 Sep 2023 09:53:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h3pL1T0KMVu+T2bM6ITfcCBo1PCZHweLiNEyx51t9Gs=; b=H01hp8QnWsAArYwLsrNp+6DNH7
	XKzAfePTmnSWpGmSso4F5z6dChsTM12VA7i1AjkXsRNRrDDPzPVwuOvGgQweXqZyltidp+sa3XEB9
	KjEgf+2/nB4STC2iZh9+hsm/N7rsHee5BqCCc/jdpgxQSz4qtUb9lyQvYuqOCrqHrJyDTwAhXQMwJ
	sGui7GPfNAhcFeJGGxAJHE8KbRyGrQy5DpLsGE/rCMDGCFhfIV8poZi8NxXRPeQX3L4tm0xYWR0B2
	0Ot6XJ+X1MM30qBWVzJErsFOacdz2LDwSEdDALMX0NN5PK+RGw2Td330dpn61KGX/7bBJ/qIP9grm
	Cn0teQkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgh92-007cn3-3B;
	Thu, 14 Sep 2023 07:52:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgh8z-007cll-1W
	for barebox@lists.infradead.org;
	Thu, 14 Sep 2023 07:52:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qgh8x-0001zq-RD; Thu, 14 Sep 2023 09:52:07 +0200
Message-ID: <1572d68f-7796-23a5-1654-e9b77de4f7c5@pengutronix.de>
Date: Thu, 14 Sep 2023 09:52:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230913120807.1869600-1-a.fatoum@pengutronix.de>
 <20230913120807.1869600-2-a.fatoum@pengutronix.de>
 <20230914074640.GI637806@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230914074640.GI637806@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_005209_504037_848E29BC 
X-CRM114-Status: GOOD (  21.64  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] clk: implement clk_get_enabled helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 14.09.23 09:46, Sascha Hauer wrote:
> On Wed, Sep 13, 2023 at 02:08:06PM +0200, Ahmad Fatoum wrote:
>> Kernel code increasingly uses devm_clk_get_enabled to make driver code
>> more compact. Port a devres-less version to barebox to make porting such
>> Linux code easier.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  include/linux/clk.h | 29 +++++++++++++++++++++++++++++
>>  1 file changed, 29 insertions(+)
>>
>> diff --git a/include/linux/clk.h b/include/linux/clk.h
>> index 82022e78e39d..398427eca676 100644
>> --- a/include/linux/clk.h
>> +++ b/include/linux/clk.h
>> @@ -951,4 +951,33 @@ static inline struct clk *clk_get_optional(struct device *dev, const char *id)
>>  	return clk;
>>  }
>>  
>> +/**
>> + * clk_get_enabled - clk_get() + clk_prepare_enable()
>> + * @dev: device for clock "consumer"
>> + * @id: clock consumer ID
>> + *
>> + * Return: a struct clk corresponding to the clock producer, or
>> + * valid IS_ERR() condition containing errno.  The implementation
>> + * uses @dev and @id to determine the clock consumer, and thereby
>> + * the clock producer.  (IOW, @id may be identical strings, but
>> + * clk_get may return different clock producers depending on @dev.)
>> + *
>> + * The returned clk (if valid) is enabled.
>> + */
>> +static inline struct clk *clk_get_enabled(struct device *dev, const char *id)
>> +{
>> +	struct clk *clk;
>> +	int ret;
>> +
>> +	clk = clk_get(dev, id);
>> +	if (IS_ERR(clk))
>> +		return clk;
>> +
>> +	ret = clk_enable(clk);
>> +	if (ret)
>> +		return ERR_PTR(ret);
> 
> As this isn't devm managed you should release the clock in the error
> path.

clk_put is an empty stub in barebox and nearly all drivers just keep the clocks
on and let Linux worry about it. I think the helper is a net improvement,
even if it behaves a bit different.

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



