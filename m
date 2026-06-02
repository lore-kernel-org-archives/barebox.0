Delivery-date: Tue, 02 Jun 2026 09:01:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUJ8E-001Uwy-29
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 09:01:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUJ8D-0007Qt-R1
	for lore@pengutronix.de; Tue, 02 Jun 2026 09:01:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7yplczFOVjW+Zv4rdQPLz15iCX7BQb+EpET94UEFTc4=; b=O77CF0mtiMonR9mz5fYBWTH4n4
	ZfmRo5GCuorMrjhcGXopL/P3v+7kds5Hn8+JQuXjwJQox1ZNGT8N0Z5+oYuDiP3EzOEvALcTwb0cN
	3DVen6NM2Yyfv68UmyzAeYC/wZJAw4kMeAqKdwHWjjASK8DUsZA1Kjtt5N9Q1fwdKJWOXY1Tdb48A
	K5J7xJKagk1Sbz7zDXqVzDx8zxlmw4CBnti+OThMYIgTBQ2z5yqBk96AE5NQwXnvjDfOK/8UlR/Kg
	QSkojWxvTZPRqV11SHS/hN0cBF49GyiqA3D0auR787lCHFDbYVehr2d1gTsc1TO4jO/if8K/DdV2s
	7GBaKnow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUJ74-0000000CQ5i-46zy;
	Tue, 02 Jun 2026 07:00:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUJ70-0000000CQ5H-22t3
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 07:00:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wUJ6x-0007GW-Kh; Tue, 02 Jun 2026 09:00:27 +0200
Message-ID: <90cd7b0f-4783-4fb3-8faf-3436d21db90b@pengutronix.de>
Date: Tue, 2 Jun 2026 09:00:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
 barebox@lists.infradead.org
Cc: thomas.haemmerle@leica-geosystems.com
References: <20260602060819.1646815-1-johannes.schneider@leica-geosystems.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260602060819.1646815-1-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_000030_633165_3D792704 
X-CRM114-Status: GOOD (  28.59  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] lib: logo: support a single pre-rendered logo file as an
 alternative to SVG
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Johannes,

On 6/2/26 8:08 AM, Johannes Schneider wrote:
> Add a "Logo source" choice that switches between the upstream behaviour
> (BAREBOX_LOGO_STOCK -- render Documentation/barebox.svg at build time
> with ImageMagick) and a new pre-rendered single-file mode
> (BAREBOX_LOGO_FILE -- include one PNG verbatim, no conversion).
> 
> The single-file mode addresses two issues for vendor-branded splashes
> on fixed-resolution panels:
> 
>   - The multi-size stock options can be combined; e.g. enabling 640
>     and a hypothetical 800 variant in parallel embedded both blobs,
>     even though only one is ever displayed on a given panel.  The new
>     BAREBOX_LOGO_FILE selector replaces all of the BAREBOX_LOGO_<size>
>     flags with a single configurable PNG path -- exactly one logo
>     blob in the resulting binary.
> 
>   - It removes the build-time ImageMagick dependency in the
>     custom-logo path.  CI environments where Inkscape and ImageMagick
>     versions drift (see the SELF_CALL=xxx Inkscape workaround at
>     the top of cmd_png) can produce a pre-rendered PNG once and check
>     it in.  Stock mode keeps its existing convert(1) chain.
> 
> The new symbol is barebox-logo-custom; the resulting bblogo blob is
> embedded under __bblogo_barebox_logo_custom_{start,end} and exposed at
> /logo/barebox-logo-custom.<ext> in the running barebox.
> 
> CONFIG_BAREBOX_LOGO_FILE_PATH selects the source PNG, relative to the
> barebox srctree (default lib/logo/barebox-logo-custom.png).  The
> existing BAREBOX_LOGO_64..640 size options remain available, gated on
> BAREBOX_LOGO_STOCK.

CONFIG_BAREBOX_LOGO is solely about including the barebox logo.

To include your custom PNG, just put it into your environment (e.g.
/env/data), no need to patch barebox. You are not even limited to one
logo in that case.

Tangentially related, I am in favor of including vendor logos (e.g. in
your case Leica's) into barebox for use with the vendor board support,
but these should also be SVGs IMO.

> Upstream-Status: Pending

Please drop this out-of-place tag.

Cheers,
Ahmad

> 
> Assisted-by: Claude Opus 4.7 (1M context)
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---
>  lib/logo/Kconfig  | 35 +++++++++++++++++++++++++++++++++++
>  lib/logo/Makefile | 19 +++++++++++++++++++
>  2 files changed, 54 insertions(+)
> 
> diff --git a/lib/logo/Kconfig b/lib/logo/Kconfig
> index 7e5a6fcb63..ab64ce242d 100644
> --- a/lib/logo/Kconfig
> +++ b/lib/logo/Kconfig
> @@ -35,6 +35,30 @@ config BAREBOX_LOGO_QOI
>  
>  endchoice
>  
> +choice
> +	prompt "Logo source"
> +	default BAREBOX_LOGO_STOCK
> +	help
> +	  Choose how the boot logo is produced.
> +
> +config BAREBOX_LOGO_STOCK
> +	bool "Stock barebox logo (rendered from SVG)"
> +	help
> +	  Render Documentation/barebox.svg at build time into the sizes
> +	  selected below.  Requires ImageMagick's convert tool in the
> +	  build environment.
> +
> +config BAREBOX_LOGO_FILE
> +	bool "Pre-rendered logo from file"
> +	help
> +	  Use a pre-rendered PNG as the boot logo, taken verbatim with
> +	  no build-time conversion.  Suitable for vendor-branded boot
> +	  splashes; no ImageMagick dependency.
> +
> +endchoice
> +
> +if BAREBOX_LOGO_STOCK
> +
>  config BAREBOX_LOGO_64
>  	bool "include 64x32 pixel logo"
>  
> @@ -50,4 +74,15 @@ config BAREBOX_LOGO_400
>  config BAREBOX_LOGO_640
>  	bool "include 640x320 pixel logo"
>  
> +endif # BAREBOX_LOGO_STOCK
> +
> +config BAREBOX_LOGO_FILE_PATH
> +	string "Pre-rendered logo path (relative to srctree)"
> +	depends on BAREBOX_LOGO_FILE
> +	default "lib/logo/barebox-logo-custom.png"
> +	help
> +	  Path to the pre-rendered PNG, relative to the barebox source
> +	  tree.  The file is included as-is; drop it at this location
> +	  before invoking the build.
> +
>  endif # BAREBOX_LOGO
> diff --git a/lib/logo/Makefile b/lib/logo/Makefile
> index 9792a4699f..7bd7fbb352 100644
> --- a/lib/logo/Makefile
> +++ b/lib/logo/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  
> +ifdef CONFIG_BAREBOX_LOGO_STOCK
>  OPTS_barebox-logo-w64 = -resize 64
>  bblogo-$(CONFIG_BAREBOX_LOGO_64) += barebox-logo-w64
>  
> @@ -14,6 +15,14 @@ bblogo-$(CONFIG_BAREBOX_LOGO_400) += barebox-logo-w400
>  
>  OPTS_barebox-logo-w640 = -resize 640
>  bblogo-$(CONFIG_BAREBOX_LOGO_640) += barebox-logo-w640
> +endif
> +
> +ifdef CONFIG_BAREBOX_LOGO_FILE
> +# Strip the Kconfig string's surrounding quotes.
> +barebox-logo-file-path := $(patsubst "%",%,$(CONFIG_BAREBOX_LOGO_FILE_PATH))
> +
> +bblogo-y += barebox-logo-custom
> +endif
>  
>  obj-y += $(patsubst %,%.bblogo.o,$(bblogo-y))
>  extra-y += $(patsubst %,%.bblogo,$(bblogo-y))
> @@ -62,6 +71,7 @@ endif
>  
>  CONVERTOPTS += -background none
>  
> +ifdef CONFIG_BAREBOX_LOGO_STOCK
>  quiet_cmd_bmp = BMP     $@
>        cmd_bmp = convert $(OPTS_$(@F:.bmp=)) $(CONVERTOPTS) $< bmp:$@
>  
> @@ -76,6 +86,15 @@ quiet_cmd_png = PNG     $@
>  
>  %.png: $(srctree)/Documentation/barebox.svg FORCE
>  	$(call if_changed,png)
> +endif
> +
> +ifdef CONFIG_BAREBOX_LOGO_FILE
> +quiet_cmd_logo_copy = COPY    $@
> +      cmd_logo_copy = cp $< $@
> +
> +barebox-logo-custom.png: $(srctree)/$(barebox-logo-file-path) FORCE
> +	$(call if_changed,logo_copy)
> +endif
>  
>  quiet_cmd_qoi = QOI     $@
>        cmd_qoi =	$(objtree)/scripts/qoiconv $< $@
> 
> base-commit: 81fbe2e8d0d445032498a0bfecf9fd270f00985a

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



