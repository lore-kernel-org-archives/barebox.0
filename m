Delivery-date: Thu, 15 Jan 2026 15:18:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgOAj-001cX2-2x
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 15:18:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgOAi-0008GD-Sy
	for lore@pengutronix.de; Thu, 15 Jan 2026 15:18:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/6A5shD0BFHDdSjMLSJYca2/yB28qTsVOtWkhoCKPA8=; b=K+fL26Zb7sv9l4nE7e/N31TW4l
	I03aPLdoASpQnwvws8lf+VjdeqZcdx8bFohfFimB6s679/sKM1ejDveExr+Lb5B1XC7jm/CKu2KHL
	ZPpKTV/+9ATeWIUblMTyogWQGJ0q7BjdxDieNFeH1jgKeWADwSgaWdSX9nkKV5BD94jK2M+2TX4jU
	q594F5l5KBVpFBtPIlvktNlBytmhb7z5PEhtgnSOTrsHtHoJ+hlUUoSw5+aNX8tLe8A0lDT1Hd+Pq
	qg4hfbAGaiEdTonaIGYhV5xiS9p4YYRKfxhL4/bq0ikOOZbJSwiWwiyCmwMGHiOeOgIxTBFX+XMcr
	W7SopLdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgOAC-0000000CSjd-2YzS;
	Thu, 15 Jan 2026 14:17:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgOA6-0000000CSj7-0N0v
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 14:17:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgOA4-00089y-Cu; Thu, 15 Jan 2026 15:17:20 +0100
Message-ID: <3948331f-1dc2-4da4-abb9-4d14d19d5aa6@pengutronix.de>
Date: Thu, 15 Jan 2026 15:17:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-23-8f0625ac5471@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-23-8f0625ac5471@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_061723_194596_DD18734A 
X-CRM114-Status: GOOD (  19.21  )
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
Subject: Re: [PATCH 23/23] ARM: i.MX8M: remove /secure-chosen/stdout-path if
 requested
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 11/10/25 9:35 PM, Marco Felsch wrote:
> Remove the /secure-chosen/stdout-path property if requested by the board
> code.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Ah, I see now what pbl_disable_secure_chosen_stdout() is about.

I have a question though: Doesn't the way it's structured now mean that
the code for fdt_remove_secure_chosen_stdout() is always included, even
if ultimately unused? I don't want boards that are completely
uninterested in this to pull in libfdt. Did you check?

Cheers,
Ahmad


> ---
>  arch/arm/mach-imx/atf.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
> index baaf0bcc843a72021f97591348e9d165a34d0640..e56aecb9fd814a9324c086b39be3b8790929ba3a 100644
> --- a/arch/arm/mach-imx/atf.c
> +++ b/arch/arm/mach-imx/atf.c
> @@ -142,6 +142,14 @@ imx8m_tfa_start_bl31(const void *tfa_bin, size_t tfa_size, void *tfa_dest,
>  				pr_warn("Failed to fixup FDT memory node, continue without\n");
>  				fdt = NULL;
>  			}
> +
> +			if (pbl_disable_secure_chosen_stdout()) {
> +				ret = fdt_remove_secure_chosen_stdout(fdt);
> +				if (ret) {
> +					pr_warn("Failed to disable secure-chosen, continue without FDT\n");
> +					fdt = NULL;
> +				}
> +			}
>  		} else {
>  			if (ret == -ENOTSUPP)
>  				pr_debug("PBL_EARLY_FDT_LOAD disabled, continue without\n");
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



