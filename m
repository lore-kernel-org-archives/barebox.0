Delivery-date: Tue, 20 May 2025 14:29:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHM6A-000pij-06
	for lore@lore.pengutronix.de;
	Tue, 20 May 2025 14:29:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHM69-0000wG-GJ
	for lore@pengutronix.de; Tue, 20 May 2025 14:29:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/ScstfpYn9HOAfzsg5LKvMOsaWKvja/BIXz9NXRK7Xo=; b=MuvM/qPdppTzsgHO53eg+b1jyl
	uggk/PapZ14s1VpfYjTWm2VK6KuMgnXaoVr606esYrjtYaQrZqB5IIXMLWNjkTqs7RFqlnWLNv1FU
	93ibDACS1snedWFQtGaToCPaDTFjtRauWEi/+7Y+GbWLj6ZKGAbotM/i1uHika4DY1Io0UgqST4Xa
	xKAWr+vc3UVJMOFZ/lUYKf3QEiHqSZS7O94xmlWMM9LrvPpjvzxgjeMlflhjQUJf0Ya0AUfDvRZZz
	muvDIqJdCrV4+57OJvldqY81CSBTsF6KZennVf8YZ9q+NWK8GKC/+TG2fEc9lQpP3qcCopuEU1Unt
	G26ALq0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHM5d-0000000CrZ9-14pY;
	Tue, 20 May 2025 12:29:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHM59-0000000CrRo-3ZPU
	for barebox@lists.infradead.org;
	Tue, 20 May 2025 12:28:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1uHM57-0000fQ-5h; Tue, 20 May 2025 14:28:29 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1uHM56-000PMS-3D;
	Tue, 20 May 2025 14:28:29 +0200
Received: from rhi by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1uHM56-00GU4L-2o;
	Tue, 20 May 2025 14:28:28 +0200
Date: Tue, 20 May 2025 14:28:28 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <1747744095-cab02f12977b1707d35cb4e5@pty>
References: <20250520121738.42686-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250520121738.42686-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_052831_887666_1E53EB59 
X-CRM114-Status: GOOD (  17.94  )
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
Subject: Re: [PATCH master 1/2] ARM: i.MX: fix cpu_is_imx on
 CONFIG_ARM_MULTIARCH configurations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, May 20, 2025 at 02:17:37PM +0200, Ahmad Fatoum wrote:
> CONFIG_BOARD_ARM_GENERIC_DT is not the only way an i.MX initcall could
> run on a non-i.MX SoC. Since the addition of the multiarch (really
> multiplatform) support, this can also happen with native images.
> 
> Therefore check for both config options.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Tested-by: Roland Hieber <rhi@pengutronix.de>

> ---
>  include/mach/imx/generic.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/mach/imx/generic.h b/include/mach/imx/generic.h
> index 04086a2ea88d..a0f65391686b 100644
> --- a/include/mach/imx/generic.h
> +++ b/include/mach/imx/generic.h
> @@ -293,7 +293,7 @@ static __always_inline void imx_set_cpu_type(unsigned int cpu_type)
>  # define cpu_is_vf610()		(0)
>  #endif
>  
> -#ifdef CONFIG_BOARD_ARM_GENERIC_DT
> +#if defined(CONFIG_ARCH_MULTIARCH) || defined(CONFIG_BOARD_ARM_GENERIC_DT)
>  # ifdef imx_cpu_type
>  #  undef imx_cpu_type
>  #  define imx_cpu_type __imx_cpu_type
> -- 
> 2.39.5
> 
> 
> 

-- 
Roland Hieber, Pengutronix e.K.          | rhi@pengutronix.de          |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |


