Delivery-date: Wed, 28 Feb 2024 14:19:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfJqd-00DV2S-1i
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 14:19:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfJqB-0000cv-1l
	for lore@pengutronix.de; Wed, 28 Feb 2024 14:19:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sew8CCGMtwIZlEy23joAMjIFlzp9S2A9UpSXk4H8SZ0=; b=H92Y1N5QVLeVCCMIJyJBCf2K2i
	BkR/fXeVMKyOXW4vzeXRPuWvTq7FvevxsSJFBueHXHtK80JeFsTBg8O6oUMoz/C3h2RpNgAMQk9e4
	hWh1CKuZxwnmoLMy5bWCq8IK1nyFWYaNd240PKnq9uxiLJ1zCFsakfGVpS7+Qy+wBJF9goZL1jez0
	L9KoRcc40CJmb1N8/w7c0hP5zRtkeU4QgDT5NIUPqCFnR9dz+RVX69OlBxNrYeWwPLQowoNrxXHe9
	PRoFyQ4uS+4C8vCa2y+ECuFb50RUi0T+qjCrtelWewR5SvuQON/KPIDG9XRWynNwZspWPGmq3Plz4
	1g7wPx4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfJo8-00000009RCF-2zvo;
	Wed, 28 Feb 2024 13:17:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfJo5-00000009RBq-02jW
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 13:17:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rfJo3-0000Ft-QL; Wed, 28 Feb 2024 14:17:07 +0100
Message-ID: <6366bb10-adc4-4a00-ade4-eb4e301a379f@pengutronix.de>
Date: Wed, 28 Feb 2024 14:17:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, de-DE
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-0-2df2430da984@pengutronix.de>
 <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-3-2df2430da984@pengutronix.de>
 <Zd2hCMY_b_KvSz4I@pengutronix.de>
 <893fb843-8c6d-411e-b67f-c0df0b28efab@pengutronix.de>
 <Zd8TjbHuzD0G81yW@pengutronix.de>
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <Zd8TjbHuzD0G81yW@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_051709_093586_03A63CEE 
X-CRM114-Status: GOOD (  26.73  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] arm: mach-imx: tzasc: convert to cpu_is_mx8xyz macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 28.02.24 12:05, Sascha Hauer wrote:
> On Wed, Feb 28, 2024 at 09:46:51AM +0100, Stefan Kerkmann wrote:
>> Hi Sascha,
>>
>> On 27.02.24 09:44, Sascha Hauer wrote:
>>> On Mon, Feb 26, 2024 at 03:40:23PM +0100, Stefan Kerkmann wrote:
>>>> Instead of passing in configuration parameters at runtime we can utilize
>>>> the `cpu_is_mx8xyz` macro family to determine which bits should be set.
>>>>
>>>> As the tzasc driver is imx specific, all functions are prefixed with
>>>> `imx8m_` as well.
>>>>
>>>> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
>>>> ---
>>>>   arch/arm/mach-imx/atf.c   |  8 ++++----
>>>>   arch/arm/mach-imx/imx8m.c |  2 +-
>>>>   arch/arm/mach-imx/tzasc.c | 25 +++++--------------------
>>>>   include/mach/imx/tzasc.h  |  8 ++------
>>>>   4 files changed, 12 insertions(+), 31 deletions(-)
>>>>
>>>> diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
>>>> index e8060ebd95..9cbc38ef11 100644
>>>> --- a/arch/arm/mach-imx/atf.c
>>>> +++ b/arch/arm/mach-imx/atf.c
>>>> @@ -158,7 +158,7 @@ __noreturn void __imx8mm_load_and_start_image_via_tfa(void *bl33)
>>>>   		size_t bl32_size;
>>>>   		void *bl32_image;
>>>> -		imx8mm_tzc380_init();
>>>> +		imx8m_tzc380_init();
>>>
>>> I am not so sure about this patch. So far the whole PBL is coded in the
>>> way that we inherently know the SoC type from the code path chosen.
>>>
>>> This patch changes this. It doesn't really matter for this patch, but it
>>> sends a sign how we want to solve this in future.
>>
>> Let's see if I can persuade you that this is a good thing :-).
>>
>>> One implication of this patch is that cpu_is_mx() is a runtime decision,
>>> so code paths behind an unused cpu_is_mx() can't be discarded anymore.
>>
>> My argument here is that the overhead in code size is probably neglect able
>> in most cases, as most of the code paths are still discarded:
>>
>> 1. If there is only one ARCH selected e.g., `CONFIG_ARCH_IMX8MM` the
>> `cpu_is_mx8mm()` macro is still evaluated at compile time. As the
>> `__imx_cpu_type` variable is only assigned and never read it can be stripped
>> away by the compiler/linker and become a nop.
>>
>> 2. Runtime evaluation is only selected if a second arch is enabled for the
>> build. But even then the runtime decision is only compiled in for the two
>> selected arches, as all other `cpu_is_xyz` macros still evaluate at compile
>> time to false. So code paths that don't touch the selected arches will still
>> be stripped.
>>
>>> Another thing is that the usage of cpu_is() has the tendency to lead to
>>> cascades of if (cpu_is_x() || cpu_is_y() || cpu_is_z()) which is not
>>> paticularly nice to read.
>>>
>>
>> That is arguably subjective :-).
>>
>> For me as a developer that is new to barebox, it was confusing to find two
>> different styles of arch dependent code. I prefer the `cpu_is_xyz` style
>> approach which is used in barebox proper much more.
>>
>> In the case of the TZC380 driver the pseudo (as they are probably optimized
>> away) runtime arguments to the init functions seem unnecessarily
>> complicated, as does the approach to define aliases to the same function for
>> all arches. The if style is clearer in intend as it keeps the distinction
>> between the arches local to the parts that are actually different. Which is
>> straight forward to read IMHO.
> 
> Ok, let's see where this brings us. Can you rebase on current next?
> Some of the code you are modifying went to drivers/soc/imx/soc-imx8m.c
> recently.
> 

Great :-)! I've rebased and sent a v2 of this patch set.

> Sascha
> 

Cheers,
Stefan

-- 
Pengutronix e.K.                       | Stefan Kerkmann             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-128  |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-9    |


