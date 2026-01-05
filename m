Delivery-date: Mon, 05 Jan 2026 20:53:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcqeE-001dLm-2I
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 20:53:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcqeE-0001Wa-1a
	for lore@pengutronix.de; Mon, 05 Jan 2026 20:53:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NEIQMWxUVzvNtMofIvHONF4MawKfQv0QHdODBrOhNAM=; b=2SRC1jfWQDwdN1Ky8KdH/+jO0U
	s3TDt5q31orGYzMgjQ+g5TBiUdYK3EVt7Jfer0enjBX5zeJkpO0lcU4H37ov7BcotGNhiYGLiCuQ/
	usqkNK9swZuQPqsw7xv3bTul5EVuu6mSm09UFByC7UbL6c9rQHOB6R7KOZCqQY3MXj68lwE2UuygO
	Qyf6/a2bpcrKr1juq9xP3m4Xssqcwlr+5r5oB8asap6k1F7l97wrp7UY84ZuAMfiGIMW01gW8nrZu
	wXClRtTm/jYys5SkbaTanJhZR7DEXGaloE14B4uGDTXJYuesTJIBLf3T53ulwF/q9hXq6gqIQq47s
	YVh3mZPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcqdk-0000000C0go-11C5;
	Mon, 05 Jan 2026 19:53:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcqdh-0000000C0ff-15N2
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 19:53:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vcqdf-0001OU-IY; Mon, 05 Jan 2026 20:53:15 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vcqdf-009EDB-0g;
	Mon, 05 Jan 2026 20:53:15 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vcqdf-00CZcN-0G;
	Mon, 05 Jan 2026 20:53:15 +0100
Date: Mon, 5 Jan 2026 20:53:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	"Claude Sonnet 4.5" <noreply@anthropic.com>
Message-ID: <aVwWq1BJEMDWT8dq@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-4-e97853f98232@pengutronix.de>
 <6f69f906-bb29-40ad-8a3b-9cb09cb499b3@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6f69f906-bb29-40ad-8a3b-9cb09cb499b3@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_115317_296986_3EC8F6F3 
X-CRM114-Status: GOOD (  35.65  )
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
Subject: Re: [PATCH 04/19] ARM: implement elf_apply_relocations() for ELF
 relocation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 05, 2026 at 12:58:23PM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 1/5/26 12:26 PM, Sascha Hauer wrote:
> > Implement architecture-specific ELF relocation handlers for ARM32 and ARM64.
> > 
> > ARM32 implementation (arch/arm/lib32/elf_reloc.c):
> > - Handles REL-format relocations (no explicit addend)
> > - Supports R_ARM_RELATIVE and R_ARM_ABS32 relocation types
> > - Addend is read from the target location
> > 
> > ARM64 implementation (arch/arm/lib64/elf_reloc.c):
> > - Handles RELA-format relocations (with explicit addend)
> > - Supports R_AARCH64_RELATIVE and R_AARCH64_ABS64 relocation types
> > - Addend is provided in relocation entry
> > 
> > Both implementations:
> > - Parse PT_DYNAMIC segment to locate relocation tables
> > - Validate relocation table format and entry sizes
> > - Apply relocations based on the computed load offset
> > - Return appropriate errors for unsupported relocation types
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
> > ---
> >  arch/arm/include/asm/elf.h |  11 +++++
> >  arch/arm/lib32/Makefile    |   1 +
> >  arch/arm/lib32/elf_reloc.c | 105 +++++++++++++++++++++++++++++++++++++++++++++
> >  arch/arm/lib64/Makefile    |   1 +
> >  arch/arm/lib64/elf_reloc.c | 105 +++++++++++++++++++++++++++++++++++++++++++++
> >  5 files changed, 223 insertions(+)
> > 
> > diff --git a/arch/arm/include/asm/elf.h b/arch/arm/include/asm/elf.h
> > index 4043e6fd5b991eb5cccb3fa0ea28d208006ee1fc..cceb92ee1a5f63c37b0e981c263676bd35a261c0 100644
> > --- a/arch/arm/include/asm/elf.h
> > +++ b/arch/arm/include/asm/elf.h
> > @@ -36,6 +36,17 @@ typedef struct user_fp elf_fpregset_t;
> >  #define R_ARM_THM_CALL		10
> >  #define R_ARM_THM_JUMP24	30
> >  
> > +/* Additional relocation types for dynamic linking */
> > +#define R_ARM_RELATIVE		23
> 
> This is already defined in arch/arm/cpu/common.c, you can guess where
> this is going ;)
> 
> > +#define R_ARM_GLOB_DAT		21
> > +#define R_ARM_JUMP_SLOT		22
> 
> These two are not used.
> 
> > +
> > +#define R_AARCH64_NONE		0
> > +#define R_AARCH64_ABS64		257
> > +#define R_AARCH64_RELATIVE	1027
> > +#define R_AARCH64_GLOB_DAT	1025
> > +#define R_AARCH64_JUMP_SLOT	1026
> 
> Likewise, only R_AARCH64_JUMP_SLOT and R_AARCH64_GLOB_DAT are not used.
> 
> > +/*
> > + * Parse dynamic section and extract relocation info for ARM32
> > + */
> > +static int parse_dynamic_section(struct elf_image *elf, Elf32_Dyn *dyn,
> > +				  Elf32_Rel **rel_out, u64 *relsz_out)
> > +{
> > +	Elf32_Rel *rel = NULL;
> 
> If we define ELF_CLASS depending on CONFIG_ARM32/CONFIG_ARM64, we can
> write a generic parse_dynamic_section() that applies to all architectures.
> 
> In this case, we would just collect both REL and RELA in the switch and
> just use what's available.
> > +int elf_apply_relocations(struct elf_image *elf, void *dyn_seg)
> > +{
> 
> We already have relocate_to_current_adr(). If we change it to call
> a new relocate_image():
> 
> 	relocate_image(get_runtime_offset(),
> 			runtime_addr(__rel_dyn_start),
> 			runtime_addr(__rel_dyn_end),
> 			runtime_addr(__dynsym_start),
> 			runtime_addr(__dynsym_end));
> 
> Then we could use relocate_image() in generic code instead of
> duplicating it per architecture.
> 
> > +/*
> > + * Parse dynamic section and extract relocation info for ARM64
> > + */
> > +static int parse_dynamic_section(struct elf_image *elf, Elf64_Dyn *dyn,
> > +				  Elf64_Rela **rela_out, u64 *relasz_out)
> 
> Same comment as for ARM32. I believe this can go into generic code.
> 
> > +		case R_AARCH64_ABS64:
> > +			/* B(P) = S + A */
> > +			*fixup_addr = base + rela->r_addend;
> > +			break;
> 
> What did you do to get R_AARCH64_ABS64 relocations? We don't handle them
> in relocate_to_current_adr() and they shouldn't have been generated.

Likely Claude just generated this for completeness.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


