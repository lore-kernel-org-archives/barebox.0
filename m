Delivery-date: Thu, 28 Nov 2024 08:30:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGYzB-001MWh-14
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 08:30:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGYzB-0004no-8t
	for lore@pengutronix.de; Thu, 28 Nov 2024 08:30:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ATwu9Ut7938TK33mqMXChQZekKVQ/dQXSNjMqfy6Q40=; b=lMIwQKZeVeSgAusxyb1IU2VOqP
	e2LNh9xSEgi2j5rBgxxQLKvc0yOGHCsJ+/CEmW9VvUF7DPj8oy5NqFTNs49jxM2Mpi5AUpeXQVF8d
	bVn+NDRj3KTwjA2FuWRctvycXun6uXKQEsJtXTRYqDPmkmF0cHYYxFqokz3UbdOVcvLrqjj147qLW
	wl/TBNg0yWjZuDD7X6hQqpAwBnK5iULLRY7VzTenx6ojyeD3yITiL496ClJouO70fJ6LYEjrKx0Ui
	xKQa5datdJ99zyV/R+n6FeO6c7YrQtASLtop6eQ0Fqx4qas7ulcsWY128fZH7+GdBrqZrsg+a5vv+
	Rlmrn58Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGYyo-0000000Et1u-2T0X;
	Thu, 28 Nov 2024 07:30:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGYyl-0000000Et03-3eCh
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 07:30:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tGYyj-0004gZ-BP; Thu, 28 Nov 2024 08:30:21 +0100
Message-ID: <8465616c-8518-45a6-af57-42286bbdbf1c@pengutronix.de>
Date: Thu, 28 Nov 2024 08:30:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20241126151744.3621717-1-a.fatoum@pengutronix.de>
 <20241126151744.3621717-2-a.fatoum@pengutronix.de>
 <Z0gbpZog23pPY-UA@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z0gbpZog23pPY-UA@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_233023_909997_122711DC 
X-CRM114-Status: GOOD (  20.28  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] net: add ethaddr sequence handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 28.11.24 08:28, Sascha Hauer wrote:
> On Tue, Nov 26, 2024 at 04:17:41PM +0100, Ahmad Fatoum wrote:
>> Instead of storing every MAC address in full, boards may elect
>> to store a base address and increment it N times. Add a helper
>> to iterate over such an Ethernet address sequence. Example usage:
>>
>>   const u8 *eth_addr;
>>   u8 eth_base[ETH_ALEN] = "\x00\x01\x02\x03\x04\x05";
>>   int i = 0, eth_count = 4;
>>
>>   for_each_seq_ethaddr(eth_addr, eth_base, &eth_count)
>>           eth_register_ethaddr(i++, eth_addr);
> 
> 	for (i = 0; i < 4; i++, eth_addr_inc(eth_addr))
> 		eth_register_ethaddr(i, eth_addr);
> 
> I think the open coded variant is easier to read and write, I don't
> think we should introduce a helper for this.

Fair enough. The patch predates the introduction of eth_addr_inc.

Please drop this one patch.

Thanks,
Ahmad

> 
> Sascha
> 
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  include/net.h | 12 ++++++++++++
>>  1 file changed, 12 insertions(+)
>>
>> diff --git a/include/net.h b/include/net.h
>> index a04ed5b0ab92..1b6995b50043 100644
>> --- a/include/net.h
>> +++ b/include/net.h
>> @@ -516,6 +516,18 @@ static inline void eth_addr_add(u8 *addr, long offset)
>>  	u64_to_ether_addr(u, addr);
>>  }
>>  
>> +#define for_each_seq_ethaddr(eth_addr, eth_base, eth_count) \
>> +	for (eth_addr = *eth_count ? eth_base : NULL; eth_addr; eth_addr = eth_addr_seq_next(eth_base, eth_count))
>> +
>> +static inline const u8 *eth_addr_seq_next(u8 eth_base[6], unsigned *eth_count)
>> +{
>> +	if (--(*eth_count) <= 0)
>> +		return NULL;
>> +
>> +	eth_addr_inc(eth_base);
>> +	return eth_base;
>> +}
>> +
>>  typedef void rx_handler_f(void *ctx, char *packet, unsigned int len);
>>  
>>  struct eth_device *eth_get_byname(const char *name);
>> -- 
>> 2.39.5
>>
>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


