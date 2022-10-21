Delivery-date: Fri, 21 Oct 2022 07:36:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olkhi-002Yto-Hh
	for lore@lore.pengutronix.de; Fri, 21 Oct 2022 07:36:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olkhg-00008e-3f
	for lore@pengutronix.de; Fri, 21 Oct 2022 07:36:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=95dCjtpsd5AF+BnSIGVkU+VZW0aNnUWq/T+usEUuOn8=; b=OgI5eWqqJ3cNAWaO2ummLkNapv
	CtfBiYqkrqCKyvCcL60OIMjq5YflhvaXcdmGMRBCK/o7umKLcQzHKHQq7woDFp3mAyPBFWHMjrKvp
	ADu6bXSY5KoYRQKj74bcv+sdQ7PUCbiU84gixwce4PSixY1hb/wDo9OJsFSrYZWp1Io2tD0f9QK5o
	Ha/6L9BoIG2mbnoDM29oYuXJxFXMOj8s1IxnH/xDMwzZgtIS7NslXw9d7OHRLkVEDAboXwGm54Dy+
	lcKvN4GDfXBcdlwv3hl+Y+ydW/2foSkcAQaUy87j+uvX6tQbUIQrv2h4d3QxXeMmy8ntUGO6JP53L
	gi9Kn3ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olkgJ-005SFo-7w; Fri, 21 Oct 2022 05:34:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olkgE-005SDh-Gb
	for barebox@lists.infradead.org; Fri, 21 Oct 2022 05:34:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1olkgA-0008HB-1R
	for barebox@lists.infradead.org; Fri, 21 Oct 2022 07:34:46 +0200
Message-ID: <ea6c81b2-45d7-e7d5-c9f7-c17c00f5b6af@pengutronix.de>
Date: Fri, 21 Oct 2022 07:34:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
References: <20221020131510.3734338-1-a.fatoum@pengutronix.de>
In-Reply-To: <20221020131510.3734338-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_223450_584319_9845EB1A 
X-CRM114-Status: GOOD (  14.75  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master v2 0/3] Fix GCC 11 THUMB2 relocate_to_current_adr
 miscompile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 20.10.22 15:15, Ahmad Fatoum wrote:
> Since a8b788ba61eb ("relocate_to_current_adr: hang directly on error instead
> of panic()"),  GCC can prove that variables aren't supposed to overlap and as
> such it generated code than readded get_runtime_offset() on top of an
> already relocated linker-defined variable's address.
> See PATCH 2/3 for a disassembly of the affected code. Board code can
> be similarly micompiled, but that's a fix for another day.

v1 -> v2:
  - rename get_unrelocated() to runtime_address()
  - add Fixes: line after identifying why this issue only popped up now:
    removing panic() in relocate_to_current_adr() shifted code around
    enough for compiler to consider optimization worthwhile
  - fixed left-over + offset in RISC-V patch

> 
> Ahmad Fatoum (3):
>   include: asm-generic: reloc: implement runtime_address()
>   ARM: cpu: add compiler barrier around unrelocated access
>   RISC-V: add compiler barriers around unrelocated accesses
> 
>  arch/arm/cpu/common.c             | 15 ++++---
>  arch/arm/cpu/uncompress.c         |  4 +-
>  arch/riscv/boot/uncompress.c      |  4 +-
>  arch/riscv/include/asm/sections.h |  3 +-
>  arch/riscv/lib/reloc.c            | 10 +++--
>  include/asm-generic/reloc.h       | 69 +++++++++++++++++++++++++++++++
>  6 files changed, 91 insertions(+), 14 deletions(-)
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


