Delivery-date: Mon, 24 Oct 2022 11:04:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omtNq-000T92-LE
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 11:04:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omtNp-0002O8-J6
	for lore@pengutronix.de; Mon, 24 Oct 2022 11:04:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ujSuRXhLv7gDMmDxX0mqJXtaNfgz8SP/gYwB+x/WHYo=; b=aBem6aIBzsj8nRq9iYHiS6qqLR
	fmCCo5crID6xCbK+cyCEdgxZ5GKXKuUW9DSx95mbZrt/eh12lPuDmWiBumfNNsMpmoggjMEnIkSsR
	kGL79iw+mQJlKgHmavm54AXx1lNsvXgb2Ujqziu4fe7BaZz/GnmBXkZQ7hLRVMbepcMuE5EhQ+Xyz
	vmB3wARIRj1va3s2Jbk8WXLEVwf7hVdiVUowlF16CPgxHV9rqztRMropvW7kVged1DMUKi60/7IOn
	Z4W37X5BR8l9yN0ylLuX1A5ZVifNTdXKufIPfyubXgw1HgXnDOTDqJQExk1fd24yQ0fnTs71rKHOv
	Dc31VsaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtMb-000H2j-NU; Mon, 24 Oct 2022 09:03:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtMX-000H1s-83
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 09:03:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1omtMV-0002BM-6r; Mon, 24 Oct 2022 11:03:11 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1omtMU-0007z3-Vb; Mon, 24 Oct 2022 11:03:10 +0200
Date: Mon, 24 Oct 2022 11:03:10 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221024090310.GK6702@pengutronix.de>
References: <20221020131510.3734338-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221020131510.3734338-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_020313_309380_A56C8521 
X-CRM114-Status: GOOD (  16.17  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master v2 0/3] Fix GCC 11 THUMB2 relocate_to_current_adr
 miscompile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Oct 20, 2022 at 03:15:07PM +0200, Ahmad Fatoum wrote:
> Since a8b788ba61eb ("relocate_to_current_adr: hang directly on error instead
> of panic()"),  GCC can prove that variables aren't supposed to overlap and as
> such it generated code than readded get_runtime_offset() on top of an
> already relocated linker-defined variable's address.
> See PATCH 2/3 for a disassembly of the affected code. Board code can
> be similarly micompiled, but that's a fix for another day.
> 
> Ahmad Fatoum (3):
>   include: asm-generic: reloc: implement runtime_address()
>   ARM: cpu: add compiler barrier around unrelocated access
>   RISC-V: add compiler barriers around unrelocated accesses

Applied, thanks

Sascha

> 
>  arch/arm/cpu/common.c             | 15 ++++---
>  arch/arm/cpu/uncompress.c         |  4 +-
>  arch/riscv/boot/uncompress.c      |  4 +-
>  arch/riscv/include/asm/sections.h |  3 +-
>  arch/riscv/lib/reloc.c            | 10 +++--
>  include/asm-generic/reloc.h       | 69 +++++++++++++++++++++++++++++++
>  6 files changed, 91 insertions(+), 14 deletions(-)
> 
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


