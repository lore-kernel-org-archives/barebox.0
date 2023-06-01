Delivery-date: Thu, 01 Jun 2023 07:15:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4aep-005Ln9-IR
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 07:15:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4aem-0001Zk-HH
	for lore@pengutronix.de; Thu, 01 Jun 2023 07:15:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/cJJKwaAOrIVv60YOAJAsbmQjYqU+iahMrEGXtPfB1I=; b=scKP/jl0QZgLDnt+pOFN3J9Ilc
	UI6cQ0ghN/IagDPzeMMEVIWjvIPtx4dmjUa/wV7BpSZCl2HXivK6Y5ROh90KqqbuowtW7ADtFFL+M
	PPC5NzriTEJDZbAlVvJdY4vAZdsMU3eRFOVxzyr/C3jeY/JRDOhqYZEsOa50Db8d5zZMk+ZYF9rX9
	zbVTQGZE/7yIfUmLkxMmAvlfK/mowmRrHL/PwA3BYQxPcEM/WmtczTaeSx6R8ThKq0lSH+tZDa/b8
	IqkYnjacCPQ/1B8rEG9wHYzDqU22nZO7b39WCI8kaBORLMzDWsWKtIhQCRoZZmBec7k8+K/+A2Bw8
	vh9VSt8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4adh-00205R-1l;
	Thu, 01 Jun 2023 05:14:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4add-00203a-2i
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 05:14:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q4adb-0001H3-Sw; Thu, 01 Jun 2023 07:14:15 +0200
Message-ID: <6992d62d-fb84-6f0a-e93a-d28b093a4afe@pengutronix.de>
Date: Thu, 1 Jun 2023 07:14:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-16-a.fatoum@pengutronix.de>
 <20230531175414.c3jt54gihuvceddu@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230531175414.c3jt54gihuvceddu@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_221417_884115_C38220B5 
X-CRM114-Status: GOOD (  23.02  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 15/18] state: factor device path lookup into helper
 function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 31.05.23 19:54, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 23-05-31, Ahmad Fatoum wrote:
>> The #ifdef __BAREBOX__ is meant for easier synchronization with
>> dt-utils. We'll keep that intact, but move it out of the function to not
>> break reading flow. After sync, dt-utils would now need to implement
>>
>>   of_cdev_find
>>   cdev_to_devpath
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/state/state.c | 30 +++++++++++++++++++++++-------
>>  1 file changed, 23 insertions(+), 7 deletions(-)
>>
>> diff --git a/common/state/state.c b/common/state/state.c
>> index 11cc86ff73be..88e246198fb8 100644
>> --- a/common/state/state.c
>> +++ b/common/state/state.c
>> @@ -581,6 +581,20 @@ void state_release(struct state *state)
>>  	free(state);
>>  }
>>  
>> +#ifdef __BAREBOX__
>> +static char *cdev_to_devpath(struct cdev *cdev, off_t *offset, size_t *size)
>> +{
>> +	/*
>> +	 * We only accept partitions exactly mapping the barebox-state,
>> +	 * but dt-utils may need to set non-zero values here
>> +	 */
>> +	*offset = 0;
>> +	*size = 0;
>> +
>> +	return basprintf("/dev/%s", cdev->name);
>> +}
>> +#endif
> 
> We could get rid of the #ifdef if we move this function to some barebox
> internal code not shared with dt-utils.

Setting offset and size to zero makes no sense elsewhere, that's why I left it here.

> Regards,
>   Marco
> 
>> +
>>  /*
>>   * state_new_from_node - create a new state instance from a device_node
>>   *
>> @@ -597,8 +611,9 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
>>  	const char *alias;
>>  	uint32_t stridesize;
>>  	struct device_node *partition_node;
>> -	off_t offset = 0;
>> -	size_t size = 0;
>> +	struct cdev *cdev;
>> +	off_t offset;
>> +	size_t size;
>>  
>>  	alias = of_alias_get(node);
>>  	if (!alias) {
>> @@ -617,11 +632,8 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
>>  		goto out_release_state;
>>  	}
>>  
>> -#ifdef __BAREBOX__
>> -	ret = of_find_path_by_node(partition_node, &state->backend_path, 0);
>> -#else
>> -	ret = of_get_devicepath(partition_node, &state->backend_path, &offset, &size);
>> -#endif
>> +	cdev = of_cdev_find(partition_node);
>> +	ret = PTR_ERR_OR_ZERO(cdev);
>>  	if (ret) {
>>  		if (ret != -EPROBE_DEFER)
>>  			dev_err(&state->dev, "state failed to parse path to backend: %s\n",
>> @@ -629,6 +641,10 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
>>  		goto out_release_state;
>>  	}
>>  
>> +	state->backend_path = cdev_to_devpath(cdev, &offset, &size);
>> +
>> +	pr_debug("%s: backend resolved to %s\n", node->full_name, state->backend_path);
>> +
>>  	state->backend_reproducible_name = of_get_reproducible_name(partition_node);
>>  
>>  	ret = of_property_read_string(node, "backend-type", &backend_type);
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



