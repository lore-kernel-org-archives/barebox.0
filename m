Delivery-date: Tue, 13 Apr 2021 17:06:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWKcK-0007yk-AS
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 17:06:18 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWKcJ-0007qi-CN
	for lore@pengutronix.de; Tue, 13 Apr 2021 17:06:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L5rAA2V2FnrBtrPRNEVZDooeW6CNDvdFufgZgBf3Swc=; b=L57KBJTDK8sweQn4YLTPBLkDG
	sUfhZpiLQH87aOOs3DA0Q30/0gUdooUpKt9EzHtdmS63Xu2SXAydAy/7P4jqahKaJ/K11zXgvn+Pr
	qP8SLzLLYZkR0wpB6nDYjYq1uPHCIAqAwOvr2oaKBWdKY+GdS4lSupMe/sxkQh1wQ4umN7mxWom9G
	qAhmLuRdPnQStCCmwltRSozrG7bEqk8QZ43IOb5U4/Qp9rTZdrY5UMZK1MAEHUZdcef7h2NTstH80
	WC9yn3xDRTaSzeONJ6naC8IA5NqSS9X8nhpH7NDeQ5WYL6zKiSgZWKBzn8gHDDASuR3Vl7HUsuEi5
	kEBu5GpiQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWKam-009aZM-G1; Tue, 13 Apr 2021 15:04:40 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWKaT-009aXe-0r
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 15:04:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=Tx1bjbLZDIFp5eHypYzo21zYLwLoIedlmvRNMBq8woI=; b=gj1e2LdOcNO63NWSF9Hsj6Y+eQ
 itjMKeOhS/wkhpFeh0l+M+czNEqzOleuWMx7j6icVdJHt1cSXnXG4JdM6FAIXIjaF3c4g6ee0fhMs
 i27M6XWuQxmYY7uaAFZL/aQM4dDWdv72ioI8zadrneUgq8ff5UH82XxTEbo5P6yZeatzTDdsJ5/Bk
 B19rV4HKApupWqN74DhJjZDPDimrucx2FBfk6msbmc00TBBympfLVVhDl9t2uqQtjGBdwjodZm1ML
 DHo0Kx6TKqmHGUyIQWtQ8zA1QzoPgnXTAQm/Ol1U3LQM6NLER6K7uPCQzhqs89hxp3QuaOEwUWUfI
 itJ3VaZg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWKaQ-0077t4-88
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 15:04:19 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lWKaM-0007L0-D5; Tue, 13 Apr 2021 17:04:14 +0200
To: Sascha Hauer <sha@pengutronix.de>, Lars Pedersen <lapeddk@gmail.com>
Cc: barebox@lists.infradead.org, Bruno Thomsen <bruno.thomsen@gmail.com>
References: <20210413061727.186938-1-lapeddk@gmail.com>
 <20210413092340.241337-1-lapeddk@gmail.com>
 <20210413134048.GO19819@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <b95f7406-03a3-f7ea-43bf-8731ed5046dd@pengutronix.de>
Date: Tue, 13 Apr 2021 17:04:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210413134048.GO19819@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_080418_319199_BCC65B8A 
X-CRM114-Status: GOOD (  20.22  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: Fix Kamstrup mx7 concentrator default cfg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 13.04.21 15:40, Sascha Hauer wrote:
> Hi Lars,
> 
> On Tue, Apr 13, 2021 at 11:23:40AM +0200, Lars Pedersen wrote:
>> Select CONFIG_POWER_RESET_GPIO_RESTART for Kamstrup mx7 concentrator
>> board.
>>
>> Signed-off-by: Lars Pedersen <lapeddk@gmail.com>
>> Reviewed-by: Bruno Thomsen <bruno.thomsen@gmail.com>
>> ---
>> Requires patch ARM: i.MX: Kamstrup mx7 concentrator board support
>>
>>  arch/arm/mach-imx/Kconfig | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
>> index cc73d0a0d..4ee8ffe4b 100644
>> --- a/arch/arm/mach-imx/Kconfig
>> +++ b/arch/arm/mach-imx/Kconfig
>> @@ -530,6 +530,7 @@ config MACH_KAMSTRUP_MX7_CONCENTRATOR
>>  	bool "Kamstrup i.MX7 Concentrator"
>>  	select ARCH_IMX7
>>  	select ARM_USE_COMPRESSED_DTB
>> +	select CONFIG_POWER_RESET_GPIO_RESTART
> 
> I wouldn't select it. CONFIG_POWER_RESET_GPIO_RESTART depends on other
> options and Kconfig can't automatically select the dependencies.

GPIOLIB is selected via ARCH_IMX. This leaves OFDEVICE=n, which
wouldn't be a valid configuration anyway for this board and probably
all of imx_v7_defconfig..? Should maybe IMX_MULTI_BOARDS select it?

> Also if you don't want to make use of the gpio restart driver then you
> don't want to be forced to compile it in.

If a board deems reset important enough to force it when enabled,
why not?

Cheers,
Ahmad

> 
> Sascha
> 
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

