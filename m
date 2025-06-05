Delivery-date: Thu, 05 Jun 2025 09:17:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN4qn-003vjq-2t
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 09:17:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN4qn-0007ji-C7
	for lore@pengutronix.de; Thu, 05 Jun 2025 09:17:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WcWFlorUoRuUE1VFR24vo+mjQRlukvz+j5lLTlvs2xc=; b=xGPxOQvPOpJmODBZVXN6AW8j6L
	4ag5Pxxy24ZZjw2Y5s3P06eJrv+OGcNYE050CkHPo+kQAgHGHM6f/WlSJuXj9XJGm8hi3drXkFBg7
	T5uM/FztdL2sPLSeyL/3mpVvbFUZGZfyA2z3/Zeb2E0WEpD6aJR94TobZSWHAHOXmyRFH7/MtfEBf
	Fv0VPak8owR22mVLgJIF9bKUGgJI9aHhDh37qKsMqrgNraUYIuNSFdW96D6Wk3sQAcmkSGwzaGBcz
	HV3UI3O1rowkCyuhcLscvgYBb2qGbPRSNJiGq2SgmBkdkzKNofD/jPevizRonFweNfBWk57o6BGQu
	UOsqtp1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN4qI-0000000EvSZ-1cGH;
	Thu, 05 Jun 2025 07:16:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN4kV-0000000Eucx-2NSp
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 07:10:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uN4kS-0004Y5-P1; Thu, 05 Jun 2025 09:10:48 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uN4kS-001unf-1u;
	Thu, 05 Jun 2025 09:10:48 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uN4kS-00CXBP-1b;
	Thu, 05 Jun 2025 09:10:48 +0200
Date: Thu, 5 Jun 2025 09:10:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <aEFC-F_GDuaKQA4k@pengutronix.de>
References: <20250526141914.185212-1-a.fatoum@barebox.org>
 <20250526141914.185212-6-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250526141914.185212-6-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_001051_603751_3B4A6436 
X-CRM114-Status: GOOD (  17.77  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 5/6] resource: supply memory type/attrs on all SDRAM
 requests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Mon, May 26, 2025 at 04:19:13PM +0200, Ahmad Fatoum wrote:
>   * Request a region from the registered sdram
>   */
>  struct resource *__request_sdram_region(const char *name, unsigned flags,
> -					resource_size_t start, resource_size_t size)
> +				      resource_size_t start, resource_size_t size,
> +				      enum resource_memtype memtype, unsigned memattrs)
>  {
>  	struct memory_bank *bank;

This changes the prototype in the definition...

> diff --git a/include/memory.h b/include/memory.h
> index 707c0f13130d..7c5b133b7693 100644
> --- a/include/memory.h
> +++ b/include/memory.h
> @@ -33,14 +33,25 @@ int barebox_add_memory_bank(const char *name, resource_size_t start,
>  	if (((rsv)->flags & IORESOURCE_BUSY))
>  
>  struct resource *__request_sdram_region(const char *name, unsigned flags,
> -					resource_size_t start, resource_size_t size);
> +				      resource_size_t start, resource_size_t size);

...but not in the declaration causing intermediate compile errors.

Not sure what the correct fix is here. Could you fixup and send the
last two patches of this series again?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


