Delivery-date: Mon, 17 Nov 2025 10:16:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKvLU-001vdt-19
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 10:16:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKvLT-0007aN-NX
	for lore@pengutronix.de; Mon, 17 Nov 2025 10:16:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DU/iD3LPmsrHVXZt5AYW4JYuPdgYHwqNqVK+6052Uag=; b=NncoUUUqXkc26lZybPEMnfhea7
	HNjsF1QX8RsQubjR2zvrVi95ZDvNW2mZOsLHjQeJv8Flz1CqKzj1FkC1gU8sOQEHEYDpszmMqDuJB
	hTcIPauSALCvM/nd3dcStdlZ4QVLuD9TCHdKydR3TaiwXIxC7JQ/lsQaeJdBvcsUCVC0c4eWrs+ur
	fCT4LnhCAhKvCKDiPQL6DJEfx8ZP+1ENRJdwPR6RrGeglBsbhEkKAvtGEaiOvhWuEAuX+iGHM5uI6
	ibPbzucRjLQebliA8J+0SVeu/1l/F1g3rXeb/x0bAZUW6FSY0cMx5QTzxfqopaZDwcQQCxAq3e0G4
	Ddx5lZ0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKvL1-0000000Flto-0Rcc;
	Mon, 17 Nov 2025 09:15:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKvKx-0000000FltG-3moy
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 09:15:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vKvKw-0007VW-B5; Mon, 17 Nov 2025 10:15:50 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vKvKw-000t2S-0T;
	Mon, 17 Nov 2025 10:15:50 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vKvKw-008GtS-07;
	Mon, 17 Nov 2025 10:15:50 +0100
Date: Mon, 17 Nov 2025 10:15:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aRrnxjr_iL3mCKZa@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-20-8f0625ac5471@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-20-8f0625ac5471@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_011551_965560_E3A9ABEF 
X-CRM114-Status: GOOD (  31.23  )
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
Subject: Re: [PATCH 20/23] ARM: i.MX8M: Add support to extract OP-TEE
 provided informations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 10, 2025 at 09:35:00PM +0100, Marco Felsch wrote:
> Extract the OP-TEE overlay fragements information into a dedicated
> overlay buffer and add the handoff data on success. The handoff data is
> used by next commit.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/mach-imx/esdctl.c | 40 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index 964d438e3f3433332e351d9a70f91857ee33e0b4..b9393fba4ab0f14992d2fec32b0e1b7f1d4bbdfd 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -1015,10 +1015,50 @@ resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth)
>  	return min_t(resource_size_t, SZ_4G - MX8M_DDR_CSD1_BASE_ADDR, size);
>  }
>  
> +static void imx8m_extract_optee_fdto(void)
> +{
> +	unsigned int early_fdt_sz, fdto_size;
> +	void *early_fdt, *fdto_dst;
> +
> +	imx_scratch_get_fdt(&early_fdt, &early_fdt_sz);
> +	/* SCRATCH_FDT_SIZE == 0, e.g. if OP-TEE w/o CFG_DT support is used */
> +	if (early_fdt_sz == 0)
> +		return;
> +
> +	imx_scratch_get_optee_fdto(&fdto_dst, &fdto_size);
> +	/* SCRATCH_FDTO_SIZE == 0 if feature (back-channel) is not required */
> +	if (fdto_size == 0) {
> +		pr_debug("OP-TEE dest DTBO size == 0, skip extracting\n");
> +		return;
> +	}
> +
> +	/*
> +	 * OP-TEE DT handling is really cumbersome. In case an external DT was
> +	 * supplied, OP-TEE re-use this DT and appends overlays.
> +	 *
> +	 * Extract the overlays into a single overlay file to make it easier
> +	 * to apply these onto the barebox and kernel DT.
> +	 *
> +	 * It will become easier once barebox supports the transfer-list
> +	 * protocol and the protocol itself has overlay-entry support.
> +	 */

The problem doesn't seem to be i.MX8M specific, so we'll end up
duplicating this for other SoCs. Couldn't you do optee_extract_fdto() in
optee_register_overlay() instead?

Also we are in PBL here. The device tree is already in the i.MX scratch
space which is available in barebox proper as well, so you could move
the code there.

> +	if (optee_extract_fdto(early_fdt, fdto_dst, fdto_size)) {
> +		pr_warn("Failed to extract OP-TEE FDTO, continue without FDTO\n");
> +		/*
> +		 * Don't BUG() because the system may have compile-time config
> +		 * support
> +		 */
> +		return;
> +	}
> +
> +	handoff_data_add(HANDOFF_DATA_BL32_DT_OVL, fdto_dst, fdto_size);

The overlay isn't used in barebox itself, but only for the Kernel.

You Could just pick up the overlay from the i.MX scratch space in
barebox proper and pass it to optee_register_overlay().

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


