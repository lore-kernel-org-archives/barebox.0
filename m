Delivery-date: Mon, 02 Jun 2025 11:58:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM1wL-002uu5-3D
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 11:58:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM1wL-0004SZ-5S
	for lore@pengutronix.de; Mon, 02 Jun 2025 11:58:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wASJI3LwPt4DMz3KMeytnIk59ABpN8M276X2Dhay1gM=; b=SqHq6WNycDv3OCTcLHsyqmuuyo
	UqHSZdEISNJr7nMoBOU06u7LptU+lOMDxrst3kM7BibPM+4sZeAjh3O7SSHF9UuLgVaeoWbVhcwEH
	7/Mwl3SbKc+KSkbxo/nqL57IteYeeaSK5H4CMiWXTFgQv0dJeU0ofE3p+mP4KpbZ0ci+ZSkJT0ifP
	6HRj8K48vHl1fDTP5PXbnA2ATCTQbi6lI/dDMMDdX3u1RHPQcS3/VUExJeilD0lGgj7GnmVLH2uWm
	KL9U8OIGflsJyR0jd2Tk3BkRigMHN1NTEmQdOvA/aJs9fIB0pJdMomOfqDwvrWcXcGtKjR6tEZKQn
	SlpD72UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM1vk-000000078AJ-3dz4;
	Mon, 02 Jun 2025 09:58:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM1vV-0000000786d-1PqV
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 09:57:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uM1vU-0003wW-5w; Mon, 02 Jun 2025 11:57:52 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM1vU-001Qtb-00;
	Mon, 02 Jun 2025 11:57:52 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM1vT-006bDy-2s;
	Mon, 02 Jun 2025 11:57:51 +0200
Date: Mon, 2 Jun 2025 11:57:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aD11nyDMePysqzgE@pengutronix.de>
References: <20250530114106.1009454-1-o.rempel@pengutronix.de>
 <20250530114106.1009454-6-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250530114106.1009454-6-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_025753_380662_316F5E0A 
X-CRM114-Status: GOOD (  37.83  )
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
X-Spam-Status: No, score=-1.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 5/7] nvmem: regmap: Implement protect operation using
 regmap_seal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, May 30, 2025 at 01:41:04PM +0200, Oleksij Rempel wrote:
> Implement the NVMEM 'protect' operation for devices registered via
> regmap. This adds a new static function, nvmem_regmap_protect, which
> acts as an adapter between the NVMEM core's reg_protect callback
> and the recently added regmap_seal() API.
> 
> The nvmem_regmap_protect function:
>   - Translates the NVMEM 'prot' parameter (0 for unprotect, 1 for
>     protect) into the corresponding REGMAP_SEAL_CLEAR |
>     REGMAP_SEAL_WRITE_PROTECT or REGMAP_SEAL_WRITE_PROTECT |
>     REGMAP_SEAL_PERMANENT flags for the regmap_seal() call.
>   - Enforces that the NVMEM operation's offset and size are aligned
>     to the regmap's value byte size (obtained via
>     regmap_get_val_bytes()).
>   - Iterates over the specified byte range, calling regmap_seal() for
>     each underlying hardware word.
> 
> By assigning nvmem_regmap_protect to config.reg_protect within
> nvmem_regmap_register_with_pp, NVMEM devices that are backed by a
> regmap can now expose hardware-level protection capabilities. This
> is essential for drivers like the STM32 BSEC (in a subsequent patch)
> to enable features such as OTP (One-Time Programmable) memory locking
> through the standard NVMEM 'protect' cdev operation, provided their
> underlying regmap_bus implements the necessary reg_seal method.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/nvmem/regmap.c | 65 ++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 65 insertions(+)
> 
> diff --git a/drivers/nvmem/regmap.c b/drivers/nvmem/regmap.c
> index 24712fbb0f33..681cdf313e71 100644
> --- a/drivers/nvmem/regmap.c
> +++ b/drivers/nvmem/regmap.c
> @@ -63,6 +63,70 @@ static int nvmem_regmap_read(void *ctx, unsigned offset, void *buf, size_t bytes
>  	return 0;
>  }
>  
> +static int nvmem_regmap_protect(void *ctx, unsigned int offset, size_t bytes,
> +				int prot)
> +{
> +	unsigned int seal_flags = 0;
> +	struct regmap *map = ctx;
> +	size_t reg_val_bytes;
> +	unsigned int i;
> +	int ret = 0;
> +
> +	reg_val_bytes = regmap_get_val_bytes(map);
> +	if (reg_val_bytes == 0) {
> +		dev_err(regmap_get_device(map), "Invalid regmap value byte size (0)\n");
> +		return -EINVAL;
> +	}
> +
> +	/* NVMEM protect operations should typically be on aligned boundaries
> +	 * matching the hardware's lockable unit (which is regmap's val_bytes
> +	 * here).
> +	 */
> +	if ((offset % reg_val_bytes) != 0 || (bytes % reg_val_bytes) != 0) {
> +		dev_warn(regmap_get_device(map),
> +			 "NVMEM protect op for regmap: offset (0x%x) or size (0x%zx) not aligned to register size (%zu bytes).\n",
> +			 offset, bytes, reg_val_bytes);
> +		return -EINVAL;
> +	}
> +
> +	switch (prot) {
> +	case NVMEM_PROTECT_ENABLE_WRITE:
> +		/* NVMEM protect mode 0 = Unlock/Make-writable
> +		 * Attempt to clear write protection.
> +		 * The underlying bus->reg_seal must support clearing.
> +		 * For BSEC OTPs, this will (and should) fail with -EOPNOTSUPP
> +		 * or -EPERM.
> +		 */
> +		seal_flags = REGMAP_SEAL_CLEAR | REGMAP_SEAL_WRITE_PROTECT;
> +		break;
> +	case NVMEM_PROTECT_DISABLE_WRITE:
> +		/* NVMEM protect mode 1 = Lock/Write-protect */
> +		/* For OTPs like BSEC, permanent is implied */
> +		seal_flags = REGMAP_SEAL_WRITE_PROTECT | REGMAP_SEAL_PERMANENT;
> +		break;
> +	default:
> +		dev_warn(regmap_get_device(map), "Unsupported NVMEM protect mode: %d\n",
> +			 prot);
> +		return -EOPNOTSUPP;
> +	}
> +
> +	for (i = 0; i < bytes; i += reg_val_bytes) {
> +		unsigned int current_reg_offset = offset + i;
> +
> +		ret = regmap_seal(map, current_reg_offset, seal_flags);
> +		if (ret) {
> +			dev_err(regmap_get_device(map), "regmap_seal failed for offset 0x%x: %pe\n",
> +				current_reg_offset, ERR_PTR(ret));
> +			/* No error handling for partial failures, we messed up
> +			 * the HW state and can't recover.
> +			 */
> +			return ret;
> +		}
> +	}

The i.MX OCOTP offers write protection for fuses as well. AFAIR
there are single fuses for protecting a whole range of fuses, so to
support this we would have to pass the full range down to the driver
instead of separating the range into registers here.

I never looked at the i.MX OCOTP locking capabilities very closely, so
it could be that even passing a range is not good enough to make this
implementable for the OCOTP. We might want to have a look into this
before deciding if we want to implement protect for the drivers based on
single registers.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


