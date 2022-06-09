Delivery-date: Thu, 09 Jun 2022 10:19:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzDNq-008YGI-VQ
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 10:19:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzDNp-0006nI-UK
	for lore@pengutronix.de; Thu, 09 Jun 2022 10:19:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kefMEsL0dZs4xL8fo5E6I3QiR1UbkMvnqkpQ1C67yzA=; b=3BG3WIFLDiGA4e
	aMI26sWj8INQCu+Xw2IUgu/tLaPMHNvLq3IzLzmrUeFHgnyJEETSLbcutniQAyrGWmzMqjqCrAYz6
	fh30YjrCwqwNnLlcU9EXd6MhHNAWkVFlRbp/uJetDDd2oQlYwgoV6vc874/GR+aHwcsL+fml0rq8B
	oVnAjfaOibj4llLQgCDidf51qFwCOo/k0BS+d6D5GXyOC7YEba/jxjt1/nkn7NhcLB/ng839BCrvm
	Mseq2hSqRIiHtCWraLrmXaIMs5SIG5Kgg8RUdiHSqE6U/AOQYwrroelvL1T3p0m3G7ImkaZ6pnePf
	K5AqdCZ6EmQVwRdSDfTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzDMS-000Awq-AF; Thu, 09 Jun 2022 08:17:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzDMN-000AtI-4o
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 08:17:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1nzDMK-0006eu-0d; Thu, 09 Jun 2022 10:17:40 +0200
Message-ID: <3882c8e7-c8ff-2d6c-e5fe-7c7f36d3b295@pengutronix.de>
Date: Thu, 9 Jun 2022 10:17:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
References: <20220609054342.661505-1-a.fatoum@pengutronix.de>
 <20220609054342.661505-3-a.fatoum@pengutronix.de>
 <20220609080547.GF1615@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220609080547.GF1615@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_011743_232498_BC60F0AD 
X-CRM114-Status: GOOD (  12.18  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/4] of: reserve: mark runtime firmware code regions
 specially
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 09.06.22 10:05, Sascha Hauer wrote:
>> diff --git a/include/of.h b/include/of.h
>> index 46b96277d581..0d125d8256d6 100644
>> --- a/include/of.h
>> +++ b/include/of.h
>> @@ -55,9 +55,13 @@ struct of_reserve_map {
>>  	uint64_t start[OF_MAX_RESERVE_MAP];
>>  	uint64_t end[OF_MAX_RESERVE_MAP];
>>  	int num_entries;
>> +	u16 runtime_fw : OF_MAX_RESERVE_MAP;
> 
> Please change to:
> 
> struct of_reserve_map_entry {
> 	uint64_t start;
> 	uint64_t end;
> 	u32 flags;
> };
> 
> struct of_reserve_map {
> 	struct of_reserve_map_entry[OF_MAX_RESERVE_MAP];
> 	int num_entries;
> };

Rouven will reuse/replicate this for PBL, so I'd prefer
to go the size conscious route for now.

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

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

