Delivery-date: Tue, 11 Mar 2025 14:19:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trzWV-00Cgr3-0K
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 14:19:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trzWT-0003vm-P8
	for lore@pengutronix.de; Tue, 11 Mar 2025 14:19:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w0+QHAQLO4SI1tTFSdtmxOOMaJqdjnu1503En/msm1A=; b=ilIM8WoSQJrbBAKym+JAH2oL0R
	DPNP8U4qNqQQju8yzLlSh3YaJhNRV+ZBP7ej1dvPGspcv54xFe4GX/E5FspjVAE8Ah2QgliRuxegS
	pWnI6XyKD5hPKxNxBRRktRs/kU7b8O7ciqtZ724KgbbNfZBwWa0xVYvasmud3mf2m6HmSc1p0kSqb
	03xrXDkz/vrJ2EpUisyi+wiVm3q/GrXz422CI5Rn8U7/dZ6FjeI3BMURNGtJLuYG50i2q+vmnPgNb
	IYj7gf8nETXfKTN/WVVZ+pmk8KquxVRhS1lTw0hSwv6TKcLUi3j4GhRzIyTnIqonmSe+psnTHj/EO
	2k+6xzbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trzW1-00000005o7Q-0Fyq;
	Tue, 11 Mar 2025 13:19:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trzVz-00000005o6D-0ow2
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 13:19:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1trzVx-0003pK-Uu; Tue, 11 Mar 2025 14:19:21 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1trzVx-005BiG-2T;
	Tue, 11 Mar 2025 14:19:21 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1trzVx-007k8l-2B;
	Tue, 11 Mar 2025 14:19:21 +0100
Date: Tue, 11 Mar 2025 14:19:21 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <20250311131921.qk256ikyiksqmomf@pengutronix.de>
References: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
 <20250311-am625-secure-v2-2-3cbbfa092346@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250311-am625-secure-v2-2-3cbbfa092346@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_061923_231884_65CAAD5F 
X-CRM114-Status: GOOD (  36.72  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 02/14] firmware: add function to verify next image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-03-11, Sascha Hauer wrote:
> Some SoCs use a startup sequence that includes multiple stages where a
> full barebox is loaded by an early small barebox that fits into the
> SoC's SRAM. This is commonly referred to as xload. In a secure boot
> environment it's necessary to load only trusted barebox images. One
> way to accomplish this is to compile a sha256 into the first stage
> barebox and to verify the full barebox against this hash.
> 
> This patch adds the generic parts for this. The full barebox binary
> can be put into the first stage build as a firmware file. The firmware
> itself won't be used, only the hash is compiled into the image. SoC
> code can then check the full barebox image against the hash. As this
> requires SoC code to check the hash, the option is hidden behind
> CONFIG_HAVE_FIRMWARE_VERIFY_NEXT_IMAGE. SoC code can select this option
> when it implements the required hash checking.
> 
> It's worth noting that using a hash for verification has one advantage
> over cryptographicaly signing followup images: It ties first stage
> and full barebox stages together effectively avoiding mix-and-match
> attacks.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  firmware/Kconfig   | 23 +++++++++++++++++++++++
>  firmware/Makefile  |  2 ++
>  include/firmware.h | 26 ++++++++++++++++++++++++++
>  3 files changed, 51 insertions(+)
> 
> diff --git a/firmware/Kconfig b/firmware/Kconfig
> index ba005976c5..bdb71321bc 100644
> --- a/firmware/Kconfig
> +++ b/firmware/Kconfig
> @@ -108,4 +108,27 @@ config FIRMWARE_LS1028A_ATF
>  config FIRMWARE_LS1046A_ATF
>  	bool
>  
> +config HAVE_FIRMWARE_VERIFY_NEXT_IMAGE
> +	bool
> +
> +config FIRMWARE_VERIFY_NEXT_IMAGE
> +	depends on HAVE_FIRMWARE_VERIFY_NEXT_IMAGE
> +	bool "verify next image to load"
> +	help
> +	  The boot process of some SoCs uses multiple stages where the first stage is
> +	  a stripped down barebox loaded by the SoC's ROM and the next state is a full
> +	  barebox loaded by the first stage. In a trusted boot scenario the next stage
> +	  has to be verified by the first stage,
> +
> +	  This option allows to specify the next image to be loaded. Put the next stage
> +	  image to firmware/next-image.bin. The image itself is not used, but a sha256
> +	  hash of the image will be generated and compiled into the first stage which
> +	  can be used to verify the next stage.

Nit I would mention that the next-image.bin won't be part of the final
binary if not referenced, e.g: 

  The next-image.bin won't be added to final barebox binary if not referenced.

Apart of this, feel free to add my

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Regards,
  Marco

> +
> +	  Note that this option only enabled generation of the sha256 hash. Loading and
> +	  starting the next stage is highly SoC dependent and it's the SoC code's
> +	  responsibility to actually verify the hash and to only start successfully
> +	  verified images. The function to check the next stage image hash is
> +	  firmware_next_image_verify(), make sure your SoC code uses it.
> +
>  endmenu
> diff --git a/firmware/Makefile b/firmware/Makefile
> index 095d6f0e31..67fd898890 100644
> --- a/firmware/Makefile
> +++ b/firmware/Makefile
> @@ -34,6 +34,8 @@ pbl-firmware-$(CONFIG_ARCH_RK3588) += rk3588-bl32.bin
>  pbl-firmware-$(CONFIG_ARCH_RK3399) += rk3399-bl32.bin
>  endif
>  
> +firmware-$(CONFIG_FIRMWARE_NEXT_IMAGE) += next-image.bin
> +
>  firmware-$(CONFIG_DRIVER_NET_FSL_FMAN) += fsl_fman_ucode_ls1046_r1.0_106_4_18.bin
>  
>  fw-external-$(CONFIG_FIRMWARE_LS1028A_ATF) += ls1028a-bl31.bin
> diff --git a/include/firmware.h b/include/firmware.h
> index d7feae1371..ab518cb432 100644
> --- a/include/firmware.h
> +++ b/include/firmware.h
> @@ -13,6 +13,8 @@
>  #include <debug_ll.h>
>  #include <linux/kernel.h>
>  #include <asm/sections.h>
> +#include <crypto/sha.h>
> +#include <crypto.h>
>  
>  struct firmware {
>  	size_t size;
> @@ -113,4 +115,28 @@ static inline void firmware_ext_verify(const void *data_start, size_t data_size,
>  #define get_builtin_firmware_ext(name, base, start, size)		\
>  	__get_builtin_firmware(name, (long)base - (long)_text, start, size)
>  
> +static inline int firmware_next_image_check_sha256(const void *hash, bool verbose)
> +{
> +	extern char _fw_next_image_bin_sha_start[];
> +	int hsize = SHA256_DIGEST_SIZE;
> +	int ret;
> +
> +	if (!IS_ENABLED(CONFIG_FIRMWARE_NEXT_IMAGE))
> +		return -EINVAL;
> +
> +	ret = crypto_memneq(hash, _fw_next_image_bin_sha_start, hsize);
> +
> +	if (verbose) {
> +		if (ret) {
> +			pr_err("next image hash mismatch!\n");
> +			pr_err("expected: sha256=%*phN\n", hsize, _fw_next_image_bin_sha_start);
> +			pr_err("found:    sha256=%*phN\n", hsize, hash);
> +		} else {
> +			pr_info("hash sha256=%*phN OK\n", hsize, _fw_next_image_bin_sha_start);
> +		}
> +	}
> +
> +	return ret;
> +}
> +
>  #endif /* FIRMWARE_H */
> 
> -- 
> 2.39.5
> 
> 
> 


