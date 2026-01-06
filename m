Delivery-date: Tue, 06 Jan 2026 09:19:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd2Hc-001pMk-0v
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 09:19:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd2Ha-0001qo-15
	for lore@pengutronix.de; Tue, 06 Jan 2026 09:19:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dEI+ZAL7JPYHx3GkdrfDFfR1x4naqYwisDf84pnU1HU=; b=qAeT3fajCr5JmEhuoNMbW9+nu4
	mBQTvM2VWW0YUNEfiEeEjkCiJFUK2tziyEQqeEhxceU2+cnt6i0pYkX/p6k5fLNxixXWgVcB5MwM4
	0wS30nC5vv5JyteHRhh4JZKSXRZ3X9DMIYmMIXfJJ4VRnJN44i0dUaFQ2BQlkqDUlYFEbilkEsGPr
	xt8lP6ywHrEc0xpYd9onoMOwwoFL91YfOh/TbgCfNyCUO8gEeKfY01zP5gxRydElvyF9c1kjzVFaP
	3COr2zXk9mOrNDh0sSyVWTo3QZuanjjuj+l4KTQeex7dvFfcFAuMZDavCoJIdw5fJ6MdGqY71NdEB
	vfiIZ1BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd2H7-0000000CbGu-0eLR;
	Tue, 06 Jan 2026 08:18:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd2H3-0000000CbGV-2qrf
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 08:18:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd2H2-0001mQ-1V; Tue, 06 Jan 2026 09:18:40 +0100
Message-ID: <a2b90e6a-be82-4ace-9f40-2a73b31e7cf7@pengutronix.de>
Date: Tue, 6 Jan 2026 09:18:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
 "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-6-e97853f98232@pengutronix.de>
 <9a2744c4-b115-40e9-9f19-36a291acaeb9@pengutronix.de>
 <aVw-cJ1f-B17q2j8@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aVw-cJ1f-B17q2j8@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_001842_506928_57323781 
X-CRM114-Status: GOOD (  42.19  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/19] elf: implement elf_load_inplace()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/5/26 23:42, Sascha Hauer wrote:
> On Mon, Jan 05, 2026 at 02:37:13PM +0100, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 1/5/26 12:26 PM, Sascha Hauer wrote:
>>> Implement elf_load_inplace() to apply dynamic relocations to an ELF binary
>>> that is already loaded in memory. Unlike elf_load(), this function does not
>>> allocate memory or copy segments - it only modifies the existing image in
>>> place.
>>>
>>> This is useful for self-relocating loaders or when the ELF has been loaded
>>> by external means (e.g., firmware or another bootloader).
>>
>> Nice. This is more elegant than what I came up with (compressing every
>> segment separately). :)
>>
>>> For ET_DYN (position-independent) binaries, the relocation offset is
>>> calculated relative to the first executable PT_LOAD segment (.text section),
>>> taking into account the difference between the segment's virtual address
>>> and its file offset.
>>
>> While this may be true for barebox proper, I think in the general case,
>> we need to iterate over all segments and take the lowest address.
>> The first executable PT_LOAD shouldn't have a special significance in
>> this case.
>>
>>>
>>> The entry point is also adjusted to point to the relocated image.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
>>> ---
>>>  common/elf.c  | 152 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>>>  include/elf.h |   8 ++++
>>>  2 files changed, 160 insertions(+)
>>>
>>> diff --git a/common/elf.c b/common/elf.c
>>> index fc2949c285ebb0c0740c68c551926da8d0bb8637..565b283b694773727ef77917cfd8c1d4ee83a8d1 100644
>>> --- a/common/elf.c
>>> +++ b/common/elf.c
>>> @@ -531,3 +531,155 @@ void elf_close(struct elf_image *elf)
>>>  
>>>  	free(elf);
>>>  }
>>> +
>>> +static void *elf_find_dynamic_inplace(struct elf_image *elf)
>>
>> const void *
>>
>>> +{
>>> +	void *buf = elf->hdr_buf;
>>> +	void *phdr = buf + elf_hdr_e_phoff(elf, buf);
>>> +	int i;
>>> +
>>> +	for (i = 0; i < elf_hdr_e_phnum(elf, buf); i++) {
>>> +		if (elf_phdr_p_type(elf, phdr) == PT_DYNAMIC) {
>>> +			u64 offset = elf_phdr_p_offset(elf, phdr);
>>> +			/* For in-place binary, PT_DYNAMIC is at hdr_buf + offset */
>>> +			return elf->hdr_buf + offset;
>>> +		}
>>> +		phdr += elf_size_of_phdr(elf);
>>> +	}
>>> +
>>> +	return NULL;  /* No PT_DYNAMIC segment */
>>> +}
>>> +
>>> +/**
>>> + * elf_load_inplace() - Apply dynamic relocations to an ELF binary in place
>>> + * @elf: ELF image previously opened with elf_open_binary()
>>> + *
>>> + * This function applies dynamic relocations to an ELF binary that is already
>>> + * loaded at its target address in memory. Unlike elf_load(), this does not
>>> + * allocate memory or copy segments - it only modifies the existing image.
>>> + *
>>> + * This is useful for self-relocating loaders or when the ELF has been loaded
>>> + * by external means (e.g., loaded by firmware or another bootloader).
>>> + *
>>> + * The ELF image must have been previously opened with elf_open_binary().
>>> + *
>>> + * For ET_DYN (position-independent) binaries, the relocation offset is
>>> + * calculated relative to the first executable PT_LOAD segment (.text section).
>>> + *
>>> + * For ET_EXEC binaries, no relocation is applied as they are expected to
>>> + * be at their link-time addresses.
>>> + *
>>> + * Returns: 0 on success, negative error code on failure
>>> + */
>>> +int elf_load_inplace(struct elf_image *elf)
>>> +{
>>> +	void *dyn_seg;
>>> +	void *buf, *phdr;
>>> +	void *elf_buf;
>>> +	int i, ret;
>>> +
>>> +	buf = elf->hdr_buf;
>>> +	elf_buf = elf->hdr_buf;
>>> +
>>> +	/*
>>> +	 * First pass: Clear BSS segments (p_memsz > p_filesz).
>>> +	 * This must be done before relocations as uninitialized data
>>> +	 * must be zeroed per C standard.
>>> +	 */
>>> +	phdr = buf + elf_hdr_e_phoff(elf, buf);
>>> +	for (i = 0; i < elf_hdr_e_phnum(elf, buf); i++) {
>>> +		if (elf_phdr_p_type(elf, phdr) == PT_LOAD) {
>>> +			u64 p_offset = elf_phdr_p_offset(elf, phdr);
>>> +			u64 p_filesz = elf_phdr_p_filesz(elf, phdr);
>>> +			u64 p_memsz = elf_phdr_p_memsz(elf, phdr);
>>> +
>>> +			/* Clear BSS (uninitialized data) */
>>> +			if (p_filesz < p_memsz) {
>>> +				void *bss_start = elf_buf + p_offset + p_filesz;
>>> +				size_t bss_size = p_memsz - p_filesz;
>>> +				memset(bss_start, 0x00, bss_size);
>>
>> How can this be done in-place? If this is padding to get to a page
>> boundary, I would assume it's already zero. If it goes beyond a page,
>> this will overwrite follow-up segments wouldn't it?
>>
>> I also find bss_ an unforunate name here as this is applied to all segments.
> 
> The code basically implements this (from
> https://refspecs.linuxbase.org/elf/gabi4+/ch5.pheader.html):
> 
> PT_LOAD
>     The array element specifies a loadable segment, described by
>     p_filesz and p_memsz. The bytes from the file are mapped to the
>     beginning of the memory segment. If the segment's memory size
>     (p_memsz) is larger than the file size (p_filesz), the ``extra''
>     bytes are defined to hold the value 0 and to follow the segment's
>     initialized area
> 
> You are right, this is done for all segments, but de facto the segment
> containing the bss section is the only one where p_filesz < p_memsz
> is actually used, so "Clear bss segments" doesn't sound too wrong to me.
> 
> I experimented a bit. When I change the linker file to move the bss
> section before the data section, the bss section really shows up as
> zeroes in the ELF file and p_filesz becomes p_memsz for all segments.
> Only when the bss section is at the very end of the binary the bss
> section is no longer part of the ELF binary and may hit uninitialized
> memory which we really have to memset.

Ok.

>>> +	if (elf->type == ET_DYN) {
>>> +		u64 text_vaddr = 0;
>>> +		u64 text_offset = 0;
>>> +		bool found_text = false;
>>> +
>>> +		/* Find first executable PT_LOAD segment (.text) */
>>
>> As mentioned, we should rather get the lowest address across all segments.
> 
> Not sure if this is true. I didn't manage to generate a binary where the
> text section is not the first one. When I try to move for example the
> data section before the text section then I end up with no executable
> segment at all. Something weird is happening there, I haven't fully
> understood how the generation of segments from sections work.

Quoting your link:

An executable or shared object file's base address (on platforms that support
the concept) is calculated during execution from three values:
the virtual memory load address, the maximum page size, and the lowest virtual
address of a program's loadable segment. To compute the base address,
one determines the memory address associated with the lowest p_vaddr value for
a PT_LOAD segment.
This address is truncated to the nearest multiple of the maximum page size.
The corresponding p_vaddr value itself is also truncated to the nearest
multiple of the maximum page size.
The base address is the difference between the truncated memory address and the
truncated p_vaddr value.

>>> +	/* Apply architecture-specific relocations */
>>> +	ret = elf_apply_relocations(elf, dyn_seg);
>>
>> Should I upstream my relocate_image changes that reuse the
>> relocate_to_current_adr() code and you rebase on top?
> 
> Show the patch and we'll see.

Just sent it.

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


