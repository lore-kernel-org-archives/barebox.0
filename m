Delivery-date: Mon, 14 Jul 2025 09:49:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubDvy-00HKkD-1r
	for lore@lore.pengutronix.de;
	Mon, 14 Jul 2025 09:49:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubDvy-0004ua-0u
	for lore@pengutronix.de; Mon, 14 Jul 2025 09:49:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OK2BloZi8oGK2AK4GwAm6vr33/9zGFdC6/dFSMXKRTk=; b=SEQ9KHslBPiNN5KbN02EVwAEkJ
	OR/tGlrzC8ba85Y2LZzsXS9hIQL9ChYQmBVGBvO+G4OTPUUkDr4z3KiGicJXTwN0JOW9nEZco7KTx
	728th3jkCH13PvZgudc+KDkS12dnvfyVyBzKcsLIiFMlDVbRzP9yWrCEd4x6Wq6sPKquwdqeud6AF
	uCooyDmOHZE26smLJschILQcHr6L1HnZQ63rMWZck1lUvzfpFmJJHmhY7VwPpOo89xXirgatHzfbw
	Zr7WBDUaW08iCcw3+Udc9Mna4WvxEsG0Oe28FqLuOYy5hN5WS3Kn9eAAIKOL2ZERxTacycfBlIDSU
	rbouacZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubDvU-00000001W1n-0l0c;
	Mon, 14 Jul 2025 07:48:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubDYQ-00000001Srt-2nsj
	for barebox@lists.infradead.org;
	Mon, 14 Jul 2025 07:24:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ubDYP-0007IX-Fi; Mon, 14 Jul 2025 09:24:49 +0200
Message-ID: <7b5c4373-3471-43b8-ae12-b46bfd7fcde5@pengutronix.de>
Date: Mon, 14 Jul 2025 09:24:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20250709-fix-hab-equal-hash-writes-v1-1-6a59bb4b5ff1@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250709-fix-hab-equal-hash-writes-v1-1-6a59bb4b5ff1@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_002450_709683_1D5C4083 
X-CRM114-Status: GOOD (  19.54  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] hab: writing the same srk hash is not an error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 09.07.25 09:42, Stefan Kerkmann wrote:
> Before this commit writing the same srk hash twice failed with an error.
> This is inconsistent with other invocations of the hab tool e.g.: `hab
> -l -p` doesn't fail if the lockdown bit is already set.
> 
> So let's align the behavior by only throwing an error if we attempt to
> write a srk hash that is different from the one that is already burned.
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/hab/hab.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
> index 4e9f96c98b619d12d069986aa688b92d48f3442c..1c747e8a3e52fdfc0240b5794fbffe9a2a562bb2 100644
> --- a/drivers/hab/hab.c
> +++ b/drivers/hab/hab.c
> @@ -470,12 +470,13 @@ int imx_hab_write_srk_hash(const void *buf, unsigned flags)
>  	}
>  
>  	if (imx_hab_srk_hash_valid(cursrk)) {
> -		char *str = "Current SRK hash is valid";
> -
>  		if (flags & IMX_SRK_HASH_FORCE) {
> -			pr_warn("%s, ignoring\n", str);
> +			pr_warn("Current SRK hash is valid, ignoring\n");
> +		} else if (memcmp(cursrk, buf, SRK_HASH_SIZE) == 0) {
> +			pr_info("Current SRK hash is equal, nothing to do\n");
> +			return 0;
>  		} else {
> -			pr_err("%s, refusing to burn again\n", str);
> +			pr_err("Current SRK hash is different, refusing to burn again\n");
>  			return -EEXIST;
>  		}
>  	}
> 
> ---
> base-commit: f49c873d7ec78a2df7bd3c7a86f5372fb1666517
> change-id: 20250709-fix-hab-equal-hash-writes-87c28792acf4
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


