Delivery-date: Thu, 28 Nov 2024 08:43:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGZBe-001Mlf-1K
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 08:43:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGZBe-00079f-BR
	for lore@pengutronix.de; Thu, 28 Nov 2024 08:43:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hDnADEx0a8tGkwig/bJRdic25Sjc1J/ceB5NRmSgGi4=; b=KvadGmSX2Mg/8xyFai46kbX8Pv
	iynVT5DLlyB19ySOC5OBhM2E7994xmKhyS8t92OnS+3B/xHkekKElnXmWzQAwVBedkAaHNJTx0xF2
	BG4RBTA1PBk5w+SSnRFiYh7A50yAESkil/6MZzXYvQIPTyDTghpxMgbGPlrgj/2mhns/EEIBAmnW2
	9WDpPzLdzMK4cG/LQbwN8stDSqz3WxCzlRWRcezif6Q2glZqqu8CBGybvkjf9J+DBiknkGxPKjymi
	Zn3f7iwwzCyrN5I4xLhViv8k6iqF8LU0ZyWQBMvEbfedfjuODLv5znCJ3iX2q4zaRhJLhHMyp+6jP
	pY8pl9dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGZBE-0000000EuGr-0bCV;
	Thu, 28 Nov 2024 07:43:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGZBC-0000000EuGU-1rJS
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 07:43:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tGZBB-00072E-4R; Thu, 28 Nov 2024 08:43:13 +0100
Message-ID: <f7b07b73-65cc-4e8a-ac78-acff92aa2387@pengutronix.de>
Date: Thu, 28 Nov 2024 08:43:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20241126151744.3621717-1-a.fatoum@pengutronix.de>
 <20241126151744.3621717-5-a.fatoum@pengutronix.de>
 <Z0gdl5vSvNaLYqXP@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z0gdl5vSvNaLYqXP@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_234314_485581_BA81A37E 
X-CRM114-Status: GOOD (  16.06  )
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
Subject: Re: [PATCH 4/4] net: implement ethaddr_string_cmp()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 28.11.24 08:36, Sascha Hauer wrote:
> On Tue, Nov 26, 2024 at 04:17:44PM +0100, Ahmad Fatoum wrote:
>> We keep ethernet addresses either in binary or in text form at a couple
>> of places, e.g. device tree, device parameters, struct net_device,
>> ... etc. We have memcmp() and strcmp() respectively to compare each, add
>> one more function to compare a text string with binary. This will be
>> used in a follow up commit.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  include/net.h |  2 ++
>>  net/lib.c     | 17 +++++++++++++++++
>>  2 files changed, 19 insertions(+)
>>
>> diff --git a/include/net.h b/include/net.h
>> index d9b7953a3c33..dbc45b806a51 100644
>> --- a/include/net.h
>> +++ b/include/net.h
>> @@ -366,6 +366,8 @@ IPaddr_t getenv_ip(const char *name);
>>  int setenv_ip(const char *name, IPaddr_t ip);
>>  
>>  int string_to_ethaddr(const char *str, u8 enetaddr[6]);
>> +void ethaddr_to_string(const u8 enetaddr[6], char *str);
>> +int ethaddr_string_cmp(const u8 enetaddr_a[6], const char *str_b);
>>  
>>  #ifdef CONFIG_NET_RESOLV
>>  int resolv(const char *host, IPaddr_t *ip);
>> diff --git a/net/lib.c b/net/lib.c
>> index dc6e138f392c..59bd4c280caf 100644
>> --- a/net/lib.c
>> +++ b/net/lib.c
>> @@ -37,6 +37,23 @@ int string_to_ethaddr(const char *str, u8 enetaddr[ETH_ALEN])
>>  	return 0;
>>  }
>>  
>> +void ethaddr_to_string(const u8 enetaddr[ETH_ALEN], char *str)
>> +{
>> +	sprintf(str, "%02x:%02x:%02x:%02x:%02x:%02x",
>> +		 enetaddr[0], enetaddr[1], enetaddr[2], enetaddr[3],
>> +		 enetaddr[4], enetaddr[5]);
>> +}
> 
> Do you reintroduce this function on purpose or due to rebasing
> conflicts? A MAC address can now be printed with "%pM".

I wanted to avoid the CONFIG_PRINTF_HEXSTR dependency.

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


