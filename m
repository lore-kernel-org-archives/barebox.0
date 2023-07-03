Delivery-date: Mon, 03 Jul 2023 10:58:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGFO1-00DINN-2M
	for lore@lore.pengutronix.de; Mon, 03 Jul 2023 10:58:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGFNy-0001ZK-Ku
	for lore@pengutronix.de; Mon, 03 Jul 2023 10:58:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YgtWSzmjLWOF3CiC54rs2+3gXdADZ5WiWT87jFvKAac=; b=XUMfBWoqT7+VBkrVaPBRKxWQBY
	R9jkhOO/9afvm+gH03Ns1PJBZF6fFhG+sOM6xCjaM7qE8THJsRTw/DaOZcNhmuYeVrgn5Z7WS5oKg
	M7/r8hJOxp3uIap0GPz51rLUXjNPt9HNP3C8TStCs21FQHzH3t/Duaiw4Dy/lZLUEU3sVD/84TKgx
	X6bxQ/QxGeIXP9trcfRXB9TvaKbJN8s0UWrIl7AEYxrg4aiPzBg/LgjxJT12DHEWc870DE3i8kmR7
	O7JoANFXUB436WrzTED6Vwswm7xMJBvjNEMHG/eyKkz6wcLi1nUM2e4pC3CoYO4giubvyi03pHl/2
	6gT1jWPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGFMw-009pQQ-1I;
	Mon, 03 Jul 2023 08:57:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGFMu-009pPc-07
	for barebox@lists.infradead.org;
	Mon, 03 Jul 2023 08:57:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qGFMs-0001TZ-Nt; Mon, 03 Jul 2023 10:57:10 +0200
Message-ID: <ed256aaf-d556-3f62-076a-0e75bb04eedd@pengutronix.de>
Date: Mon, 3 Jul 2023 10:57:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230629065612.1119622-1-a.fatoum@pengutronix.de>
 <20230703085442.GK18491@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230703085442.GK18491@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_015712_074608_D9ED62B6 
X-CRM114-Status: GOOD (  26.01  )
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
Subject: Re: [PATCH master v2 1/2] of: implement of_reparent_node helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 03.07.23 10:54, Sascha Hauer wrote:
> On Thu, Jun 29, 2023 at 08:56:12AM +0200, Ahmad Fatoum wrote:
>> Reparenting nodes can be a useful thing to do in fixups. Add a helper
>> for that.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> v1 -> v2:
>>   - rename from of_move_node to of_reparent_node
>>   - ensure that there's a parent to avoid null pointer deref
>>     (Sascha)
>>   - set node->parent to new_parent (Sascha)
>>   - Remove broken condition on old parent (Sascha)
>> ---
>>  drivers/of/base.c           | 26 ++++++++++++++++++++++++++
>>  include/of.h                |  1 +
>>  test/self/of_manipulation.c |  8 ++++++--
>>  3 files changed, 33 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/of/base.c b/drivers/of/base.c
>> index 4dc1c76b136d..e1134e9c694b 100644
>> --- a/drivers/of/base.c
>> +++ b/drivers/of/base.c
>> @@ -2697,6 +2697,32 @@ void of_delete_node(struct device_node *node)
>>  	free(node);
>>  }
>>  
>> +/*
>> + * of_reparent_node - Move node from beneath one parent to another
>> + * @new_parent: The new parent node
>> + * @node        The node to be moved
>> + */
>> +int of_reparent_node(struct device_node *new_parent, struct device_node *node)
>> +{
>> +	if (!node)
>> +		return 0;
>> +
>> +	if (!new_parent || !node->parent)
>> +		return -EINVAL;
>> +
>> +	list_del(&node->parent_list);
>> +	list_del(&node->list);
> 
> You could put these list operations into a if (node->parent), then @node
> wouldn't necessarily need a parent.

A node without a parent doesn't have a name, that's why I limited
it to nodes that have a parent.

> 
>> +
>> +	free(node->full_name);
>> +	node->full_name = basprintf("%s/%s", new_parent->full_name, node->name);
> 
> That fixes full_name of @node, but not its children.
> 
> One obvious solution would be to iterate over the children and fix the
> name recursively. Another one would be to git rid of the full_name
> member and generate the name dynamically when needed, but that wouldn't be
> master material anymore.

Argh.. Thanks for noticing.


> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



