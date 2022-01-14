Delivery-date: Fri, 14 Jan 2022 10:34:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Iyv-001uv0-TU
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 10:34:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Iyu-0000Dm-9R
	for lore@pengutronix.de; Fri, 14 Jan 2022 10:34:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xk55CpmcvuN6a19ABO75p6SQCJxZ2Yy+v98zCkhck90=; b=ywxiHbpnQdj3f1HeNQpDbKFCf8
	Je7zLV7vn0DUNQc0WfTY3UUt1cLebsTMTiXZNmxROFBUgKi97eqUedtbFotA235OaWX4RGESop8/S
	npGMZ5CU00GkfTc28OqOCbHvT5LN9JBQPu1llPVoZk4yFwV9JkXMSj3iXpgDI5d0Dm6EjHBkHRXot
	PdKZUN1Cy57s2v2WN3ylq0t3sX+/OAuB4yYz+p9jU++E9gLaWBqTzQB6rLfx0fDYqoEPsHD4Ktxrg
	/vwPiFl5jmFgY+K7uGoNaqCbzp1vTE1F6Q5CUFdENAIS9S/2DXC61J4uzoD7kq+5Y0BqpR/dCmhFW
	XLf11wtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8Ixi-008X31-04; Fri, 14 Jan 2022 09:33:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8Ixb-008X1R-K3
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 09:33:29 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n8Ixa-000061-Ab; Fri, 14 Jan 2022 10:33:26 +0100
To: Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
References: <20220114083825.726347-1-ahmad@a3f.at>
 <20220114092128.GT26619@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <176bb9ec-8382-de2e-5109-17d519730aa8@pengutronix.de>
Date: Fri, 14 Jan 2022 10:33:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220114092128.GT26619@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_013327_710324_8509E240 
X-CRM114-Status: GOOD (  20.07  )
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
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] ARM: rockchip: add new ARCH_ROCKCHIP_{V7,V8} symbols
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 14.01.22 10:21, Sascha Hauer wrote:
> On Fri, Jan 14, 2022 at 09:38:23AM +0100, Ahmad Fatoum wrote:
>> In preparation for adding rk3399 support, which is another SoC with
>> ARMv8 CPUs, add new ARCH_ROCKCHIP_{V7,V8} symbols for the common
>> functionality.
>>
>> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
>> ---
>>  arch/arm/mach-rockchip/Kconfig  | 18 ++++++++++++------
>>  arch/arm/mach-rockchip/Makefile |  5 +++--
>>  2 files changed, 15 insertions(+), 8 deletions(-)
>>
>> diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
>> index 2e855714f7da..596de663f9e3 100644
>> --- a/arch/arm/mach-rockchip/Kconfig
>> +++ b/arch/arm/mach-rockchip/Kconfig
>> @@ -12,24 +12,30 @@ config RK_TIMER
>>  	hex
>>  	default 1
>>  
>> -config ARCH_RK3188
>> +config ARCH_ROCKCHIP_V7
>>  	bool
>>  	select CPU_V7
>>  	select ARM_SMP_TWD
>>  	select ARCH_HAS_L2X0
>>  
>> +config ARCH_RK3188
>> +	bool
>> +	select ARCH_ROCKCHIP_V7
>> +
>>  config ARCH_RK3288
>>  	bool
>> -	select CPU_V7
>> -	select ARM_SMP_TWD
>> -	select ARCH_HAS_L2X0
>> +	select ARCH_ROCKCHIP_V7
>>  	select CLOCKSOURCE_ROCKCHIP
>>  
>> -config ARCH_RK3568
>> +config ARCH_ROCKCHIP_V8
>>  	bool
>>  	select CPU_V8
>> -	select ARM_ATF
>>  	select SYS_SUPPORTS_64BIT_KERNEL
>> +	select ARM_ATF
>> +
>> +config ARCH_RK3568
>> +	bool
>> +	select ARCH_ROCKCHIP_V8
>>  
>>  comment "select Rockchip boards:"
>>  
>> diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
>> index 72bf77c1e124..474b8629d13f 100644
>> --- a/arch/arm/mach-rockchip/Makefile
>> +++ b/arch/arm/mach-rockchip/Makefile
>> @@ -1,9 +1,10 @@
>>  # SPDX-License-Identifier: GPL-2.0-only
>>  
>>  obj-y += rockchip.o
>> -pbl-$(CONFIG_ARCH_RK3568) += atf.o
>> +pbl-$(CONFIG_ARCH_ROCKCHIP_V8) += atf.o
>>  obj-$(CONFIG_ARCH_RK3188) += rk3188.o
>>  obj-$(CONFIG_ARCH_RK3288) += rk3288.o
>> +obj-pbl-$(CONFIG_ARCH_RK3399) += rk3399.o
> 
> We don't have this yet, removed this hunk while applying.

Thanks, missed that during the rebase. I want to polish that
a bit before sending out in the following weeks.

Thanks,
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

