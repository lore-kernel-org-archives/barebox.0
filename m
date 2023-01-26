Delivery-date: Thu, 26 Jan 2023 19:46:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pL7Gp-0030ck-A3
	for lore@lore.pengutronix.de; Thu, 26 Jan 2023 19:46:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pL7Gm-0005kn-Js
	for lore@pengutronix.de; Thu, 26 Jan 2023 19:46:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Uu9yhw+FFee/JLU+fMJopV6k32thBu0B/5TfVXHZq3k=; b=P/h7Jr6NzBgY9ePR30K71tEeIW
	m4BgmPAqkGkpCru/MZS/oabSVZmwnRrHT9+fG5jTXFr8PcnVXlrEFU+lqPwzOnFQZ85++zJtBzAw0
	nfenMDCMiJdAdf2ImFm+/bWLCJEijTuPcmICnMk0ZvHCFsxGzRlTWeXVXaVTZayNWu3IPkRa6iLmR
	e3wOzWQJ2iU86iMY5z6BG2qOYQRd2GCfCI+HhPcymOWFFlhVA/Ry7zLCCBJzV1osUZoG+KvNlbrPU
	2351cYbSzk1w8YXlOj9q3jXNiHlhrDWk5sphJ4tKD7U/P4JdVp5eF9qk4bynGlJZtND5PPYZqrOHi
	HtiphKqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL7FS-00CBgI-60; Thu, 26 Jan 2023 18:45:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL7FL-00CBeX-MS
	for barebox@lists.infradead.org; Thu, 26 Jan 2023 18:45:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pL7FH-0005VR-Ai; Thu, 26 Jan 2023 19:45:11 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pL7FH-0004Kp-26; Thu, 26 Jan 2023 19:45:11 +0100
Date: Thu, 26 Jan 2023 19:45:11 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230126184511.a4an5antemsc6lvl@pengutronix.de>
References: <20230126183624.85500-1-contact@jookia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230126183624.85500-1-contact@jookia.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_104515_757667_0B4FD5B7 
X-CRM114-Status: GOOD (  18.02  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX6: Specify OCRAM base address and size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi John,

thanks for the patch.

On 23-01-27, John Watts wrote:
> The i.MX6 includes some on-chip RAM: 128KiB on most variants, with 256KiB
> on the Dual and Quad variants.
> 
> This region is where the first stage of Barebox gets loaded if RAM
> initialization isn't hard coded using DCD information.
> 
> Add the base address and size so it can be used to calculate where to put
> the stack at boot.
> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>  arch/arm/mach-imx/include/mach/imx6-regs.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
> index 39e2751533..4acbb9796b 100644
> --- a/arch/arm/mach-imx/include/mach/imx6-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
> @@ -3,6 +3,10 @@
>  #ifndef __MACH_IMX6_REGS_H
>  #define __MACH_IMX6_REGS_H
>  
> +/* Set MAX_SIZE to 128K, only the Quad and Dual have 256K */
> +#define MX6_OCRAM_BASE_ADDR		0x00900000
> +#define MX6_OCRAM_MAX_SIZE		0x00100000
					^
But this is not 128K instead it is 1M, therefore and for better
readability can we please use the SZ_128K macro? :)

Regards,
  Marco


