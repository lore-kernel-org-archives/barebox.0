Delivery-date: Wed, 28 Jun 2023 09:16:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qEPPU-006qRM-9r
	for lore@lore.pengutronix.de; Wed, 28 Jun 2023 09:16:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qEPPS-0007Kt-03
	for lore@pengutronix.de; Wed, 28 Jun 2023 09:16:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E35FtFarFb6WCq47W2XeEKdUPcjGiIlTAxenz5yHuWM=; b=jPtRt/bDAfRJfwCybBMDVgxE1n
	vj8o+gaRobyv25oVULst5G5UcxNc9Il/huSq/h7t+uv6asMa7ZzLnSQ7jGbhDdFz778XZvkARKhE+
	4PKwKV8AadKqNzmg0kEDKii3vCFsr2Dbrs01FY3DowKhcwLOzZE8W90GhkimkTxsG3XiUtbQI/71l
	0YcXYI84NPT+V/VtW3MSrBYriqTi91KWxeQCW18h1TnHIeclo6V6rjTx35FVoU7CCTKaENZgukfdV
	AMVsQYGJme7sMHxBGnA8nZCnTydsf8jSDG2k+f8JuEzDfKX94jqcj7Bj/DsTgSUuJOb3mRGCMMeBw
	nTjamP0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEPNx-00F2qh-13;
	Wed, 28 Jun 2023 07:14:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEPNu-00F2pi-2h
	for barebox@lists.infradead.org;
	Wed, 28 Jun 2023 07:14:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qEPNn-0006tV-6O; Wed, 28 Jun 2023 09:14:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qEPNn-0001i3-09; Wed, 28 Jun 2023 09:14:31 +0200
Date: Wed, 28 Jun 2023 09:14:30 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, uol@pengutronix.de
Message-ID: <20230628071430.GZ18491@pengutronix.de>
References: <20230627055239.3908872-1-a.fatoum@pengutronix.de>
 <20230627055239.3908872-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230627055239.3908872-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230628_001438_875333_22496FD2 
X-CRM114-Status: GOOD (  18.36  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master v2 1/7] firmware: reference pointer alignment
 defined in <asm-generic/pointer.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 27, 2023 at 07:52:33AM +0200, Ahmad Fatoum wrote:
> We already define pointer size constants for use in assembly. Make use
> of this header. No functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  firmware/Makefile | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/firmware/Makefile b/firmware/Makefile
> index 75812cb6bf24..80c498994cce 100644
> --- a/firmware/Makefile
> +++ b/firmware/Makefile
> @@ -41,12 +41,12 @@ obj-pbl-y := $(addsuffix .gen.o, $(firmware-y))
>  
>  FWNAME    = $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@))
>  FWSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWNAME))))
> -ASM_ALIGN = $(if $(CONFIG_64BIT),3,2)
>  
>  filechk_fwbin = { \
>  	echo "/* Generated by $(src)/Makefile */"		;\
> +	echo "\#include <asm-generic/pointer.h>"		;\
>  	echo "    .section $2,\"$3\""				;\
> -	echo "    .p2align $(ASM_ALIGN)"			;\
> +	echo "    .p2align $(ASM_LGPTR)"			;\

This expands ASM_LGPTR as a Make variable. That variable is empty, so
this results in .p2align without argument. Should be .p2align ASM_LGPTR.

>  	echo ".global _fw_$(FWSTR)_start"			;\
>  	echo "_fw_$(FWSTR)_start:"				;\
>  	echo "    .incbin \"$(fwdir)/$(FWNAME)\""		;\
> @@ -56,7 +56,7 @@ filechk_fwbin = { \
>  
>  __fwbin_sha = { \
>  	echo "    .section .rodata.$(FWSTR).sha"		;\
> -	echo "    .p2align $(ASM_ALIGN)"			;\
> +	echo "    .p2align $(ASM_LGPTR)"			;\

Ditto. I'll fix that up while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


