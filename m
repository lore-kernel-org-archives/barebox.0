Delivery-date: Fri, 11 Oct 2024 22:33:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1szMJv-003B9D-0g
	for lore@lore.pengutronix.de;
	Fri, 11 Oct 2024 22:33:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1szMJu-0002nL-Kp
	for lore@pengutronix.de; Fri, 11 Oct 2024 22:33:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AewooAM+7BE6uzAspzO8MKjos0hE/JAqkLBgC8ylYo8=; b=Wx2GDEa+EyDM1QlmHIxeecmOTz
	IPwk7v1xWE/6fk3fTVeWkMea/Vpy0JimdcJgxEpFT9D1Sduqdvz/6zr8MCmksEwRKNkF2CyNgcKaP
	J2LbmzhK+KFbXqouoGRIKtfrjeN87dtfgle8MnlW08jcen+91fINVNlRFYa464nScIbd2gDuAUKiX
	nA1a0fHiB0KJrLQpjcmYizclKb3LVYTxl9L6gXfBUhpSHBCjesrnBf+kc2qQgqOWXuor9cOaVR7GC
	nFC68Qj+CQD4kS45mcdf69JtM6TLDfaF8wS3FEyhF6lvS3nclIgaDXzdzEseJwfGH9Fqtm33BimJJ
	QzTP7WZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szMJC-0000000HXFN-1gVJ;
	Fri, 11 Oct 2024 20:32:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szMJ8-0000000HXEf-0LVh
	for barebox@lists.infradead.org;
	Fri, 11 Oct 2024 20:32:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1szMJ4-0002jf-3y; Fri, 11 Oct 2024 22:32:14 +0200
Message-ID: <7ac0d20e-8529-4b79-b457-ddf15fa43b69@pengutronix.de>
Date: Fri, 11 Oct 2024 22:32:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mohamed Sawy <mohamedsawy1022@gmail.com>, barebox@lists.infradead.org
References: <20241011201818.42338-1-mohamedsawy1022@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241011201818.42338-1-mohamedsawy1022@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_133218_155792_F1F75BFA 
X-CRM114-Status: GOOD (  18.46  )
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
Subject: Re: [PATCH] sandbox: defconfig: activate CONFIG_CONSOLE_ACTIVATE_ALL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Mohamed,

On 11.10.24 22:18, Mohamed Sawy wrote:
> The default CONSOLE_ACTIVATE value set in common/Kconfig is
> CONSOLE_ACTIVATE_ALL_FALLBACK.
> 
> Which adds an error when there's no explicit activation for a specific
> console, that is important for real hardware as it may write barebox log
> to external devices that don't expect it.
> 
> But in case of sandbox mode there's no explicit activation and the error
> is always there in spite of number of consoles and there are no external
> devices to worry about.
> 
> Fixes: 219b2341dc16 ("console: add new CONSOLE_ACTIVATE_ALL_FALLBACK option")
> Signed-off-by: Mohamed Sawy <mohamedsawy1022@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks for the fix,
Ahmad

> ---
>  arch/sandbox/configs/sandbox_defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
> index 1bb98c550c..a5e0f72c63 100644
> --- a/arch/sandbox/configs/sandbox_defconfig
> +++ b/arch/sandbox/configs/sandbox_defconfig
> @@ -3,6 +3,7 @@ CONFIG_HUSH_FANCY_PROMPT=y
>  CONFIG_CMDLINE_EDITING=y
>  CONFIG_AUTO_COMPLETE=y
>  CONFIG_MENU=y
> +CONFIG_CONSOLE_ACTIVATE_ALL=y
>  CONFIG_CONSOLE_ALLOW_COLOR=y
>  CONFIG_PARTITION_DISK_EFI=y
>  CONFIG_DEFAULT_COMPRESSION_GZIP=y


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


