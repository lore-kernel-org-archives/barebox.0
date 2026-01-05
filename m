Delivery-date: Mon, 05 Jan 2026 23:43:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vctIk-001g7L-1j
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 23:43:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vctIj-00082U-I8
	for lore@pengutronix.de; Mon, 05 Jan 2026 23:43:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tQ/Wxun1iaL7BG4mKqmFKPDkUBerFyvpkoq4aApN104=; b=To8fuTIeqNXesqh3zf7vvflxsF
	V0j56NAR5c4obHJozhgU6EbeTmxBqvxYOO5jBltDSzb3tJKVz/ZsfImEu9Cy2zPt+YjnnWdJor8LX
	EjPW5ejnx9SNslXqLhsb6AJPM2n7Zn10E3DC+gipAT8FPfig+EnkuectNqG2aU5uvsi/da7BvuD7X
	G7088aiOYdXfLKADWqgrOo278j3iJKq+fZFy1QwIZ62Ms48VXnD9W5iNK01yjDp7gx5ZMjXKmnKs/
	dOe/msckN3mUxba4DnlKExUPeUOFVPLu6ltKLw8vT+iQZja+80nKa8o5iFr3lPL5VHinWIjHwvvrA
	xKfOFVpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vctHz-0000000CAVF-0kp9;
	Mon, 05 Jan 2026 22:43:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vctHv-0000000CAUt-2zBi
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 22:43:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vctHt-0007v9-C9; Mon, 05 Jan 2026 23:42:57 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vctHs-009FX4-35;
	Mon, 05 Jan 2026 23:42:56 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vctHs-00CbSJ-2l;
	Mon, 05 Jan 2026 23:42:56 +0100
Date: Mon, 5 Jan 2026 23:42:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	"Claude Sonnet 4.5" <noreply@anthropic.com>
Message-ID: <aVw-cJ1f-B17q2j8@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-6-e97853f98232@pengutronix.de>
 <9a2744c4-b115-40e9-9f19-36a291acaeb9@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9a2744c4-b115-40e9-9f19-36a291acaeb9@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_144300_308851_9B92CBE8 
X-CRM114-Status: GOOD (  49.56  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/19] elf: implement elf_load_inplace()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 05, 2026 at 02:37:13PM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 1/5/26 12:26 PM, Sascha Hauer wrote:
> > Implement elf_load_inplace() to apply dynamic relocations to an ELF binary
> > that is already loaded in memory. Unlike elf_load(), this function does not
> > allocate memory or copy segments - it only modifies the existing image in
> > place.
> > 
> > This is useful for self-relocating loaders or when the ELF has been loaded
> > by external means (e.g., firmware or another bootloader).
> 
> Nice. This is more elegant than what I came up with (compressing every
> segment separately). :)
> 
> > For ET_DYN (position-independent) binaries, the relocation offset is
> > calculated relative to the first executable PT_LOAD segment (.text section),
> > taking into account the difference between the segment's virtual address
> > and its file offset.
> 
> While this may be true for barebox proper, I think in the general case,
> we need to iterate over all segments and take the lowest address.
> The first executable PT_LOAD shouldn't have a special significance in
> this case.
> 
> > 
> > The entry point is also adjusted to point to the relocated image.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
> > ---
> >  common/elf.c  | 152 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  include/elf.h |   8 ++++
> >  2 files changed, 160 insertions(+)
> > 
> > diff --git a/common/elf.c b/common/elf.c
> > index fc2949c285ebb0c0740c68c551926da8d0bb8637..565b283b694773727ef77917cfd8c1d4ee83a8d1 100644
> > --- a/common/elf.c
> > +++ b/common/elf.c
> > @@ -531,3 +531,155 @@ void elf_close(struct elf_image *elf)
> >  
> >  	free(elf);
> >  }
> > +
> > +static void *elf_find_dynamic_inplace(struct elf_image *elf)
> 
> const void *
> 
> > +{
> > +	void *buf = elf->hdr_buf;
> > +	void *phdr = buf + elf_hdr_e_phoff(elf, buf);
> > +	int i;
> > +
> > +	for (i = 0; i < elf_hdr_e_phnum(elf, buf); i++) {
> > +		if (elf_phdr_p_type(elf, phdr) == PT_DYNAMIC) {
> > +			u64 offset = elf_phdr_p_offset(elf, phdr);
> > +			/* For in-place binary, PT_DYNAMIC is at hdr_buf + offset */
> > +			return elf->hdr_buf + offset;
> > +		}
> > +		phdr += elf_size_of_phdr(elf);
> > +	}
> > +
> > +	return NULL;  /* No PT_DYNAMIC segment */
> > +}
> > +
> > +/**
> > + * elf_load_inplace() - Apply dynamic relocations to an ELF binary in place
> > + * @elf: ELF image previously opened with elf_open_binary()
> > + *
> > + * This function applies dynamic relocations to an ELF binary that is already
> > + * loaded at its target address in memory. Unlike elf_load(), this does not
> > + * allocate memory or copy segments - it only modifies the existing image.
> > + *
> > + * This is useful for self-relocating loaders or when the ELF has been loaded
> > + * by external means (e.g., loaded by firmware or another bootloader).
> > + *
> > + * The ELF image must have been previously opened with elf_open_binary().
> > + *
> > + * For ET_DYN (position-independent) binaries, the relocation offset is
> > + * calculated relative to the first executable PT_LOAD segment (.text section).
> > + *
> > + * For ET_EXEC binaries, no relocation is applied as they are expected to
> > + * be at their link-time addresses.
> > + *
> > + * Returns: 0 on success, negative error code on failure
> > + */
> > +int elf_load_inplace(struct elf_image *elf)
> > +{
> > +	void *dyn_seg;
> > +	void *buf, *phdr;
> > +	void *elf_buf;
> > +	int i, ret;
> > +
> > +	buf = elf->hdr_buf;
> > +	elf_buf = elf->hdr_buf;
> > +
> > +	/*
> > +	 * First pass: Clear BSS segments (p_memsz > p_filesz).
> > +	 * This must be done before relocations as uninitialized data
> > +	 * must be zeroed per C standard.
> > +	 */
> > +	phdr = buf + elf_hdr_e_phoff(elf, buf);
> > +	for (i = 0; i < elf_hdr_e_phnum(elf, buf); i++) {
> > +		if (elf_phdr_p_type(elf, phdr) == PT_LOAD) {
> > +			u64 p_offset = elf_phdr_p_offset(elf, phdr);
> > +			u64 p_filesz = elf_phdr_p_filesz(elf, phdr);
> > +			u64 p_memsz = elf_phdr_p_memsz(elf, phdr);
> > +
> > +			/* Clear BSS (uninitialized data) */
> > +			if (p_filesz < p_memsz) {
> > +				void *bss_start = elf_buf + p_offset + p_filesz;
> > +				size_t bss_size = p_memsz - p_filesz;
> > +				memset(bss_start, 0x00, bss_size);
> 
> How can this be done in-place? If this is padding to get to a page
> boundary, I would assume it's already zero. If it goes beyond a page,
> this will overwrite follow-up segments wouldn't it?
> 
> I also find bss_ an unforunate name here as this is applied to all segments.

The code basically implements this (from
https://refspecs.linuxbase.org/elf/gabi4+/ch5.pheader.html):

PT_LOAD
    The array element specifies a loadable segment, described by
    p_filesz and p_memsz. The bytes from the file are mapped to the
    beginning of the memory segment. If the segment's memory size
    (p_memsz) is larger than the file size (p_filesz), the ``extra''
    bytes are defined to hold the value 0 and to follow the segment's
    initialized area

You are right, this is done for all segments, but de facto the segment
containing the bss section is the only one where p_filesz < p_memsz
is actually used, so "Clear bss segments" doesn't sound too wrong to me.

I experimented a bit. When I change the linker file to move the bss
section before the data section, the bss section really shows up as
zeroes in the ELF file and p_filesz becomes p_memsz for all segments.
Only when the bss section is at the very end of the binary the bss
section is no longer part of the ELF binary and may hit uninitialized
memory which we really have to memset.

> 
> 
> > +	if (elf->type == ET_DYN) {
> > +		u64 text_vaddr = 0;
> > +		u64 text_offset = 0;
> > +		bool found_text = false;
> > +
> > +		/* Find first executable PT_LOAD segment (.text) */
> 
> As mentioned, we should rather get the lowest address across all segments.

Not sure if this is true. I didn't manage to generate a binary where the
text section is not the first one. When I try to move for example the
data section before the text section then I end up with no executable
segment at all. Something weird is happening there, I haven't fully
understood how the generation of segments from sections work.

> 
> > +	/* Apply architecture-specific relocations */
> > +	ret = elf_apply_relocations(elf, dyn_seg);
> 
> Should I upstream my relocate_image changes that reuse the
> relocate_to_current_adr() code and you rebase on top?

Show the patch and we'll see.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


