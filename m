Delivery-date: Tue, 06 Jan 2026 00:02:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vctam-001gK7-2k
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 00:02:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vctam-0001g3-5s
	for lore@pengutronix.de; Tue, 06 Jan 2026 00:02:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZI9JovZtSu3bQSoW6J4KU7Ts1ff7yH3B0Of+KnjCKZY=; b=s9vRZG9+bhZfMMW0b6Ykxpycy0
	ILXeYW7XuKdqIem7wRJRk/2nvmKE8s+BcLPQi0kcT/vpMNISlEglBohxTaW0z/sp1tX1J21gWOT45
	Ya+zgxltOhuQxyxoaWmOwZcKCA1X+71vbhTliuHRycgZrdUxJBJRvIYfZfkZ7OtDE0dJAl6e9Lp1i
	9dMzroHiy0FU5ZglMPoTS6FU0gmHBVlN2QRbwBGEvxE6atRDbrgrahs109uWkL+diGh4EBwhgBcIp
	gh5XeBJZHIaXMu+GgroY3XGMb2zGZsXdVWUDuCpof2BJIbChdbolEPhwR1SghR5l+7Ea5F2/KsXDF
	8liagXWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vctaD-0000000CE0o-41MR;
	Mon, 05 Jan 2026 23:01:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vctaC-0000000CE0R-1Dhq
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 23:01:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vctaA-0001SL-Fs; Tue, 06 Jan 2026 00:01:50 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vctaA-009FZx-0T;
	Tue, 06 Jan 2026 00:01:50 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vctaA-00CbrE-03;
	Tue, 06 Jan 2026 00:01:50 +0100
Date: Tue, 6 Jan 2026 00:01:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	"Claude Sonnet 4.5" <noreply@anthropic.com>
Message-ID: <aVxC3ZOkqe3lB6OI@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-14-e97853f98232@pengutronix.de>
 <1d0e01f8-a1d7-4c8c-982a-be21f9dcb67b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1d0e01f8-a1d7-4c8c-982a-be21f9dcb67b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_150152_327717_8177BE07 
X-CRM114-Status: GOOD (  33.16  )
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
Subject: Re: [PATCH 14/19] ARM: linker script: create separate PT_LOAD
 segments for text, rodata, and data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 05, 2026 at 02:11:28PM +0100, Ahmad Fatoum wrote:
> 
> 
> On 1/5/26 12:26 PM, Sascha Hauer wrote:
> > Fix the linker scripts to generate three distinct PT_LOAD segments with
> > correct permissions instead of combining .rodata with .data.
> > 
> > Before this fix, the linker auto-generated only two PT_LOAD segments:
> > 1. Text segment (PF_R|PF_X)
> > 2. Data segment (PF_R|PF_W) - containing .rodata, .data, .bss, etc.
> 
> Did it though? Why did we get the RWX linker warnings then?
> 
> > This caused .rodata to be mapped with write permissions when
> > pbl_mmu_setup_from_elf() set up MMU permissions based on ELF segments,
> > defeating the W^X protection that commit d9ccb0cf14 intended to provide.
> 
> What commit hash is this?

It's an earlier variant of "ARM: PBL: setup MMU with proper permissions
from ELF segments". With this I originally had the problem that I could
write to the rodata section. This patch is the solution Claude came up
with, so Claude referenced it by the commit hash. I re-ordered the
patches afterwards.

> 
> > With explicit PHDRS directives, we now generate three segments:
> > 1. text segment (PF_R|PF_X): .text and related code sections
> > 2. rodata segment (PF_R): .rodata and unwind tables
> > 3. data segment (PF_R|PF_W): .data, .bss, and related sections
> 
> Not directly related, but this is as good a place as any to ask the
> question: How is zero-padding implemented? If the file size is shorter
> than the memory size, the loader is supposed to zero-fill, which is used
> for BSS zeroing for example. Now if you load the ELF in place, we can't
> obviously zero-fill.

Yes we can, see my other mail. The bss section is placed in the ELF binary,
unless it is at the very end of the binary in which case it becomes
smaller by the size of the bss section.

> > +PHDRS
> > +{
> > +	text PT_LOAD FLAGS(5);     /* PF_R | PF_X */
> > +	rodata PT_LOAD FLAGS(4);   /* PF_R */
> > +	data PT_LOAD FLAGS(6);     /* PF_R | PF_W */
> > +	dynamic PT_DYNAMIC FLAGS(6); /* PF_R | PF_W */
> 
> I believe we don't need PF_W for PT_DYNAMIC. You could move it one up to
> merge with rodata.

See readelf output:

Program Headers:
  Type           Offset   VirtAddr   PhysAddr   FileSiz MemSiz  Flg Align
  LOAD           0x001000 0x00000000 0x00000000 0x96190 0x96190 R E 0x1000
  LOAD           0x098000 0x00097000 0x00097000 0x4d2f4 0x4d2f4 R   0x1000
  LOAD           0x0e6000 0x000e5000 0x000e5000 0x216d4 0x283b0 RW  0x1000
  DYNAMIC        0x0f1d74 0x000f0d74 0x000f0d74 0x15960 0x15960 RW  0x4

The DYNAMIC segment is inside the LOAD segment directly above. I don't
know how this segment is really used, but making it readonly means that
it at least would have to be page aligned which it isn't.

> >  	_edata = .;
> > -	.image_end : { *(.__image_end) }
> > +	.image_end : { *(.__image_end) } :data
> >  
> >  	. = ALIGN(4);
> > -	.__bss_start :  { *(.__bss_start) }
> > -	.bss : { *(.bss*) }
> > -	.__bss_stop :  { *(.__bss_stop) }
> > +	.__bss_start :  { *(.__bss_start) } :data
> > +	.bss : { *(.bss*) } :data
> > +	.__bss_stop :  { *(.__bss_stop) } :data
> 
> Side-effect of having the decompressor take care of zeroing BSS is a big
> size increase for CONFIG_IMAGE_COMPRESSION_NONE. I think that's
> acceptable, but it's worth a comment here why we don't have a separate
> BSS segment (or make bss NOALLOC).

The bss section is not part of the binary when it's at its very end,
which it is, so I don't see any size increase.

> FYI, I have patches to get rid of MAX_BSS_SIZE on top of PBL ELF loader
> support, which I will submit once this support is merged.

Great \o/

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


