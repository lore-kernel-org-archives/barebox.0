Delivery-date: Mon, 10 Mar 2025 20:27:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trimf-00CN6p-2M
	for lore@lore.pengutronix.de;
	Mon, 10 Mar 2025 20:27:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trime-00087d-Fb
	for lore@pengutronix.de; Mon, 10 Mar 2025 20:27:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xq8MfO5oWvT16Ce73uWAFvDnvmgHyNKk88YwXaCLurQ=; b=TdkNmKhBSV1w8cuLtwTeTX3ss8
	siad3WNZwq6Qzte/fkF9/zZntILcZ8y5uCa0UbXiOIRHwbhS0QhlySAdMWI0KVy7RBBQPfWr7wha2
	Q1wM+Q1gzVVJ4EYf1vS19+RW/eIsl5wI5dVIKiJtw9Tjrj+PTKmZwj4v2GF6UWVcEpfopupxpMFF4
	s+o/zMV4f6vEK98D8LwQoQFz0PL638gv0Wmrm9Rm1ddSEvoz6O9gM9++aZTrQGUqLi3MBZLYVy79/
	3IF/uexRfANIPTjglnRgaOzem5SLhxS4OWIIVzRWQ22Z4zGWftJzHAu2oOlACbIGJQuYUMCJ13pHd
	d5slGlvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trimF-00000003jS7-3y8i;
	Mon, 10 Mar 2025 19:27:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trilL-00000003jOY-1ZXL
	for barebox@bombadil.infradead.org;
	Mon, 10 Mar 2025 19:26:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=Xq8MfO5oWvT16Ce73uWAFvDnvmgHyNKk88YwXaCLurQ=; b=VG/G1rOy4OIQQD9VqrXFIsDEg/
	RDuSLJ2EueEERMS2ZpL0dJn7jJbgO7dS+J5xMXgxFZC/OB6UCtFhx9A2lTMy9viJJIhHZIQfcE+ir
	RbCJ9Acd2crDc4uUBTElvFNeiKx5reBYEWAfCiNlHxyS7gNWYlpMZpejw8bnYFKEc+irsaCZ8ZUHf
	tntNPjYx8Nd/rQs2Dn7Cc8LjUoX6tuAZzdtgfRye/eVxRA2Mj6D3cRMC7RANXfrQm0kSdUyz9Qfq6
	U/ouUUg3uKtToYFH6Rjq1Awh87x6Dp5MY/ECxGJ7n9OMfXIgGnnBz4Mp/vy/kSFOqlCn3gkTGHVPL
	/dH/xvVg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trilG-000000021jB-3AS9
	for barebox@lists.infradead.org;
	Mon, 10 Mar 2025 19:26:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1trilF-0007vo-M9; Mon, 10 Mar 2025 20:26:01 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1trilF-0053Wb-1a;
	Mon, 10 Mar 2025 20:26:01 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1trilF-0061Nk-1I;
	Mon, 10 Mar 2025 20:26:01 +0100
Date: Mon, 10 Mar 2025 20:26:01 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <20250310192601.7nzsencbk3borvqm@pengutronix.de>
References: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
 <20250228-am625-secure-v1-11-4002488ff5ed@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250228-am625-secure-v1-11-4002488ff5ed@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_192602_842634_A915C519 
X-CRM114-Status: GOOD (  26.33  )
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
Subject: Re: [PATCH 11/13] ARM: k3: r5: Allow to authenticate next image by
 ROM API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-02-28, Sascha Hauer wrote:
> This adds the Kconfig option CONFIG_ARCH_K3_AUTHENTICATE_IMAGE. When
> enabled, the full barebox image will only be started when it can be
> authenticated using the ROM API.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-k3/Kconfig |  7 ++++++
>  arch/arm/mach-k3/r5.c    | 64 +++++++++++++++++++++++++++++++++++++++++++++++-
>  2 files changed, 70 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
> index 37d5155577..e93e3154c8 100644
> --- a/arch/arm/mach-k3/Kconfig
> +++ b/arch/arm/mach-k3/Kconfig
> @@ -37,6 +37,13 @@ config MACH_BEAGLEPLAY
>  	help
>  	  Say Y here if you are using a TI AM62x based BeaglePlay board
>  
> +config ARCH_K3_AUTHENTICATE_IMAGE
> +	bool "Force authentication of FIP image against ROM API"
> +	help
> +	  By enabling this option the FIP image loaded by the first stage
> +	  will be authenticated against the K3 ROM API. Images which fail
> +	  to authenticate will not be started.

The ROM is checking only the sha sum or does the ROM also have some kind
of signature-checking (pub/priv keys requried)?

Regards,
  Marco


> +
>  config ARCH_K3_COMMAND_AUTHENTICATE
>  	bool "k3_authenticate_image command"
>  	depends on COMMAND_SUPPORT
> diff --git a/arch/arm/mach-k3/r5.c b/arch/arm/mach-k3/r5.c
> index c8a91e2597..d0093a3be7 100644
> --- a/arch/arm/mach-k3/r5.c
> +++ b/arch/arm/mach-k3/r5.c
> @@ -244,6 +244,64 @@ static uuid_t uuid_ti_dm_fw = UUID_TI_DM_FW;
>  static uuid_t uuid_bl33 = UUID_NON_TRUSTED_FIRMWARE_BL33;
>  static uuid_t uuid_bl32 = UUID_SECURE_PAYLOAD_BL32;
>  
> +static struct fip_state *fip_image_load_auth(const char *filename, size_t offset)
> +{
> +	struct fip_state *fip = NULL;
> +	int fd;
> +	unsigned int maxsize = SZ_4M;
> +	size_t size;
> +	void *buf = NULL;
> +	int ret;
> +
> +	fd = open(filename, O_RDONLY);
> +	if (fd < 0)
> +		return ERR_PTR(-errno);
> +
> +	if (offset) {
> +		loff_t pos;
> +		pos = lseek(fd, offset, SEEK_SET);
> +		if (pos < 0) {
> +			ret = -errno;
> +			goto err;
> +		}
> +	}
> +
> +	buf = xzalloc(maxsize);
> +
> +	/*
> +	 * There is no easy way to determine the size of the certificates the ROM
> +	 * takes as images, so the best we can do here is to assume a maximum size
> +	 * and load this.
> +	 */
> +	ret = read_full(fd, buf, maxsize);
> +	if (ret < 0)
> +		goto err;
> +
> +	size = maxsize;
> +
> +	ret = k3_authenticate_image(&buf, &size);
> +	if (ret) {
> +		pr_err("Failed to authenticate %s\n", filename);
> +		goto err;
> +	}
> +
> +	fip = fip_new();
> +	ret = fip_parse_buf(fip, buf, size, NULL);
> +	if (ret)
> +		goto err;
> +
> +	close(fd);
> +
> +	return fip;
> +err:
> +	if (fip)
> +		fip_free(fip);
> +	close(fd);
> +	free(buf);
> +
> +	return ERR_PTR(ret);
> +}
> +
>  static int load_fip(const char *filename, off_t offset)
>  {
>  	struct fip_state *fip;
> @@ -251,7 +309,11 @@ static int load_fip(const char *filename, off_t offset)
>  	unsigned char shasum[SHA256_DIGEST_SIZE];
>  	int ret;
>  
> -	fip = fip_image_open(filename, offset);
> +	if (IS_ENABLED(CONFIG_ARCH_K3_AUTHENTICATE_IMAGE))
> +		fip = fip_image_load_auth(filename, offset);
> +	else
> +		fip = fip_image_open(filename, offset);
> +
>  	if (IS_ERR(fip)) {
>  		pr_err("Cannot open FIP image: %pe\n", fip);
>  		return PTR_ERR(fip);
> 
> -- 
> 2.39.5
> 
> 
> 


