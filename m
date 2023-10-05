Delivery-date: Thu, 05 Oct 2023 08:50:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qoIBS-006MOq-0m
	for lore@lore.pengutronix.de; Thu, 05 Oct 2023 08:50:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qoIBO-0004wo-Qp
	for lore@pengutronix.de; Thu, 05 Oct 2023 08:50:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HGAVfATy4yDIuH7rLlt5NYr+JpfaIEIFy+nFtiU2HXA=; b=y4Xc2jzPvPbCvyGup3LRgdZO+F
	O9mJST3lOXLzJKZn0Gfgc3r99HGdQSZc6DNojz1nqpzEBOsZ1X7gDGQ1uCW/Cn5D9YBQe/zIPeKnS
	Y7yPyy1mjV8myBAMUNHITpusNiy00i97Zz+GNSKd5JTf/Bt+l5CdKrTu0VU7+MsTMdI3kJzYxWuu+
	w6Wg4wOHyBSMBZVgvTTg8tqcKALz7M6Ck4CtcTw60ro/rE2xivGU0JZlnCEfacBx5wJ14IDK9QZVz
	fCpBcMC5MGkQgOeB1CBAZOu4sZLj6tMbyk6mBBForaSrrkbkugt1hZvwxV2Qc7vLuaKgcpLJDGYy3
	HfwGIDEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoIAG-001XiY-1K;
	Thu, 05 Oct 2023 06:48:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoIAC-001Xi7-1h
	for barebox@lists.infradead.org;
	Thu, 05 Oct 2023 06:48:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qoIAB-0004gO-6s; Thu, 05 Oct 2023 08:48:47 +0200
Message-ID: <6eab50a1-e490-3abf-5009-e1b8165c1cbb@pengutronix.de>
Date: Thu, 5 Oct 2023 08:48:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20231002101654.2373000-1-o.rempel@pengutronix.de>
 <20231002101654.2373000-10-o.rempel@pengutronix.de>
 <20231004064156.GG637806@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231004064156.GG637806@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_234848_583259_9928E296 
X-CRM114-Status: GOOD (  21.30  )
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
Subject: Re: [PATCH v2 09/10] net: lib: add ether_addr_inc() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 04.10.23 08:41, Sascha Hauer wrote:
> On Mon, Oct 02, 2023 at 12:16:53PM +0200, Oleksij Rempel wrote:
>> Add helper function to calculate Ethernet address by incriminating it.
>> This helper can be used for multiport devices like switches to generate
>> address for each port based on one stored address.
>>
>> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
>> ---
>>  include/net.h |  1 +
>>  net/lib.c     | 25 +++++++++++++++++++++++++
>>  2 files changed, 26 insertions(+)
>>
>> diff --git a/include/net.h b/include/net.h
>> index a0ef8bee04..fe82451cc9 100644
>> --- a/include/net.h
>> +++ b/include/net.h
>> @@ -360,6 +360,7 @@ int setenv_ip(const char *name, IPaddr_t ip);
>>  
>>  int string_to_ethaddr(const char *str, u8 enetaddr[6]);
>>  void ethaddr_to_string(const u8 enetaddr[6], char *str);
>> +void ether_addr_inc(u8 *dst_addr, const u8 *src_addr, u32 increment);
>>  
>>  #ifdef CONFIG_NET_RESOLV
>>  int resolv(const char *host, IPaddr_t *ip);
>> diff --git a/net/lib.c b/net/lib.c
>> index d4536441bd..dc7d83bc6d 100644
>> --- a/net/lib.c
>> +++ b/net/lib.c
>> @@ -44,6 +44,31 @@ void ethaddr_to_string(const u8 enetaddr[ETH_ALEN], char *str)
>>  		 enetaddr[4], enetaddr[5]);
>>  }
>>  
>> +/**
>> + * ether_addr_inc - Increment an Ethernet address.
>> + * @dst_addr: Destination address to store the incremented address.
>> + * @src_addr: Source address to be incremented.
>> + * @increment: Value by which to increment the source address.
>> + *
>> + * This function increments the given source Ethernet address by
>> + * the specified increment value, storing the result in the
>> + * destination address.
>> + */
>> +void ether_addr_inc(u8 *dst_addr, const u8 *src_addr, u32 increment)
>> +{
>> +	u32 value;
>> +	int i;
>> +
>> +	for(i = 0; i < 6; ++i)
>> +		dst_addr[i] = src_addr[i];
>> +
>> +	for(i = 5; i >= 0 && increment; --i) {
>> +		value = dst_addr[i] + increment;
>> +		dst_addr[i] = value & 0xFF;
>> +		increment = value >> 8;
>> +	}
>> +}
> 
> The Kernel already has eth_addr_add() and more helpers. How about
> adopting these instead?

I had copied them over here: https://lore.barebox.org/barebox/20230911155927.3786335-2-a.fatoum@pengutronix.de/
They got reverted along with patch 1/3 in that series, but they have no dependency, so could be reinstated.


> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



