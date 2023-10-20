Delivery-date: Fri, 20 Oct 2023 15:09:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtpGJ-00FZRM-TS
	for lore@lore.pengutronix.de; Fri, 20 Oct 2023 15:09:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtpGI-0007mC-5G
	for lore@pengutronix.de; Fri, 20 Oct 2023 15:09:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zKxlTngQPpFn5NhQKEANWO8unzY5n/hd+xvQdnFMGko=; b=hSGXjaj0RnqWdDLw0k71sXwQ5L
	KVwwneat39pBdtxCfTIW0/phOTP5b+CWF6DtHDwQDILvw6MJkS5g1FgDsw4jmoP2T9M7FSfTOJuJJ
	+OzbHCacq33kqjBh5RkHo2n0cPsSZKRAq8x5No/yj2vise4Fl62KvsHFEC/lwU2UnEokDt1/pPqpW
	N1I5u+EpHrFlSIzgoFRmW8y6Dp2Rw4zVCIWSi8gtubaXJ30YUiAkOjmMy7oJdIhCcolyYvMj7N8/Z
	Jh1pcgeNIjKCyDI9PZpvr3vcHbGiD5z1lLtBIc0Phjpsbeu83GAOOvsumh5Qgf4YmO31OSUAA/a7H
	MRWtb5tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtpFG-002Kky-1W;
	Fri, 20 Oct 2023 13:08:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtpFD-002KjO-1v
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 13:08:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qtpFA-0007a3-OG; Fri, 20 Oct 2023 15:08:48 +0200
Message-ID: <82dfaeae-a7f2-6217-83fb-b977bb94dfc3@pengutronix.de>
Date: Fri, 20 Oct 2023 15:08:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20231020121710.658511-1-a.fatoum@pengutronix.de>
 <20231020130335.dm7qipxvsbf7375w@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231020130335.dm7qipxvsbf7375w@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_060851_632937_D3AD6A06 
X-CRM114-Status: GOOD (  17.76  )
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
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8M: limit PBL size to 0x3f000
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 20.10.23 15:03, Marco Felsch wrote:
> On 23-10-20, Ahmad Fatoum wrote:
>> On i.MX8M(Q/M/N/P), barebox PBL is loaded 0x1000 bytes into ITCM
> 
> Nit: only the i.MX8MQ-EVK was converted. Don't know if the rest is
> broken since they don't use the pblb (PBL only).

I can't follow what you mean with "don't use the pblb (PBL only)",
but the other three 8MQ boards already have a MAX_PBL_MEMORY_SIZE,
so as far as this patch is concerned, there's nothing further to do.

> 
>> at address 0x7e00_1000. ITCM is 128K followed by 128K of DTCM.
>>
>> Therefore, in total, barebox PBL may not exceed 0x3f000. Now that we
>> have a common macro for defining boards, let's add a
>> MAX_PBL_MEMORY_SIZE_$(entrypoint) into it, so check that we don't
>> exceed this size at runtime.
>>
>> Boards that trip over this, should consider using get_builtin_firmware_ext
>> to offload binaries into barebox proper.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> 
>> ---
>>  images/Makefile.imx | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/images/Makefile.imx b/images/Makefile.imx
>> index 50f0a64b3091..ca09853c4b6e 100644
>> --- a/images/Makefile.imx
>> +++ b/images/Makefile.imx
>> @@ -26,6 +26,7 @@ $(eval
>>  ifeq ($($(strip $(1))), y)
>>  	pblb-y += $(strip $(2))
>>  	CFG_$(strip $(2)).pblb.imximg = $(board)/$(strip $(3)).imxcfg
>> +	MAX_PBL_MEMORY_SIZE_$(strip $(2)) = 0x3f000
>>  	FILE_barebox-$(strip $(4)).img    = $(strip $(2)).pblb.pimximg
>>  	FILE_barebox-$(strip $(4))-s.img  = $(strip $(2)).pblb.psimximg
>>  	image-y += barebox-$(strip $(4)).img
>> -- 
>> 2.39.2
>>
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



