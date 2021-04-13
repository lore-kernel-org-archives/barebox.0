Delivery-date: Tue, 13 Apr 2021 13:32:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWHHi-0007Tk-PC
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 13:32:46 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWHHh-0000Lc-RQ
	for lore@pengutronix.de; Tue, 13 Apr 2021 13:32:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AI4IPJbQP0+xuNfQH+ML/UuM9CnFbqixhAvb+uegEvk=; b=qgzQaPbiHnU2AWqPjLqbGjKcm
	pe7Pc5vbPyZGQ1BQCBUI+yFzM7rfVKI3FS/MRsw2EFI30yvTO1z1W87A4M+DYvuUkO/kp6iqfnu2p
	AyLFjPTgsfvo5S1jWh5rIs53qgI+FM/djdJoPy41HeaIWqtars1iTwO3LrvA1w35TvDjoSfUc+rJl
	ZkBNzHCkxBAT2Qwfx8zuO/hRxNQCPRi5Zf9dxOqZMga+lwL8jykSJ4RhkdZDVeMpWf5K73OWgIUDZ
	VDrCW4NXSKI8XuGLiSaGrpzl+uHJhdEYIpzX4xQH9W+Y9B9mD5NmXHwTLehih74HVzM4klQZsFfHO
	DA8FPY3Eg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWHFm-0093dS-1e; Tue, 13 Apr 2021 11:30:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWGts-008xUH-5s
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 11:08:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=jr2W/jv9N08AQAJ/uScnWH5SRm4lYP08ObKwvhia4pg=; b=g9F1jNOzjL1yDCKi82KDWadMG4
 HB2lI2g5D6i43Hna9yOiXucbe+vvuDeyQx6hMc6hSwPUkNTNlRt4TXBKDZIrVIvTWoPoaoEHkqxi/
 ZtfBjDdxZIwpCNwJzN2XO2iAqEMNM4w8uBfnCn7qbsVZHXS7cvlSuBPh1tKJpCWz44Vzp/rbcoQSq
 4h81cIQKVM1WP1bt6WT+LX8r8VG5bJqXRkJJCvNaQA5YAqzLjzB5woCpkDsxJ7bA/IPZmf5KQGtXi
 fyfMGjBGDDbErqhyLjwhgQw2O3rHB8glRX+uRfOQ4zvD6tSpM6CdKuXVE40idMQLmlHJde2kBxbUv
 8TrxzwTg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWGtp-006xDP-1N
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 11:08:06 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lWGti-00051e-S6; Tue, 13 Apr 2021 13:07:58 +0200
To: Lars Pedersen <lapeddk@gmail.com>
Cc: barebox@lists.infradead.org, Bruno Thomsen <bruno.thomsen@gmail.com>
References: <20210413061727.186938-1-lapeddk@gmail.com>
 <20210413092340.241337-1-lapeddk@gmail.com>
 <ffa4e57a-e8b3-a31d-cb93-d0bf8a6b9157@pengutronix.de>
 <CAKd8=GvP4xAWR7JVYh0DKjhwCdgZf_LXi0DQaLHV3QfWV4zMrw@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <45063309-981a-0a38-b737-812ed295604c@pengutronix.de>
Date: Tue, 13 Apr 2021 13:07:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CAKd8=GvP4xAWR7JVYh0DKjhwCdgZf_LXi0DQaLHV3QfWV4zMrw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_040805_116550_79B32E29 
X-CRM114-Status: GOOD (  17.84  )
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



On 13.04.21 13:03, Lars Pedersen wrote:
> Hello Ahmad.
> 
> On Tue, 13 Apr 2021 at 12:09, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>
>> Hi,
>>
>> On 13.04.21 11:23, Lars Pedersen wrote:
>>> Select CONFIG_POWER_RESET_GPIO_RESTART for Kamstrup mx7 concentrator
>>> board.
>>>
>>> Signed-off-by: Lars Pedersen <lapeddk@gmail.com>
>>> Reviewed-by: Bruno Thomsen <bruno.thomsen@gmail.com>
>>> ---
>>> Requires patch ARM: i.MX: Kamstrup mx7 concentrator board support
>>>
>>>  arch/arm/mach-imx/Kconfig | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
>>> index cc73d0a0d..4ee8ffe4b 100644
>>> --- a/arch/arm/mach-imx/Kconfig
>>> +++ b/arch/arm/mach-imx/Kconfig
>>> @@ -530,6 +530,7 @@ config MACH_KAMSTRUP_MX7_CONCENTRATOR
>>>       bool "Kamstrup i.MX7 Concentrator"
>>>       select ARCH_IMX7
>>>       select ARM_USE_COMPRESSED_DTB
>>> +     select CONFIG_POWER_RESET_GPIO_RESTART
>>
>> Sorry, no CONFIG_ in Kconfig files. ^^
> 
> Heh okay :) Then lets stay with the v2 patch and disregard the patch
> fix in Kconfig.

Sure, ss you like. Just for clarification, what I meant was that in Kconfig
files symbols don't have the CONFIG_ prefix. That's only used outside
(e.g. from Makefile or C preprocessor). 

Cheers,
Ahmad

> 
>>
>> Cheers,
>> Ahmad
>>
>>>
>>>  config MACH_NXP_IMX6ULL_EVK
>>>       bool "NXP i.MX6ull EVK Board"
>>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
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

