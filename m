Delivery-date: Tue, 21 Nov 2023 14:44:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5R30-002x3p-0C
	for lore@lore.pengutronix.de;
	Tue, 21 Nov 2023 14:44:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5R30-0002L9-0Z
	for lore@pengutronix.de; Tue, 21 Nov 2023 14:44:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C/3CUrNgpsnWV376MbtKWx3qSXr/yrpkAXr86lhAqH4=; b=2xZom2SsbnkobYf2KKottPhdoD
	XtgqC+R5HRULLtoJqpP3WdwY0VkC9X8jyWOHgrhC6PcbABRGmJxgDz1TVz2tOWcCrg7fToNVQ7S5E
	CqDqtFiR8bEbSw8BbRL6jdQlTive+mB21HIQO/qdf5mZ6sV1NBnJ2S6uTuVfVxxn0Oym3DtpOxHMM
	05fkW/mtR63MTp+Zdqb6gcQqqKkdBiX1Ws9TOu4Rkpc94e87hplQfOCQbt13aGuhLMO4fGl3rxxAJ
	QnlkTL0ITtcI7iFeQ69fjO5hvuVxkJI8sFPzG3s7LQ630sg2Q23Ms964jOistd/oE/QcaBfPiDSkP
	hf2kGcIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5R1P-00GqO6-2F;
	Tue, 21 Nov 2023 13:42:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5R1L-00GqNd-1w
	for barebox@lists.infradead.org;
	Tue, 21 Nov 2023 13:42:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5R1H-0001nD-S4; Tue, 21 Nov 2023 14:42:27 +0100
Message-ID: <7921bb4f-d6ac-fcd7-3869-08b53e6bc785@pengutronix.de>
Date: Tue, 21 Nov 2023 14:42:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20231120144453.1075740-1-s.hauer@pengutronix.de>
 <20231120144453.1075740-2-s.hauer@pengutronix.de>
 <0a4dea73-0306-1ea8-caf3-94b47e520f60@pengutronix.de>
 <20231120151236.GL3359458@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231120151236.GL3359458@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231121_054231_794079_4A032919 
X-CRM114-Status: GOOD (  25.09  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] ARM: layerscape: ppa: Fix starting PPA
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 20.11.23 16:12, Sascha Hauer wrote:
> On Mon, Nov 20, 2023 at 03:54:40PM +0100, Ahmad Fatoum wrote:
>> Hello Sascha,
>>
>> On 20.11.23 15:44, Sascha Hauer wrote:
>>> With dba1c26f70 we replaced request_sdram_region() for the PPA with
>>> reserve_sdram_region(). The effect is that the region is marked as
>>> reserved and mapped non executable. While this is desired for EL2, it
>>> also has the effect that we can't start the PPA anymore from EL3.
>>>
>>> Map the region cached/executable to start the PPA, then map it
>>> uncached/non executable once we are in EL2.
>>>
>>> Fixes: dba1c26f70 ("arm: layerscape: ppa: reserve SDRAM region for PPA")
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>  arch/arm/mach-layerscape/ppa.c | 18 +++++++++---------
>>>  1 file changed, 9 insertions(+), 9 deletions(-)
>>>
>>> diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
>>> index 521e6b89da..43145a7ece 100644
>>> --- a/arch/arm/mach-layerscape/ppa.c
>>> +++ b/arch/arm/mach-layerscape/ppa.c
>>> @@ -4,6 +4,7 @@
>>>  
>>>  #include <common.h>
>>>  #include <init.h>
>>> +#include <mmu.h>
>>>  #include <firmware.h>
>>>  #include <memory.h>
>>>  #include <linux/sizes.h>
>>> @@ -54,17 +55,11 @@ static int ppa_init(void *ppa, size_t ppa_size, void *sec_firmware_addr)
>>>  	int ret;
>>>  	u32 *boot_loc_ptr_l, *boot_loc_ptr_h;
>>>  	struct ccsr_scfg __iomem *scfg = (void *)(LSCH2_SCFG_ADDR);
>>> -	int el = current_el();
>>>  	struct fit_handle *fit;
>>>  	void *conf;
>>>  	const void *buf;
>>>  	unsigned long firmware_size;
>>>  
>>> -	if (el < 3) {
>>> -		printf("EL%d, skip ppa init\n", el);
>>> -		return 0;
>>> -	}
>>> -
>>>  	boot_loc_ptr_l = &scfg->scratchrw[1];
>>>  	boot_loc_ptr_h = &scfg->scratchrw[0];
>>>  
>>> @@ -115,6 +110,7 @@ int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size)
>>>  	struct resource *res;
>>>  	void *ppa_fw;
>>>  	size_t ppa_fw_size;
>>> +	int el = current_el();
>>>  	int ret;
>>>  
>>>  	res = reserve_sdram_region("ppa", ppa_start, ppa_size);
>>> @@ -126,9 +122,13 @@ int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size)
>>>  
>>>  	get_builtin_firmware(ppa_ls1046a_bin, &ppa_fw, &ppa_fw_size);
>>>  
>>> -	ret = ppa_init(ppa_fw, ppa_fw_size, (void *)ppa_start);
>>> -	if (ret)
>>> -		return ret;
>>> +	if (el == 3) {
>>> +		remap_range((void *)ppa_start, ppa_size, MAP_CACHED);
>>> +		ret = ppa_init(ppa_fw, ppa_fw_size, (void *)ppa_start);
>>> +		remap_range((void *)ppa_start, ppa_size, MAP_UNCACHED);
>>> +		if (ret)
>>> +			return ret;
>>
>> Isn't this still racy? I think the EL2 mapping should already have the
>> PPA area uncached _before_ jumping into PPA.
> 
> It likely is, but to fix that we would have to create a second set of
> pagetables and use one for EL3 with PPA executable and another one for EL2
> with PPA non executable.
> 
> As of now this is purely academic anyway as the PPA doesn't protect its
> SDRAM range in any way, so speculating into it doesn't do any harm.

Fair enough. As long as speculation doesn't break anything, I guess we can
leave it like this for now. A comment would be nice though.

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



