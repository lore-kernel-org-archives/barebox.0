Delivery-date: Tue, 11 Nov 2025 15:31:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIpP7-000B9w-1j
	for lore@lore.pengutronix.de;
	Tue, 11 Nov 2025 15:31:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIpP6-0003a7-SK
	for lore@pengutronix.de; Tue, 11 Nov 2025 15:31:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HfCiEZAqAC0zbYkF/yPf7fb8HsxF2wQtCY91vMjg9Sw=; b=sIF9v/tqfgl4A6XnUhTQZoZ1YD
	qqPo+4A1BwAwBnfuoDr+fKBYnmsCyHVA3vz9WwpSj4yfhLnVLYDs2fG123ns+3dKxDck5GE9sh9ex
	mgDBr+TwljVxwRnW+jfBlGH3UTWtQ+ReGUCgbizicivPAnUcoY4m1Za9Q54+EWg4fpjZVitobcZuG
	JecGb8/dnathwi/MGze7/oAhNKu35JqcnhwQRfdvlUj68beToWqi0aC4KxJOimMxfbINDJWbslwV/
	A2HXGws/Lj3HBwC9yuhlw2ZLi4ZUqg1jTdXdyJ9DZmbDkiEujm2CzWPVd3/7JLLR1rbc0JI1t4gqo
	2tHKyltA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIpOa-00000007K4D-3l0n;
	Tue, 11 Nov 2025 14:30:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIpOY-00000007K3n-2tIa
	for barebox@lists.infradead.org;
	Tue, 11 Nov 2025 14:30:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vIpOV-0003Sl-0n; Tue, 11 Nov 2025 15:30:51 +0100
Message-ID: <e5018cae-3676-4c67-b809-84a72b647c21@pengutronix.de>
Date: Tue, 11 Nov 2025 15:30:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-10-8f0625ac5471@pengutronix.de>
 <aRNEygSVau3tmHVk@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aRNEygSVau3tmHVk@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_063054_741395_90A2DACE 
X-CRM114-Status: GOOD (  23.50  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/23] ARM: i.MX: scratch: add FDT support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11/11/25 3:14 PM, Sascha Hauer wrote:
> On Mon, Nov 10, 2025 at 09:34:50PM +0100, Marco Felsch wrote:
>> Add support to store a FDT within the scratch area. The user needs to
>> query the location and size via imx_scratch_get_fdt() which can be used
>> afterwards to write the actual FDT into it.
>>
>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
>> ---
>>  arch/arm/mach-imx/scratch.c | 16 ++++++++++++++++
>>  common/Kconfig              | 14 ++++++++++++++
>>  include/mach/imx/scratch.h  |  2 ++
>>  3 files changed, 32 insertions(+)
>>
>> diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
>> index e4e2d25969f061c9fcdfd7c3d87701b715eb2805..9c0f1c09c4e0b863d8c95888db7cf0518f698d53 100644
>> --- a/arch/arm/mach-imx/scratch.c
>> +++ b/arch/arm/mach-imx/scratch.c
>> @@ -16,7 +16,10 @@ struct imx_scratch_space {
>>  	u32 bootrom_log[128];
>>  	u32 reserved[128];		/* reserve for bootrom log */
>>  	struct optee_header optee_hdr;
>> +	/* FDT needs an 8 byte alignment */
>> +	u8 fdt[CONFIG_SCRATCH_FDT_SIZE] __aligned(8);
>>  };
>> +static_assert(sizeof(struct imx_scratch_space) <= CONFIG_SCRATCH_SIZE);
>>  
>>  static struct imx_scratch_space *scratch;
>>  
>> @@ -92,3 +95,16 @@ const struct optee_header *imx_scratch_get_optee_hdr(void)
>>  
>>  	return &scratch->optee_hdr;
>>  }
>> +
>> +void imx_scratch_get_fdt(void **fdt, unsigned int *fdt_sz)
>> +{
>> +	if (!scratch) {
>> +		if (IN_PBL)
>> +			return;
>> +		else
>> +			scratch = (void *)arm_mem_scratch_get();
>> +	}
>> +
>> +	*fdt = scratch->fdt;
>> +	*fdt_sz = sizeof(scratch->fdt);
>> +}
>> diff --git a/common/Kconfig b/common/Kconfig
>> index eb2fb1da1e0919b6e7d5e868c48ad2e195cd8aa8..3f394416c3c376d1cf842472803a47462bb012ed 100644
>> --- a/common/Kconfig
>> +++ b/common/Kconfig
>> @@ -302,8 +302,22 @@ config MALLOC_SIZE
>>  config SCRATCH_SIZE
>>  	hex
>>  	default 0x8000
>> +	default 0x48000 if PBL_EARLY_FDT_LOAD

Easy to misconfigure. How about an additional:

range 0x48000 <some big size> if PBL_EARLY_FDT_LOAD

>>  	prompt "Scratch size"
> 
> Do I get this right that the scratch space now includes the space for
> the early FDT? If yes then this can lead to inconsistencies when the
> scratch space is to small. Why not add an extra space?

I would prefer we do not complicate the "endmem" layout more than we
have currently.

What I think we want in future is an API to allocate from the scratch
mem a handoff block and there would be no hardcoded offsets and struct
imx_scratch_space could go away. To save handoff when switching from PBL
to proper, we would then also allocate to the scratch space.

This will probably happen separately, so I am in favor of not creating a
new section that's removed afterwards.

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



