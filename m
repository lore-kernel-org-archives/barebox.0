Delivery-date: Tue, 13 Aug 2024 08:26:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdkzH-0096ld-1V
	for lore@lore.pengutronix.de;
	Tue, 13 Aug 2024 08:26:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdkzG-00027s-RA
	for lore@pengutronix.de; Tue, 13 Aug 2024 08:26:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=reWI/uAfnl3A8iC7dm+DWP0TybeGDI+rPxtc7gDuujo=; b=N4Xp2jv2FuHG85NeAo12KRoL4X
	YaZUME3/kNYFJU5a/XBS3MCzY7BNjGn/esiNJYr/A+5ZPeaa60jeDLphYsl36tRKdlllYSNh43mAi
	ift0penqkLnfAE6eooX9TPV3cM7FKiJBmjfZjaXVeCss7my9IjEsmlObSP40PDz4ynyRvWqweBJ42
	9LO0nK1DWYTyswRG7Twn7fCneeu7haJnfW1mkgM3otGGF59lQK6FzzhmPX7OVCgC9Rpj7zGqwbjHl
	+6tUa9e554IGb+YRu03F5q82DaOxXvQS+2OKEqufmxu6v9MSB3vBF0otlNtwG5p82jBI6ujEQ+/1a
	nxE6SezA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdkyc-00000002ZIn-0PYJ;
	Tue, 13 Aug 2024 06:25:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdkyY-00000002ZI5-2YCA
	for barebox@lists.infradead.org;
	Tue, 13 Aug 2024 06:25:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdkyW-0001yd-KC; Tue, 13 Aug 2024 08:25:44 +0200
Message-ID: <47a7870c-0ac1-43ed-8f4a-6fc99d74259d@pengutronix.de>
Date: Tue, 13 Aug 2024 08:25:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Yann Sionneau <ysionneau@kalrayinc.com>, barebox@lists.infradead.org
Cc: jvetter@kalrayinc.com, jborne@kalrayinc.com
References: <20240812144150.27707-1-ysionneau@kalrayinc.com>
 <20240812144150.27707-3-ysionneau@kalrayinc.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240812144150.27707-3-ysionneau@kalrayinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_232546_681649_617F9677 
X-CRM114-Status: GOOD (  15.48  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] ci: add support for running basic tests on kvx arch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Yann,

On 12.08.24 16:41, Yann Sionneau wrote:
> Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
> ---
>  .github/workflows/test-labgrid-pytest.yml |  4 ++++
>  test/kvx/qemu@generic_defconfig.yaml      | 18 ++++++++++++++++++
>  2 files changed, 22 insertions(+)
>  create mode 100644 test/kvx/qemu@generic_defconfig.yaml
> 
> diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
> index 2e038e371f..f4ef1b3a00 100644
> --- a/.github/workflows/test-labgrid-pytest.yml
> +++ b/.github/workflows/test-labgrid-pytest.yml
> @@ -23,6 +23,10 @@ jobs:
>              lgenv: test/arm/multi_v8_defconfig.yaml
>              defconfig: multi_v8_defconfig
>  
> +          - ARCH: kvx
> +            lgenv: test/kvx/qemu@generic_defconfig.yaml
> +            defconfig: generic_defconfig
> +
>            - ARCH: mips
>              lgenv: test/mips/qemu-malta_defconfig.yaml
>              defconfig: qemu-malta_defconfig
> diff --git a/test/kvx/qemu@generic_defconfig.yaml b/test/kvx/qemu@generic_defconfig.yaml
> new file mode 100644
> index 0000000000..bc15afb632
> --- /dev/null
> +++ b/test/kvx/qemu@generic_defconfig.yaml
> @@ -0,0 +1,18 @@
> +targets:
> +  main:
> +    drivers:
> +      QEMUDriver:
> +        qemu_bin: qemu-system-kvx
> +        machine: mppa-coolidge
> +        cpu: kv3-1
> +        memory: 2G
> +        kernel: barebox
> +        extra_args: !template "-dtb $LG_BUILDDIR/arch/kvx/dts/qemu.dtb"

There's a dtb: attribute you can use instead.

> +      BareboxDriver:
> +        prompt: 'barebox:/ '
> +        bootstring: 'commandline:'
> +      BareboxTestStrategy: {}
> +images:
> +  barebox: !template "$LG_BUILDDIR/barebox"
> +imports:
> +  -  ../strategy.py


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


