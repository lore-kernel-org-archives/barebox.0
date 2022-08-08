Delivery-date: Mon, 08 Aug 2022 14:49:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2CJ-00GBY9-Ib
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 14:49:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2CK-0005Ey-BY
	for lore@pengutronix.de; Mon, 08 Aug 2022 14:49:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O04ZnDuaCfCp224q9ehjS8LHXBVgFPKeac3+IuBqYOQ=; b=QG64uFan5257kHwAD2UBpFIIFq
	Ym6zeoa3zdU9aaajauPiUbnrzVOB0dmdG7nekv5M0gxJhGBpC9+v479MLWT7UYWUjcgQrv05rrmf/
	6CHlnWJQs7nGvLHB5s7cN0rbQyiztDJndVYIfXgrdV3zlj5cBKZjuTJRZ1fCwV0GpWXbzIgA28S8i
	JUNIB0nHK3XnwDrnUZVCRAlHBL8iMcbwOmju10aFoq+Ud7CNcM3/fBnE3lTKJagCSijJ74OWLzWTv
	8RdQI/WSDUfEjKyV1P4/p4YBy3kNYGtCE6EE9PsLyXXAMiW4S5QDr4SF5TO5TbW52wF6jrbSfO5jZ
	v2MEtgxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2B9-00DpLG-Ih; Mon, 08 Aug 2022 12:48:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2B4-00DpKB-QN
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 12:48:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2B3-00057z-G1; Mon, 08 Aug 2022 14:48:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2B3-0001Hz-6A; Mon, 08 Aug 2022 14:48:13 +0200
Date: Mon, 8 Aug 2022 14:48:13 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220808124813.GG31528@pengutronix.de>
References: <20220805074237.1148255-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220805074237.1148255-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_054814_873700_8D61E823 
X-CRM114-Status: GOOD (  21.97  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] RISC-V: asm: factor relocation related functions
 into asm/reloc.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 05, 2022 at 09:42:35AM +0200, Ahmad Fatoum wrote:
> To allow use of global_variable_offset() from common PBL code,
> move the definition into a new <asm/reloc.h> header.
> At current time, it's expected that PBL enabled platforms define
> at least get_runtime_offset() there.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/riscv/include/asm/barebox-riscv.h |  7 +------
>  arch/riscv/include/asm/reloc.h         | 15 +++++++++++++++
>  include/asm-generic/reloc.h            | 10 ++++++++++
>  3 files changed, 26 insertions(+), 6 deletions(-)
>  create mode 100644 arch/riscv/include/asm/reloc.h
>  create mode 100644 include/asm-generic/reloc.h

Applied, thanks

Sascha

> 
> diff --git a/arch/riscv/include/asm/barebox-riscv.h b/arch/riscv/include/asm/barebox-riscv.h
> index 5c87d37c9eb8..db6ff0ea7131 100644
> --- a/arch/riscv/include/asm/barebox-riscv.h
> +++ b/arch/riscv/include/asm/barebox-riscv.h
> @@ -21,12 +21,7 @@
>  #include <asm/barebox-riscv-head.h>
>  #include <asm/system.h>
>  #include <asm/cache.h>
> -
> -unsigned long get_runtime_offset(void);
> -
> -void setup_c(void);
> -void relocate_to_current_adr(void);
> -void relocate_to_adr(unsigned long target);
> +#include <asm/reloc.h>
>  
>  void __noreturn __naked barebox_riscv_entry(unsigned long membase, unsigned long memsize,
>  					    void *boarddata, unsigned int flags);
> diff --git a/arch/riscv/include/asm/reloc.h b/arch/riscv/include/asm/reloc.h
> new file mode 100644
> index 000000000000..9a59326cad27
> --- /dev/null
> +++ b/arch/riscv/include/asm/reloc.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
> +#ifndef _ASM_RELOC_H_
> +#define _ASM_RELOC_H_
> +
> +unsigned long get_runtime_offset(void);
> +
> +void relocate_to_current_adr(void);
> +void relocate_to_adr(unsigned long target);
> +
> +void setup_c(void);
> +
> +#include <asm-generic/reloc.h>
> +
> +#endif	/* _BAREBOX_RISCV_H_ */
> diff --git a/include/asm-generic/reloc.h b/include/asm-generic/reloc.h
> new file mode 100644
> index 000000000000..90459371ebe8
> --- /dev/null
> +++ b/include/asm-generic/reloc.h
> @@ -0,0 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
> +#ifndef _ASM_GENERIC_RELOC_H_
> +#define _ASM_GENERIC_RELOC_H_
> +
> +#ifndef global_variable_offset
> +#define global_variable_offset() get_runtime_offset()
> +#endif
> +
> +#endif
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


