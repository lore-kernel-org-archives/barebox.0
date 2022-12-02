Delivery-date: Fri, 02 Dec 2022 10:01:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11vd-008LOY-F2
	for lore@lore.pengutronix.de; Fri, 02 Dec 2022 10:01:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11vc-0004k3-PV
	for lore@pengutronix.de; Fri, 02 Dec 2022 10:01:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vN00ypMKoIBXRPc30VezQxlzXz8TfJms2I2hyihGDSo=; b=MGUUv5UwSG6VxYr6WQoW6L3EzF
	1umER7hZZB1bNmzdPGTbzHTMvFVslVDPTgGI7ov49xoN5pNPUXAtT7IfpLh+7LifAaAUgrQhvSHC0
	JSqluMHMYtQz846EMtrlk/rqaBGhuVkZ8tJTwo4pWHPzi4c085pbYoXvdpKBwo9bvKqw4arFP4noP
	R8o0yynVgc+ArXK3zFIt+v3nVLB18abejKPMPbZR0N9omWBLPGdpFKxoOm53Sn+wLr3VU11SdR7Yk
	a4xozP7o+/XmWHGMSjSoRUfKLI15ZKKj616NnGDEqS/KIBaqDRR5pEABOZ1m0eMmpktV4qdV97sBJ
	tRsIfqpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11uJ-00Ekca-74; Fri, 02 Dec 2022 09:00:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11uE-00Ekbk-Df
	for barebox@lists.infradead.org; Fri, 02 Dec 2022 09:00:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p11uC-0004Ap-Nr; Fri, 02 Dec 2022 10:00:24 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p11uC-0006nT-Gv; Fri, 02 Dec 2022 10:00:24 +0100
Date: Fri, 2 Dec 2022 10:00:24 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221202090024.GP29728@pengutronix.de>
References: <20221201145418.2709053-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221201145418.2709053-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221202_010026_479504_20524039 
X-CRM114-Status: GOOD (  23.93  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] firmware: Makefile: fix firmware file dependency tracking
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 01, 2022 at 03:54:18PM +0100, Marco Felsch wrote:
> Commit 663894d99c64 ("firmware: refactor firmware/Makefile") aligned the
> barebox code with the kernel code. This commit replaced the usage of
> $(fw-external-y) by $(obj-pbl-y) and added the '.gen.o' suffix directly
> but didn't adapted the patsubst logic for tracking the binary firmware
> files. As result a firmware binary file update is not recognized by make
> and and won't make into the final binary. This commit fixes this and so
> an update will be recognized automatically without require a 'make
> clean' before.
> 
> Fixes: 663894d99c64 ("firmware: refactor firmware/Makefile")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  firmware/Makefile | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Thanks for fixing this. I also was nagged quite a few times by this.

Applied, thanks

Sascha

> 
> diff --git a/firmware/Makefile b/firmware/Makefile
> index f6ff5b831b..da341871d6 100644
> --- a/firmware/Makefile
> +++ b/firmware/Makefile
> @@ -79,11 +79,11 @@ $(obj)/%.sum: $(obj)/% FORCE
>  clean-files += *.sha.bin *.sum
>  
>  # The .o files depend on the binaries directly; the .S files don't.
> -$(patsubst %,$(obj)/%.gen.o, $(obj-pbl-y)): $(obj)/%.gen.o: $(fwdir)/%
> +$(patsubst %.gen.o,$(obj)/%.gen.o, $(obj-pbl-y)): $(obj)/%.gen.o: $(fwdir)/%
>  
>  # The same for pbl:
> -$(patsubst %,$(obj)/%.gen.pbl.o, $(obj-pbl-y)): $(obj)/%.gen.pbl.o: $(fwdir)/%
> -$(patsubst %,$(obj)/%.extgen.pbl.o, $(pbl-y)): $(obj)/%.extgen.pbl.o: $(fwdir)/%
> +$(patsubst %.gen.o,$(obj)/%.gen.pbl.o, $(obj-pbl-y)): $(obj)/%.gen.pbl.o: $(fwdir)/%
> +$(patsubst %.gen.o,$(obj)/%.extgen.pbl.o, $(pbl-y)): $(obj)/%.extgen.pbl.o: $(fwdir)/%
>  
>  pbl-y := $(addsuffix .extgen.o, $(fw-external-y))
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


