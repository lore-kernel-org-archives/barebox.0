Delivery-date: Thu, 08 Jan 2026 16:26:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdrto-002f7l-05
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 16:26:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdrtn-00044p-Ey
	for lore@pengutronix.de; Thu, 08 Jan 2026 16:26:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QfO7bKmHequG9MQuwLxWQmlL3llCFiWJEH37BSL3K6Q=; b=z7oSvfYnD2in7ZZkvZL6MLXtRD
	LqEB5K+dWHLzRNpgwAAOU5RLCOyKSNoIoTJF+7BqJwX+0f7ZJaijE0/t0SXlLLEl7R7BEwqXAZ/z0
	sB+2lwmu1S+3QgGfVR7PSfMMbBAvT6yULLEoEOU5c6HYRrW+MAAHxXlL2ata219PFN7R9fFG09irD
	IbZI5dS0Lv7P3JgwtCfzHAIQl1CqDangCefao08jipR2nBjmSe2NMVm1BSzGeMn1noJmGZEV/uovD
	z5j9MKlK8ny14q4E5QL2A1ksnEnSVD9wg7hUA5+6f+QCHlQn0Dj6ypPI+wzn8ya3DfoRXc9HDBwqD
	cX5zZhaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdrt2-0000000HW2R-3qz0;
	Thu, 08 Jan 2026 15:25:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdrt0-0000000HW0Y-2AF5
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 15:25:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vdrsx-0003ur-9x; Thu, 08 Jan 2026 16:25:15 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vdrsw-009hOk-31;
	Thu, 08 Jan 2026 16:25:14 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vdrsw-000OBf-2d;
	Thu, 08 Jan 2026 16:25:14 +0100
Date: Thu, 8 Jan 2026 16:25:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	"Claude Sonnet 4.5" <noreply@anthropic.com>
Message-ID: <aV_MWhT-yjIVLSQw@pengutronix.de>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-19-487bc760f045@pengutronix.de>
 <047029d9-f4c5-4406-8ba8-9c6a687ad262@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <047029d9-f4c5-4406-8ba8-9c6a687ad262@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_072518_550896_C08F9E76 
X-CRM114-Status: GOOD (  22.31  )
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
Subject: Re: [PATCH v2 19/21] riscv: linker script: create separate PT_LOAD
 segments for text, rodata, and data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 06, 2026 at 03:12:59PM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 1/6/26 1:53 PM, Sascha Hauer wrote:
> > Fix the linker script to generate three distinct PT_LOAD segments with
> > correct permissions instead of combining .rodata with .data.
> 
> Does this need to be moved before the previous patch to avoid
> intermittent breakage?
> 
> > Before this fix, the linker auto-generated only two PT_LOAD segments:
> > 1. Text segment (PF_R|PF_X)
> > 2. Data segment (PF_R|PF_W) - containing .rodata, .data, .bss, etc.
> > 
> > This caused .rodata to be mapped with write permissions when
> > riscv_mmu_setup_from_elf() or riscv_pmp_setup_from_elf() set up memory
> > permissions based on ELF segments, defeating the W^X protection.
> > 
> > With explicit PHDRS directives, we now generate three segments:
> > 1. text segment (PF_R|PF_X): .text and related code sections
> > 2. rodata segment (PF_R): .rodata and related read-only sections
> > 3. data segment (PF_R|PF_W): .data, .bss, and related sections
> > 
> > This ensures riscv_mmu_setup_from_elf() and riscv_pmp_setup_from_elf()
> > correctly map .rodata as read-only instead of read-write.
> > 
> > Also update the prelink script to handle binaries without a PT_DYNAMIC
> > segment, as the new PHDRS layout may result in this case.
> 
> Did you observe this happening?

I did during development, but not any longer. Maybe this is no longer
necessary due to other changes. I'll remove that for now.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


