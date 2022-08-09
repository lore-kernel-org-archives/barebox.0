Delivery-date: Tue, 09 Aug 2022 10:30:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLKdT-00H93n-Mx
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 10:30:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLKdT-00063c-U9
	for lore@pengutronix.de; Tue, 09 Aug 2022 10:30:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9E1we5+s7KxITyWvYbuFV20qrM3cNZy8Ze20AYFEhmM=; b=CUxju0s6ZDeR61GdfzdmZZNQ9e
	xGiullx1EGj7YqJeQUHSb0zJXcL62xORuvL2ala8EBBxExc7NkajVtdqV2vSy5yBfvd4j/P6ua7cj
	ybTpm8X++rIeWNCRah5sq3oQ46RcAj5xtc6ylDVS0384LHXGAbHVwDw/ZxcwTp7X8tsniIoX8hiq1
	JqTkYyuOwe0Rn79DO/TRVnPRRkFVP9qWea29w2gg41EvStoPgYafo291YB6qQCM+HJqW/QB9sHywl
	TgX4pNmLQ69drthPS8MahZ6/AmKEzmWlUl2Ak6vSNh6Dn1AvBUtDZVIUQlqYvzHDtf0wVOj5kdSsd
	0nEAY6aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLKc2-002lcN-HW; Tue, 09 Aug 2022 08:29:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLKbr-002laG-ES
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 08:29:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oLKbm-0005ia-Re; Tue, 09 Aug 2022 10:29:02 +0200
Message-ID: <a0095f0c-67eb-b3ee-5f34-36f0eef6f5b9@pengutronix.de>
Date: Tue, 9 Aug 2022 10:29:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220809055733.1544311-1-a.fatoum@pengutronix.de>
 <20220809072659.qq7pdgm3rqwhoiwv@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220809072659.qq7pdgm3rqwhoiwv@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_012907_518145_990A2A13 
X-CRM114-Status: GOOD (  25.36  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] of: implement of_append_property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 09.08.22 09:26, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 22-08-09, Ahmad Fatoum wrote:
>> board code fix up the device tree for OS consumption. Sometimes it's
>> useful for the fixup to append onto an existing property.
>> Add a helper that simplifies this.
> 
> do you have a particular use-case for this?

I have two boards that aren't yet upstream with board support
code using this:

 - One uses it to append onto the model string information about the
   SoM revision

 - One parses a format from an EEPROM and fixes up the device tree
   accordingly. If it encounters the same tag twice, it appends
   onto the previous property instead of overwriting.

I figured if I needed it twice, it can be useful to others as well.
The tests should ensure it doesn't bit rot until hardware is
finalized and board support is upstreamed.

Cheers,
Ahmad 


> 
> Regards,
>   Marco
> 
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/of/base.c | 36 ++++++++++++++++++++++++++++++++++++
>>  include/of.h      |  8 ++++++++
>>  2 files changed, 44 insertions(+)
>>
>> diff --git a/drivers/of/base.c b/drivers/of/base.c
>> index 101b2f74c74f..0893bdf3e04f 100644
>> --- a/drivers/of/base.c
>> +++ b/drivers/of/base.c
>> @@ -2321,6 +2321,42 @@ int of_set_property(struct device_node *np, const char *name, const void *val, i
>>  	return 0;
>>  }
>>  
>> +int of_append_property(struct device_node *np, const char *name, const void *val, int len)
>> +{
>> +	struct property *pp;
>> +	void *buf = NULL;
>> +	int orig_len = 0;
>> +
>> +	if (!np)
>> +		return -ENOENT;
>> +
>> +	pp = of_find_property(np, name, NULL);
>> +	if (pp) {
>> +		buf = pp->value;
>> +		orig_len = pp->length;
>> +	}
>> +
>> +	buf = realloc(buf, orig_len + len);
>> +	if (!buf)
>> +		return -ENOMEM;
>> +
>> +	memcpy(buf + orig_len, val, len);
>> +
>> +	if (pp) {
>> +		pp->value = buf;
>> +		pp->length += len;
>> +
>> +		if (pp->value_const) {
>> +			memcpy(buf, pp->value_const, orig_len);
>> +			pp->value_const = NULL;
>> +		}
>> +	} else {
>> +		pp = __of_new_property(np, name, buf, len);
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>>  int of_property_sprintf(struct device_node *np,
>>  			const char *propname, const char *fmt, ...)
>>  {
>> diff --git a/include/of.h b/include/of.h
>> index c65cef5a5a7c..97b4b3dd79bd 100644
>> --- a/include/of.h
>> +++ b/include/of.h
>> @@ -131,6 +131,8 @@ extern struct device_node *of_get_cpu_node(int cpu, unsigned int *thread);
>>  
>>  extern int of_set_property(struct device_node *node, const char *p,
>>  			const void *val, int len, int create);
>> +extern int of_append_property(struct device_node *np, const char *p,
>> +			      const void *val, int len);
>>  extern struct property *of_new_property(struct device_node *node,
>>  				const char *name, const void *data, int len);
>>  extern struct property *of_new_property_const(struct device_node *node,
>> @@ -515,6 +517,12 @@ static inline int of_set_property(struct device_node *node, const char *p,
>>  	return -ENOSYS;
>>  }
>>  
>> +static inline int of_append_property(struct device_node *np, const char *p,
>> +				      const void *val, int len)
>> +{
>> +	return -ENOSYS;
>> +}
>> +
>>  static inline struct property *of_new_property(struct device_node *node,
>>  				const char *name, const void *data, int len)
>>  {
>> -- 
>> 2.30.2
>>
>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


