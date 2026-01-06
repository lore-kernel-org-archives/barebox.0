Delivery-date: Tue, 06 Jan 2026 15:13:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7oN-001v97-0r
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 15:13:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7oM-0004o4-NH
	for lore@pengutronix.de; Tue, 06 Jan 2026 15:13:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wnCd38B3kbvmLwN2c6F01FO1VK85ySjuvcpb9qYNGbQ=; b=G1zaYrfQanmSa+xjY/48+QU5Un
	R4iLCprPgOXd22ndsOmKKGqICwCAR0CkKBMHYK+Y973O6trvtpsBzigitJPCunPUdKiI11ldELUzh
	sHkwfbAIexPIwjemMkvZVsZ8kEeCNg+3yCuT4TcbhgcV0krhCtZeIEj+fyzdWla1vH0kPpWUdOYTb
	NZ7noq10nhoxD+jXPL99XJcljLDH4eTSBJt/IMaplRDtdll8/XOsEuuhIanr1eY3vu/EyeGYzVcwV
	Db1USf18gOB9mjyHg9hAFY+yp1Bz7TLpA3nGI/98HKyi/wywANXdiKJt/wAoHlLenV6izV7XfqdEM
	vn1uEX/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7nz-0000000DG9M-1Fzu;
	Tue, 06 Jan 2026 14:13:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7nx-0000000DG8z-1bsc
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 14:13:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd7nv-0004ht-Nu; Tue, 06 Jan 2026 15:12:59 +0100
Message-ID: <047029d9-f4c5-4406-8ba8-9c6a687ad262@pengutronix.de>
Date: Tue, 6 Jan 2026 15:12:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-19-487bc760f045@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260106-pbl-load-elf-v2-19-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_061301_427577_3AEA8A30 
X-CRM114-Status: GOOD (  14.45  )
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
Subject: Re: [PATCH v2 19/21] riscv: linker script: create separate PT_LOAD
 segments for text, rodata, and data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/6/26 1:53 PM, Sascha Hauer wrote:
> Fix the linker script to generate three distinct PT_LOAD segments with
> correct permissions instead of combining .rodata with .data.

Does this need to be moved before the previous patch to avoid
intermittent breakage?

> Before this fix, the linker auto-generated only two PT_LOAD segments:
> 1. Text segment (PF_R|PF_X)
> 2. Data segment (PF_R|PF_W) - containing .rodata, .data, .bss, etc.
> 
> This caused .rodata to be mapped with write permissions when
> riscv_mmu_setup_from_elf() or riscv_pmp_setup_from_elf() set up memory
> permissions based on ELF segments, defeating the W^X protection.
> 
> With explicit PHDRS directives, we now generate three segments:
> 1. text segment (PF_R|PF_X): .text and related code sections
> 2. rodata segment (PF_R): .rodata and related read-only sections
> 3. data segment (PF_R|PF_W): .data, .bss, and related sections
> 
> This ensures riscv_mmu_setup_from_elf() and riscv_pmp_setup_from_elf()
> correctly map .rodata as read-only instead of read-write.
> 
> Also update the prelink script to handle binaries without a PT_DYNAMIC
> segment, as the new PHDRS layout may result in this case.

Did you observe this happening?

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



