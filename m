Delivery-date: Tue, 27 May 2025 08:43:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJo1x-000lwz-2g
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 08:43:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJo1x-0005b3-8L
	for lore@pengutronix.de; Tue, 27 May 2025 08:43:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cCfTp8DHp2Ql4P3aUyrLz5szhWcv/ZRl3LWDhmf+G/s=; b=m+V4TY/bT8nce+XxizVN3ZoGMZ
	BkjfsWJ+tEYA7XCjrslSOD6E0KJrmzBJBtOrB7ZjvYKAIvhPui/7E+mtWpFJ7rjnd4HHfJJq42pow
	JrNA4CQZQKIx2+GTsKPcgtV4KwI2esUMqQarjeBUhxCLQnKab6B1agxcPP6w3MV1uWKUCc11CSVNL
	4uEY1jwfBZO9Ug7VIErIZW0OJnty2Fn3RgasyuNKH3Ngx7eoIt60UwFIjv4OFsqMMb9KYFU45+L5o
	6PSTWRFDiq2p3ZWTrY5cVj4Sb4b7ory/hT4huGUmgdueUqxzL1aURUHYgnVir+9+Gny7fvIk+mHwb
	HZcERp3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJo1X-0000000A3f0-0bbH;
	Tue, 27 May 2025 06:42:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJnzy-0000000A3Oi-0hmA
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 06:41:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uJnzw-0005Kd-VN; Tue, 27 May 2025 08:41:16 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uJnzw-000NGe-2X;
	Tue, 27 May 2025 08:41:16 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uJnzw-00CQhE-2E;
	Tue, 27 May 2025 08:41:16 +0200
Date: Tue, 27 May 2025 08:41:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aDVejGiDNs1OXP0N@pengutronix.de>
References: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
 <20250526-rk3588-optee-v1-5-5004995cbd03@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250526-rk3588-optee-v1-5-5004995cbd03@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_234118_212751_AE0E99DF 
X-CRM114-Status: GOOD (  22.11  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/9] PBL: fdt: make minimum fdt size configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, May 26, 2025 at 04:38:11PM +0200, Michael Tretter wrote:
> Adding or modifying nodes in the fdt may change the size of the fdt.
> This needs some reserved space in the fdt to avoid overriding memory
> that comes after the fdt and is already used.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  pbl/Kconfig          | 11 +++++++++++
>  scripts/Makefile.lib |  2 ++
>  2 files changed, 13 insertions(+)
> 
> diff --git a/pbl/Kconfig b/pbl/Kconfig
> index 6e3581829d589c7b06ed878b09bf74e16a0c3086..489b2001a855d62e11a2159311332b0e67f3a754 100644
> --- a/pbl/Kconfig
> +++ b/pbl/Kconfig
> @@ -60,6 +60,17 @@ config PBL_VERIFY_PIGGY
>  config PBL_CLOCKSOURCE
>  	bool
>  
> +config PBL_FDT_MIN_SIZE
> +	hex
> +	default 0x0
> +	prompt "Minimum size of the FDT blob"
> +	help
> +	  The TF-A or OP-TEE may modify the FDT or add nodes to the FDT. This
> +	  may increases the size of the device tree. This may override the
> +	  barebox binary.
> +
> +	  The minimum size should be at least CFG_DTB_MAX_SIZE for OP-TEE.
> +
>  config BOARD_GENERIC_DT
>  	bool
>  	select LIBFDT
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index b10119797686ea31fe927d29a7849ad525c8c835..f50006f57200a76a86c7e29175dd7e35ab138e26 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -396,6 +396,8 @@ ifeq ($(CONFIG_OF_OVERLAY_LIVE), y)
>  DTC_FLAGS.dtb += -@
>  endif
>  
> +DTC_FLAGS.dtb += --space $(CONFIG_PBL_FDT_MIN_SIZE)

--space sets the minimum fdt size. The fdt size will vary over time and
different boards. Isn't --pad more suitable for what you want to
archieve?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


