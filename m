Delivery-date: Tue, 13 Jun 2023 10:31:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8zQv-004v8m-VO
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 10:31:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8zQt-0002pW-AH
	for lore@pengutronix.de; Tue, 13 Jun 2023 10:31:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YeSDF/zOJ8SfG0Z7cjJorcCcILzeeQLZmmlWqKh5b1k=; b=cWMRlyAc4rQyw9AV6H+vOnZoFm
	bNEDnQGcjX91y0IE87JW4CehXRMd5EoYDtaEe7dubme8n4DUZcX8hPyKryDxzLbi2956gZuTaRYMD
	AYwBwipSd2m/QOPN5wa4TLwYUP34atVg4iacW+wylSve8H05T2Wtr9HF2ukbp/UBMi0k8FHHAoq1N
	xsvzUk6QDNF8QnDKopaJJRZ5o1kmKbK5hDyJcR+jd89uEzX6gjMp0Ejj4mGpV0psb1kvfM6dBjA96
	f+fBS3IIfNmWVjIlN2NluFdMjBp+t5NsPJfvggf4fDbLAt7YqDAIB1UDl3lEdhTI+oKhIil3pJMei
	MlvOaeUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8zPq-007NSU-2n;
	Tue, 13 Jun 2023 08:30:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8zPo-007NRP-1O
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 08:30:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q8zPm-0002Og-IZ; Tue, 13 Jun 2023 10:30:10 +0200
Message-ID: <19baddaa-8b8c-3d51-1a0f-d93fec484d68@pengutronix.de>
Date: Tue, 13 Jun 2023 10:30:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230612125104.1082800-1-a.fatoum@pengutronix.de>
 <20230612125104.1082800-6-a.fatoum@pengutronix.de>
 <20230613082721.GN18491@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230613082721.GN18491@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_013012_509658_2152742E 
X-CRM114-Status: GOOD (  25.85  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v4 5/6] of: implement of_move_node helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 13.06.23 10:27, Sascha Hauer wrote:
> On Mon, Jun 12, 2023 at 02:51:03PM +0200, Ahmad Fatoum wrote:
>> Reparenting nodes can be a useful thing to do in fixups. Add a helper
>> for that.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/of/base.c | 18 ++++++++++++++++++
>>  include/of.h      |  1 +
>>  2 files changed, 19 insertions(+)
>>
>> diff --git a/drivers/of/base.c b/drivers/of/base.c
>> index e3416b5b75a7..43a4a923d9c5 100644
>> --- a/drivers/of/base.c
>> +++ b/drivers/of/base.c
>> @@ -2695,6 +2695,24 @@ void of_delete_node(struct device_node *node)
>>  	free(node);
>>  }
>>  
>> +void of_move_node(struct device_node *parent, struct device_node *node)
>> +{
>> +	if (!node)
>> +		return;
>> +
>> +	list_del(&node->list);
>> +	list_del(&node->parent_list);
>> +
>> +	free(node->full_name);
>> +	node->full_name = basprintf("%s/%s", parent->full_name, node->name);
>> +
>> +	if (!node->parent)
>> +		return;
> 
> Why is the old parent relevant here? Even when node didn't have a parent
> before you should still add it to the children list of the new parent.
> 
> Also node->parent should be set to the new parent.
> 
> You seem to honour the case that node didn't have a parent previously.
> Does the list_del(&node->parent_list) work in this case? I can't see any
> INIT_LIST_HEAD(&node->parent_list) in the code, so I assume running a
> list_del on it results in a NULL pointer dereference.

I will revisit this. Can you pick patches 1-4 though, so we can finally
get this in?

> 
> Sascha
> 
>> +
>> +	list_add(&node->list, &parent->list);
>> +	list_add_tail(&node->parent_list, &parent->children);
>> +}
>> +
>>  /*
>>   * of_find_node_by_chosen - Find a node given a chosen property pointing at it
>>   * @propname:   the name of the property containing a path or alias
>> diff --git a/include/of.h b/include/of.h
>> index 0037bad6c4d7..686c1632c267 100644
>> --- a/include/of.h
>> +++ b/include/of.h
>> @@ -187,6 +187,7 @@ extern struct device_node *of_create_node(struct device_node *root,
>>  extern void of_merge_nodes(struct device_node *np, const struct device_node *other);
>>  extern struct device_node *of_copy_node(struct device_node *parent,
>>  				const struct device_node *other);
>> +void of_move_node(struct device_node *parent, struct device_node *node);
>>  extern struct device_node *of_dup(const struct device_node *root);
>>  extern void of_delete_node(struct device_node *node);
>>  
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



