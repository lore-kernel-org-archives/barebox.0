Delivery-date: Tue, 04 Jul 2023 09:37:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGab5-00EW4q-GM
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 09:37:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGab2-0005fr-Vz
	for lore@pengutronix.de; Tue, 04 Jul 2023 09:37:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z5dAt4DlH/EZZ1B8/HDZNyb9jxAFV+ZLjfvriuzS2XA=; b=o8l6zc30E6j0Ph1+lUY1TAPzZP
	ckokG9KUmwPjpi9H9k14JpjMg/fmDYpD+7O5QuONPQvpwSmC2yN3OQ626VTTxw+jBfFqDbJG1TTt8
	cpXcs0sP12j2UL7t6kbekN0GkTpxItHlcwPeItaVWmTlyqktAHqml0/JAV5zeyfT+S2QW8xFjoHAq
	8p7g12+WhlhGX3UxrcXN2M4frzFoSecMoGYU4MlM/YJ1uoL4qPhzjz4U+sfSJsq9ILA0rAwv6GhOj
	EU5rPBJP0/hYf5ITDZ35Jl3iTGJYpbdGIACRSGiP0QLlukbSGM5PRzTU1g0Rb5HFD4YWGZo+nxc4H
	o1ZDLvtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGaZy-00CRfb-2y;
	Tue, 04 Jul 2023 07:36:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGaZw-00CReo-1x
	for barebox@lists.infradead.org;
	Tue, 04 Jul 2023 07:36:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGaZv-0005WY-Ae; Tue, 04 Jul 2023 09:36:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGaZv-0002hx-4s; Tue, 04 Jul 2023 09:36:03 +0200
Date: Tue, 4 Jul 2023 09:36:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230704073603.GS18491@pengutronix.de>
References: <20230703142122.1522533-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230703142122.1522533-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_003604_643581_980AE28B 
X-CRM114-Status: GOOD (  20.75  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] firmware: fix alignment of firmware images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 03, 2023 at 04:21:22PM +0200, Ahmad Fatoum wrote:
> ASM_LGPTR is a preprocessor symbol, not a Make variable, so expanding it
> in the Makefile results in .p2align without an argument, which disables
> alignment requirement. Fix this to restore the sizeof(void *) alignment
> we had before.
> 
> Fixes: a59e2740b4a7 ("firmware: reference pointer alignment defined in <asm-generic/pointer.h>")
> Reported-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  firmware/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/firmware/Makefile b/firmware/Makefile
> index 8d3bfb0752ff..d7f35853a404 100644
> --- a/firmware/Makefile
> +++ b/firmware/Makefile
> @@ -49,7 +49,7 @@ filechk_fwbin = { \
>  	echo "\#include <asm-generic/pointer.h>"		;\
>  	echo ".section .note.GNU-stack,\"\",%progbits"		;\
>  	echo "    .section $2,\"$3\""				;\
> -	echo "    .p2align $(ASM_LGPTR)"			;\
> +	echo "    .p2align ASM_LGPTR"				;\
>  	echo ".global _fw_$(FWSTR)_start"			;\
>  	echo "_fw_$(FWSTR)_start:"				;\
>  	echo "\#if $(FWNAME_EXISTS)"				;\
> @@ -68,7 +68,7 @@ filechk_fwbin = { \
>  
>  __fwbin_sha = { \
>  	echo "    .section .rodata.$(FWSTR).sha"		;\
> -	echo "    .p2align $(ASM_LGPTR)"			;\
> +	echo "    .p2align ASM_LGPTR"				;\
>  	echo ".global _fw_$(FWSTR)_sha_start"			;\
>  	echo "_fw_$(FWSTR)_sha_start:"				;\
>  	echo "    .incbin \"$(fwobjdir)/$(FWNAME).sha.bin\""	;\
> -- 
> 2.39.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


