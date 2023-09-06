Delivery-date: Wed, 06 Sep 2023 16:15:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdtJH-00637Q-Vj
	for lore@lore.pengutronix.de; Wed, 06 Sep 2023 16:15:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdtJF-0000kM-Tl
	for lore@pengutronix.de; Wed, 06 Sep 2023 16:15:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E0GJSi6H+QXFQPDa2r9CSm2ZOngk6jsnqN3B0yhGbfM=; b=VjwWM8nzPF7OkKCErWb9C3CUxi
	viAtYOiS1c9FV6J+qNBVnvQKLy+DhGp0R1uaYD9dzyKYvQztCvgl/kWNuI/SMYLywgZ0Jmvd4BGzh
	IoH4sy4eoiTMBToYGB+4LXRY84Eidtoh9B2XtihBCBLWhV/QEQNI0FEPpnAFid/8QTRuFrwvJJUcy
	wOdBcTbnxrm2xIvxpPjop35pQvPP4GESVtivKEXzZfWwoTsfJqN6U4x2yL9gPeZYnPAdiLgfIETLY
	s8m4Cc5UZIJRB2Pkw5TRrDAFqkW4JLDE761Mnojl0jrCUlIPOkamed2VeyeJqGM81bB5B6+XbD1CQ
	JzGw4mvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdtIF-00ACSD-15;
	Wed, 06 Sep 2023 14:14:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdtIC-00ACRI-1s
	for barebox@lists.infradead.org;
	Wed, 06 Sep 2023 14:14:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qdtIB-0000Ic-Cq; Wed, 06 Sep 2023 16:14:03 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qdtIB-004RlD-0V; Wed, 06 Sep 2023 16:14:03 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qdtIA-002GFx-NN; Wed, 06 Sep 2023 16:14:02 +0200
Date: Wed, 6 Sep 2023 16:14:02 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, mfe@pengutronix.de, rcz@pengutronix.de
Message-ID: <20230906141402.GF492117@pengutronix.de>
References: <20230905142328.2935148-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230905142328.2935148-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_071404_624642_683DE956 
X-CRM114-Status: GOOD (  22.05  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] firmware: fix dependency tracking for PBL
 firmware files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Sep 05, 2023 at 04:23:28PM +0200, Ahmad Fatoum wrote:
> $(wildcard $(fwdir)/%) was added to allow for optional firmware, but in
> return it broke dependency tracking, because it was evaluated before the
> static pattern rule it's a part of.
> 
> Fix the dependency tracking by only evaluating it in a secondary
> expansion. That this works as expected can be verified with:
> 
>   make -p | grep 'imx8mn-bl31.bin.gen.pbl.o:.*imx8mn-bl31.bin '
> 
> Which will return no result before this patch, but with it applied, it
> will correctly show the dependency. Manual touching and rebuilding also
> builds the firmware now as expected:
> 
>   AS [P]  firmware/imx8mm-bl31.bin.gen.pbl.o
> 
> Fixes: 5b171b7b7eda ("firmware: turn missing firmware into linker error")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  firmware/Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/firmware/Makefile b/firmware/Makefile
> index 5853950dfe4e..4fca83f808f6 100644
> --- a/firmware/Makefile
> +++ b/firmware/Makefile
> @@ -99,7 +99,8 @@ clean-files += *.sha.bin *.sum
>  $(patsubst %.gen.o,$(obj)/%.gen.o, $(obj-pbl-y)): $(obj)/%.gen.o: $(fwdir)/%
>  
>  # The same for pbl:
> -$(patsubst %.gen.o,$(obj)/%.gen.pbl.o, $(obj-pbl-y) $(pbl-y)): $(obj)/%.gen.pbl.o: $(wildcard $(fwdir)/%)
> +.SECONDEXPANSION:
> +$(patsubst %.gen.o,$(obj)/%.gen.pbl.o, $(obj-pbl-y) $(pbl-y)): $(obj)/%.gen.pbl.o: $$(wildcard $(fwdir)/%)
>  $(patsubst %.gen.o,$(obj)/%.extgen.pbl.o, $(pbl-y)): $(obj)/%.extgen.pbl.o: $(fwdir)/%
>  
>  pbl-y += $(addsuffix .extgen.o, $(fw-external-y))
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


