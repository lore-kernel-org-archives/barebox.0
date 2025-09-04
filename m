Delivery-date: Thu, 04 Sep 2025 12:31:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu7Fu-0080Nq-1K
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 12:31:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu7Ft-0000dY-8v
	for lore@pengutronix.de; Thu, 04 Sep 2025 12:31:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ys2K3NnOPrG/63eEyDanruwV3AZTNhNLqyA8EI8lbqI=; b=hhBU5hv2o1vVxlmcO3Bv9J/ukD
	IkOnMyXpNYc+dXhVX66m/26WRbr+VMrVvCYmedD0YCbeOGoogvKmLmOc/wmP/H0I7HhUUOSCODDep
	HglWVJfnj+aoApMSJ611xQUKRlGtxdG8U2xcjwQ28L7TVP8sacVXTvJ0TwIwBzEbUI2lhW9l+c2q9
	CgAqNAVV2PlLnAjPPdv0p+alekLAnGKFJSyBn2eXoRbQci7skcqC8l2I6exg5mcmvSwjiREtmuKAm
	JXab+ajAEUr5ufDZEWJtzlebwNJwjgDdwEYVAOEOWO72EP19dXBTKFxYXJiD8c0g7RNI/T4ykd+zl
	iCZtIe8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu7FS-0000000AuSY-28sN;
	Thu, 04 Sep 2025 10:31:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu67V-0000000AW33-1xVq
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 09:19:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uu67U-0002AV-5U; Thu, 04 Sep 2025 11:19:04 +0200
Message-ID: <4e375172-1a65-40f8-a3a5-f35ae6a515c5@pengutronix.de>
Date: Thu, 4 Sep 2025 11:19:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20250831035542.1623695-1-chalianis1@gmail.com>
 <20250831035542.1623695-7-chalianis1@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250831035542.1623695-7-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_021905_509373_FB24EFF6 
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 7/7] efi: payload: add options for FDT force and initrd
 direct install
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Anis,

On 8/31/25 5:55 AM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  efi/Kconfig | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/efi/Kconfig b/efi/Kconfig
> index 84f670fd23d3..c3811574920d 100644
> --- a/efi/Kconfig
> +++ b/efi/Kconfig
> @@ -50,4 +50,21 @@ config EFI_PAYLOAD_DEFAULT_PATH
>  
>  endif
>  
> +config EFI_FDT_FORCE
> +	bool "Force EFI provided FDT"
> +	default n

n is the default

> +	help
> +	  with this options we keep the fdt passed by EFI in the
> +	  system configuration table, EFI has to suppot FDT otherwise
> +	  an empty fdt will be generated when linux boots by efi.

These things should be runtime configurable and not in Kconfig.
Why can't you take a user-supplied FDT if there is one and otherwise
fall back to of_get_fixed_tree_for_boot() as fallback?

> +config EFI_INITRD_INSTALL
> +	bool "Install the initramfs by barebox"
> +	default n
> +	help
> +	  with this option barebox will install the initrd to the
> +	  system configuration table, same as what kernel do after
> +	  calling read file2 boot services, in this case the initrd
> +	  will be read directly by the kernel as an initramfs.

Same thing, why can't we check for data->initrd and use that?

Cheers,
Ahmad

> +
>  endmenu

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



