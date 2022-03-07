Delivery-date: Mon, 07 Mar 2022 18:07:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRGpM-003fyA-6X
	for lore@lore.pengutronix.de; Mon, 07 Mar 2022 18:07:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRGpK-0005CX-WC
	for lore@pengutronix.de; Mon, 07 Mar 2022 18:07:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IFLdSIeVP/UPh2cUOJCXDHQMnmLIHpeiuTohEAqrunw=; b=HdlPsA0fyBaes4
	OmXgHREWnuXMGX1EB3OaK4M/u6AqYuB278eHOUTS9vk5vqhRQMPCMoZmpIgDKvliCJj8FJ/4dqNAf
	wnjWipEY5hUJyEDxyJzm5WSP/0Gmp0wOdenD/EiNlF6JQE5OAZkVnMHaT3EYRE3t4lKCmjEkyYayI
	0UfAj0c/O5eN0k6OTOtuO2ate+hPNSJLc5OkUdgxPsLCtw0SSDQlymQmK7QIHazdTIYo95P1YUl1N
	JrkLFEqdXLlpJK0wzYbsS0RIdLFFJKh27pH7gh3hGaLIQghEL9F5/UQNuO/d82YfVwb9v95mQ1byR
	VNVhXpCNK2kDcuLtYdnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRGoC-000yBG-4i; Mon, 07 Mar 2022 17:06:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRGo7-000yAp-2k
 for barebox@lists.infradead.org; Mon, 07 Mar 2022 17:06:04 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nRGo5-000531-SF; Mon, 07 Mar 2022 18:06:01 +0100
Message-ID: <5c85b663-8848-b84d-c687-bc467c6c1fa0@pengutronix.de>
Date: Mon, 7 Mar 2022 18:06:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
References: <20220305222013.1902586-1-a.fatoum@pengutronix.de>
 <20220306224901.GC18417@tellis.lin.mbt.kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220306224901.GC18417@tellis.lin.mbt.kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_090603_155861_79C4C294 
X-CRM114-Status: GOOD (  17.50  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] common: add printf debugging automation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Jules,

On 06.03.22 23:49, Jules Maselbas wrote:
> Hi Ahmad,
> 
> On Sat, Mar 05, 2022 at 11:20:13PM +0100, Ahmad Fatoum wrote:
>> This allows automating pinpointing of breakage outside PBL. For example
>> if barebox is stuck during startup:
>>
>>   - Turn on CONFIG_DEBUG_LL and CONFIG_DEBUG_INITCALLS
>>   - Note last $initcall executed
> By $initcall are you talking about the function name or about the
> initcall address during startup ?

Function name, that's why KALLSYMS is required. It's not strictly necessary
though and code could just check if the first character is a digit and accept
an address in that case. I will do this for v2.

>> diff --git a/common/Kconfig b/common/Kconfig
>> index b8c3e34c0a58..2a35b43e2717 100644
>> --- a/common/Kconfig
>> +++ b/common/Kconfig
>> @@ -1592,6 +1592,21 @@ config ASAN
>>  	  Enables ASAN (AddressSANitizer) - runtime memory debugger,
>>  	  designed to find out-of-bounds accesses and use-after-free bugs.
>>  
>> +config FTRACE
>> +	bool "Enable function tracing (Only for debugging!)
> missing closing quote here --------------------------------^
> which generated the following warning when building:
> common/Kconfig:1583:warning: multi-line strings not supported

Thanks, will fix for v2.

Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

