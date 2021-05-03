Delivery-date: Mon, 03 May 2021 13:44:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX00-0002yK-3U
	for lore@lore.pengutronix.de; Mon, 03 May 2021 13:44:28 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldWzz-0007JV-6J
	for lore@pengutronix.de; Mon, 03 May 2021 13:44:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TeIxJfOVCwmI1WKP3P8Fpeuvst6REkbE+EVAFqoF//U=; b=A2c1srluJedRy9UVAlgtoX6P4
	tRkCtYJ5fR2igAcHnEHa7m89PmaS76wQVHB4EdD4L6UXNnzUXpnK5Cgz1aSO0FpPkWvcSodZubb1o
	vXzpa3id+DJ40mJf5XFeaoB47VYPTkMvkMFmW01Ikevkn2d8wC8t9IhFq43GPsnZVw+ER4CkZEzv/
	gRGyQyBu13LuboYds2mt3u/p87sy7eGiBWt+6HhqzNcYrZLihAwM/d1/pbtKUd7PX/u9O/20Gwm6t
	k/ZbdKZCae1g5DiWw9nEKgLbY3vj+sfjO2oNnMrpVImJ0TSbM9pvnjXv81ynV9i0I4zEHoLe/ixEk
	4C23tCwtg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldWyu-00Dm3D-J2; Mon, 03 May 2021 11:43:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldWvk-00Dlw3-0z
 for barebox@desiato.infradead.org; Mon, 03 May 2021 11:40:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=AHAFlmT820o8Hn6ZZGfq+hbmudjVDuKQ1aTwhjnXGAA=; b=K3OMR7O2yYab25d4F5vtd5LfQQ
 eA66JrYPjdirKxZeFaGpVDfajBQCVTPei8zaBxBjK0FVu28e3wAV9BftQu5GIaFWXS0ActyQeXOVx
 hO3SfyTP1cZbtWSkrbPYzQ+sxxZM6iVu1kS4QFwqAyxNPvKFY1sTiJ4T09mD2fnaUzIJNMyb++Zge
 RT4Sxy/hsuVAziPC/giV+9hvghK9fvHoQKlaOm/nXygsTtcXrV0SKVkzEzMOnql/uEbqJRuGuwgAk
 24B7oY2V4vRdVj100nk14+TZu7RgdZioY5Ky1F2/y/qiFFu9OegW0TMkPP+N8ySsAgpP9FvZKhPZv
 qc+JTTJA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldWvh-0031JR-Ac
 for barebox@lists.infradead.org; Mon, 03 May 2021 11:40:02 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1ldWvg-0006o8-2q; Mon, 03 May 2021 13:40:00 +0200
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
References: <20210427202309.32077-1-a.fatoum@pengutronix.de>
 <20210427202309.32077-4-a.fatoum@pengutronix.de>
 <20210503113356.GB19819@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c6ac7eb8-c664-85c9-8ddc-2b0b95266281@pengutronix.de>
Date: Mon, 3 May 2021 13:39:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210503113356.GB19819@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_044001_402770_7C16F80D 
X-CRM114-Status: GOOD (  22.26  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/12] RISC-V: support multi-image for all machines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 03.05.21 13:33, Sascha Hauer wrote:
> Hi Ahmad,
> 
> This patch doesn't apply, I think there's something wrong with it.
> 
> On Tue, Apr 27, 2021 at 10:23:01PM +0200, Ahmad Fatoum wrote:
>> -config MACH_ERIZO
>> -	bool "erizo family"
>> -	select ARCH_RV32I
>> -	select HAS_DEBUG_LL
>> -	select HAS_NMON
>> -	select USE_COMPRESSED_DTB
>> -	select RISCV_M_MODE
>> -	select RISCV_TIMER
>> -
>> -config MACH_VIRT
>> -	bool "virt family"
>> -	select BOARD_RISCV_GENERIC_DT
>> -	select CLINT_TIMER
>> -	help
>> -	  Generates an image tht can be be booted by QEMU. The image is called
>> -	  barebox-dt-2nd.img
> 
> This drops MACH_ERIZO and MACH_VIRT in favour of:
> 
>> +config SOC_ERIZO
>> +	bool "Erizo SoC"
>> +	select ARCH_RV32I
>> +	select HAS_DEBUG_LL
>> +	select HAS_NMON
>> +	select USE_COMPRESSED_DTB
>> +	select RISCV_M_MODE
>> +	select RISCV_TIMER
>> +
>> +config SOC_VIRT
>> +	bool "QEMU Virt Machine"
>> +	select BOARD_RISCV_GENERIC_DT
>> +	select CLINT_TIMER
>> +	help
>> +	  Generates an image tht can be be booted by QEMU. The image is called
>> +	  barebox-dt-2nd.img
> 
>> @@ -19,7 +19,7 @@ LDFLAGS_pbl += $(riscv-ldflags-y)
>>  cflags-y += $(riscv-cflags-y)
>>  LDFLAGS_barebox += -nostdlib
>>  
>> -machine-$(CONFIG_MACH_ERIZO)	:= erizo
>> +machine-$(CONFIG_SOC_ERIZO)	:= erizo
> 
> for CONFIG_*_ERIZO this is changed here as well, but here the file has:
> 
> machine-$(CONFIG_MACH_ERIZO)	:= erizo
> machine-$(CONFIG_MACH_VIRT)	:= virt
> 
> I think CONFIG_MACH_VIRT should be replaced here as well. I could fix
> the obvious, but I am not sure how this happened and if this is the only
> mistake here, so not applying this. Please resend.

Sorry, I should have noted that this applied on top of the earlier RISC-V
patches:

https://lore.barebox.org/barebox/20210410110638.2106658-1-ahmad@a3f.at/

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

