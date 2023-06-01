Delivery-date: Thu, 01 Jun 2023 11:22:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4eVY-005aW0-T9
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 11:22:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4eVW-0004Tv-B7
	for lore@pengutronix.de; Thu, 01 Jun 2023 11:22:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jvTNse46EtNMz8g6LEYaIgZfxVHBrGXPFyyUoAXLOiA=; b=s0AXIGxZL9ZsiwRg9g9J3CWPJz
	+3IEQsOXQS2XJEGC0CYNucqs/fzfdwzty8BftAzfuhgxYh3AEmjbXUqKyTPge4cuxeJ0UcNcI+dn/
	5ZbjzOsD+M2lsLZyTPQlqd/ijqQEr/wINooVtI0powlMr/DvKjxz/QulL7vPNbmmS/nusdpxEjs6B
	z2zIcKM2CTeS5pVDZXG0adeiuCwWrtXNR4M4A9tSmGVgI5yraAWnmU5NqcBE91wQMgrdCO7nBV94K
	HlPCQAGAQw5SOSyYbJVG/jUGh6qRpodSdoKRZ2aiUG4+27s4VB9hcxsqyTjOfSpBI0f3Nj81igseB
	HUASOOZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4eUG-002i61-1O;
	Thu, 01 Jun 2023 09:20:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4eUD-002i4y-1F
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 09:20:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1q4eUA-0004Dt-Gx; Thu, 01 Jun 2023 11:20:46 +0200
Message-ID: <637b0976-7584-12b5-9458-c939e6641483@pengutronix.de>
Date: Thu, 1 Jun 2023 11:20:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US, de-DE
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: patchwork-jzi@pengutronix.de, Juergen Borleis <j.borleis@pengutronix.de>
References: <20230601-koenigbauer-alphajet-upstreaming-v1-1-bcdcc1f1382e@pengutronix.de>
 <e6a958d3-2ba4-95c6-23d3-a3b9d953435b@pengutronix.de>
 <69f2ace5-cb7f-4dbb-3d24-9fc0a25693a1@pengutronix.de>
 <0eafda1b-a0fe-5701-5ed2-c6e0b296c1f4@pengutronix.de>
From: Johannes Zink <j.zink@pengutronix.de>
In-Reply-To: <0eafda1b-a0fe-5701-5ed2-c6e0b296c1f4@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_022049_426650_BD90BAC4 
X-CRM114-Status: GOOD (  20.45  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MP: add Koenig+Bauer Alphajet board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 6/1/23 11:14, Ahmad Fatoum wrote:
> On 01.06.23 11:08, Johannes Zink wrote:
>> On 6/1/23 10:49, Ahmad Fatoum wrote:
>>> On 01.06.23 09:40, Johannes Zink wrote:
>>>> +static const struct of_device_id kb_alphajet_of_match[] = {
>>>> +    { .compatible = "kb,alphajet" },
>>>
>>> Is anything of the above really alphajet specific? If both PHY and QSPI flash
>>> are on SOM, you should match against SoM compatible here.
>>
>> No, the above can be moved to a generic SoM part. I assume though, that stuff will not work properly (TM) as long as the individual boards don't enable deep probe support (at least it did not work for my machine), though I think this should be kept in the baseboard-specific part, right?
> 
> I'd just enable deep probe for the SoM compatible. If someone else's
> baseboard support clashes with deep probe, they should fix that.
> 

sounds good to me.

>>> We want to avoid future boards with Congatec modules needing to duplicate
>>> code. Can you split this up:
>>>
>>> config MACH_CONGATEC_QX8MP
>>>      bool "Koenig+Bauer AlphaJet Board"
>>
>> I guess this should probably be
>> bool "Congatec conga-QMX8-Plus"
>> then?
> 
> Just drop the prompt altogether and add _SOM at the end of the
> config symbol. If we ever add the Congatec baseboard, it would
> just select the SoM, but there's no reason to be able to select
> the SoM from menuconfig without a board.

ack.

> 
>>
>>>      select ARCH_IMX8MP
>>>      select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>>>      select FIRMWARE_IMX8MP_ATF
>>>      select ARM_SMCCC
>>>      select MCI_IMX_ESDHC_PBL
>>>      select IMX8M_DRAM
>>>      select I2C_IMX_EARLY
>>>
>>> config MACH_KB_ALPHAJET
>>>      bool "Koenig+Bauer AlphaJet Board"
>>>      select MACH_CONGATEC_QX8MP
>>>
>>
>> ack.
>>
>>>> +
>>>>    config MACH_PHYTEC_SOM_IMX8MQ
>>>>        bool "Phytec i.MX8M SOM"
>>>>        select ARCH_IMX8MQ
>>>> diff --git a/images/Makefile.imx b/images/Makefile.imx
>>>> index 9e70ba50a162..bfb2fcdd8ede 100644
>>>> --- a/images/Makefile.imx
>>>> +++ b/images/Makefile.imx
>>>> @@ -473,6 +473,11 @@ CFG_start_variscite_imx8mp_dart.pblb.imximg = $(board)/variscite-dt8mcustomboard
>>>>    FILE_barebox-variscite-imx8mp-dart-cb.img = start_variscite_imx8mp_dart.pblb.pimximg
>>>>    image-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP) += barebox-variscite-imx8mp-dart-cb.img
>>>>    +pblb-$(CONFIG_MACH_KB_ALPHAJET) += start_congatec_qx8p
>>>
>>> This is defined no where. Should this be qx8mp too?

I have to look into this, this _might_ be an old remainder I overlooked when I 
cleaned up my patch(es).

> 
> Also, you should add the board to arch/arm/configs/{multi_v8_defconfig,imx_v8_defconfig}
> 

ack

>>>
>>>> +CFG_start_kb_alphajet.pblb.imximg = $(board)/kb-imx8mp-alphajet/flash-header-imx8mp-cgtqx8p.imxcfg
>>>> +FILE_barebox-kb-alphajet.img = start_kb_alphajet.pblb.pimximg
>>>> +image-$(CONFIG_MACH_KB_ALPHAJET) += barebox-kb-alphajet.img
>>>> +
>>>>    # ----------------------- i.MX8mq based boards --------------------------
>>>>    pblb-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += start_nxp_imx8mq_evk
>>>>    CFG_start_nxp_imx8mq_evk.pblb.imximg = $(board)/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
>>>>
>>>> ---
>>>> base-commit: 64c528dd0bff0953192d90fbbc34b3d45d8116d0
>>>> change-id: 20230601-koenigbauer-alphajet-upstreaming-2085dc8b9f77
>>>>
>>>> Best regards,
>>>
>>
>> Best regards
>> Johannes
>>
> 

-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



