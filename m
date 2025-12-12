Delivery-date: Fri, 12 Dec 2025 15:05:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU3mI-00Agqn-39
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 15:05:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU3mI-0004r2-CW
	for lore@pengutronix.de; Fri, 12 Dec 2025 15:05:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zdnKgb8lNHIKeZgWPXCIgpuUdf4uQrtjshh7ydp/aL0=; b=pOuzrDAl7kruZxi/A/ed+vefkJ
	9XpxDrGW2IZS4YlbbVrY84I5oct8j+esKa8q4eGTcGolWcYbYlfu2VHVG6/eLSIJlIJ6hX7Sn7LXj
	Mg/G4DaSjEaAZXNom2FLgGns13Apd8JPhr+XeQ4xZyaJ3Vm+vNmg7SYRaHcM7Z9fiLe68KVdHxluX
	z8Lw7W06PJQEM1CX9JzbGvSrjrt3azff0R3IqNBZMJPi+RgrMCZa8SGNISMUdR2t/68SJzglxShL1
	f963ruMK6X3ea9V8NcWOHs/M33rFZ7xvBWiVRWpn5Y7JFa6KmTjafcrBDjSYz06O2J1HLCdprFr8n
	GGApr9XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU3ls-00000000bPt-1fyo;
	Fri, 12 Dec 2025 14:05:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU3ll-00000000bPQ-30GN
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 14:05:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU3lk-0004kO-4H; Fri, 12 Dec 2025 15:05:16 +0100
Message-ID: <626021f7-fa8d-4f05-986b-76ccd1119145@pengutronix.de>
Date: Fri, 12 Dec 2025 15:05:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20251212050824.1273837-1-chalianis1@gmail.com>
 <20251212050824.1273837-4-chalianis1@gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251212050824.1273837-4-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_060517_757748_C9A14C87 
X-CRM114-Status: GOOD (  15.49  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 4/5] test: arm: add efi v8 test for efi arm64 payload.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 12/12/25 6:08 AM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  .github/workflows/test-labgrid-pytest.yml |  5 ++++
>  test/arm/efi_v8_defconfig.yaml            | 31 +++++++++++++++++++++++
>  2 files changed, 36 insertions(+)
>  create mode 100644 test/arm/efi_v8_defconfig.yaml
> 
> diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
> index d9822fc206a5..9997cd69ebca 100644
> --- a/.github/workflows/test-labgrid-pytest.yml
> +++ b/.github/workflows/test-labgrid-pytest.yml
> @@ -27,6 +27,11 @@ jobs:
>              lgenv: test/arm/multi_v8_defconfig.yaml
>              defconfig: multi_v8_defconfig
>              lgargs: --runxfail
> +          
> +          - ARCH: arm
> +            lgenv: 'test/arm/efi_v8_defconfig.yaml'
> +            defconfig: efi_v8_defconfig
> +            lgargs: --runxfail
>  
>            - ARCH: mips
>              lgenv: test/mips/qemu-malta_defconfig.yaml
> diff --git a/test/arm/efi_v8_defconfig.yaml b/test/arm/efi_v8_defconfig.yaml
> new file mode 100644
> index 000000000000..21d0feaed8e1
> --- /dev/null
> +++ b/test/arm/efi_v8_defconfig.yaml
> @@ -0,0 +1,31 @@
> +targets:
> +  main:
> +    drivers:
> +      QEMUDriver:
> +        qemu_bin: qemu-system-aarch64
> +        machine: virt
> +        cpu: cortex-a57
> +        memory: 1024M
> +        kernel: barebox.efi
> +        display: qemu-default
> +        extra_args: '-L /usr/share/qemu-efi-aarch64 -bios QEMU_EFI.fd'

Is this not in the default search path for QEMU? I want to avoid
hardcoding distro-specific files in these config files.

> +      BareboxDriver:
> +        prompt: 'barebox@[^:]+:[^ ]+ '
> +        bootstring: 'commandline:'
> +      BareboxTestStrategy: {}
> +    features:
> +      - virtio-mmio
> +      - testfs
> +    devices:
> +      fb0: 'Type: primary'
> +      fbconsole0: 'Parent: fb0'
> +      wdog0: 'Parent: efi-wdt'
> +      efivarfs0: 'Driver: efivarfs'
> +      efifs0: 'Driver: efifs'
> +    runner:
> +      kconfig_add:
> +        - CONFIG_FRAMEBUFFER_CONSOLE=y
> +images:
> +  barebox.efi: !template "$LG_BUILDDIR/barebox.efi"
> +imports:
> +  -  ../strategy.py
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



