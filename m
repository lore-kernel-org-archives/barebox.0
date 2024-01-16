Delivery-date: Tue, 16 Jan 2024 10:16:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPfZ4-001fxN-0M
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 10:16:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPfZ4-0004To-MW
	for lore@pengutronix.de; Tue, 16 Jan 2024 10:16:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TYI2ehYHbgyga2+EI6vlb3T12JzIpMqWx04oTJVnUw0=; b=EaGLQzBsyZx8BxHUvhne7z1+Gr
	voXfCgucVPw8Xg6YExUdyB/jrx0PGk8oWnwqnZ63pO3WUMUPUZwY0yf6h96L/kN592hu9BSeBmURp
	LSa9B9lNIUzGLvSJvjw2m5gezBFMhp24shDIg1qDdEM8Hb/ZDUXkjxBFMGpQKaMCk5cVtwALvOKeL
	KO7pMRuXcjcMxRyxKc9cp64Ycpe/n4lt9+5/m1xUxSbX65j/xdKR7tRMOPBfOUI/oboeDTmeroMNB
	OybqGAEc/ew4ytB7+/s8HDu5tonlOjCTDNFY4g85ZQcM6KpkXo1H03KkJTNPgSGilbZOcIFXiyjuh
	3SvNQ0PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPfXt-00BVvo-18;
	Tue, 16 Jan 2024 09:15:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPfXq-00BVv2-0f
	for barebox@lists.infradead.org;
	Tue, 16 Jan 2024 09:15:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rPfXm-0004P6-7P; Tue, 16 Jan 2024 10:15:38 +0100
Message-ID: <098a9970-632d-4534-987c-bb4acef89076@pengutronix.de>
Date: Tue, 16 Jan 2024 10:15:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
References: <20240116091020.2971875-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240116091020.2971875-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_011542_242422_4D4B1957 
X-CRM114-Status: GOOD (  20.37  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] firmware: fix external firmware dependencies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 16.01.24 10:10, Sascha Hauer wrote:
> A pbl is not rebuilt when the firmware file specified in fw-external-y
> changes.
> 
> $(patsubst %.gen.o,$(obj)/%.extgen.pbl.o, $(pbl-y)) is executed before
> pbl-y actually contains the contents of fw-external-y. Also we want to
> do the subsitution only for the external firmware files, not for pbl-y.
> 
> To fix this use a intermediate variable pbl-fwext-y instead of pbl-y and
> initialize it before usage.
> 
> Also, use $$(wildcard $(fwdir)/%) instead of $(fwdir)/% to successfully
> compile when the external firmware file is missing.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Thanks for fixing!

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad



> ---
>  firmware/Makefile | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/firmware/Makefile b/firmware/Makefile
> index 4c68817fc6..27504e9442 100644
> --- a/firmware/Makefile
> +++ b/firmware/Makefile
> @@ -42,6 +42,7 @@ fwobjdir := $(objtree)/firmware
>  
>  pbl-y     := $(addsuffix .gen.o, $(pbl-firmware-y))
>  obj-pbl-y := $(addsuffix .gen.o, $(firmware-y))
> +pbl-fwext-y := $(addsuffix .extgen.o, $(fw-external-y))
>  
>  FWNAME    = $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@))
>  FWSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWNAME))))
> @@ -104,9 +105,9 @@ $(patsubst %.gen.o,$(obj)/%.gen.o, $(obj-pbl-y)): $(obj)/%.gen.o: $(fwdir)/%
>  # The same for pbl:
>  .SECONDEXPANSION:
>  $(patsubst %.gen.o,$(obj)/%.gen.pbl.o, $(obj-pbl-y) $(pbl-y)): $(obj)/%.gen.pbl.o: $$(wildcard $(fwdir)/%)
> -$(patsubst %.gen.o,$(obj)/%.extgen.pbl.o, $(pbl-y)): $(obj)/%.extgen.pbl.o: $(fwdir)/%
> +$(patsubst %.extgen.o,$(obj)/%.extgen.pbl.o, $(pbl-fwext-y)): $(obj)/%.extgen.pbl.o: $$(wildcard $(fwdir)/%)
>  
> -pbl-y += $(addsuffix .extgen.o, $(fw-external-y))
> +pbl-y += $(pbl-fwext-y)
>  
>  targets := $(patsubst $(obj)/%,%, \
>                                  $(shell find $(obj) -name \*.gen.S 2>/dev/null))

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



