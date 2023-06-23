Delivery-date: Fri, 23 Jun 2023 11:39:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCdGe-000QQG-0V
	for lore@lore.pengutronix.de; Fri, 23 Jun 2023 11:39:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCdGb-0006V9-Kc
	for lore@pengutronix.de; Fri, 23 Jun 2023 11:39:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BFVTHbNROED3E56KOpXp78THunGvB8RsrtWmDVMOYAA=; b=3RnWFCcv1EP8p8RQrvxRlX0Mtz
	I4XkS31GR0hA28bMFCJbnSwaa76Y0hWIrH6Gy9HpuabRazvveFulJ9j8BCYIoKf0lQ6meK6xD78gr
	kM3fWe/vrT9SIKz3pVDaS50JXRjCIq1WEDbAkAt7A82/L3AUPAaJeylpYGNJJwPSosZyOKMVML7kg
	4OqO7rLjgQVZAlszyeHo1PGfsgXM6KYuFswr2ikMQ/5RfkvbR+LoD6uz9U/e9ZE13Lq69z9FthJWf
	gdO8C2IJo5hfLXccazwsnqxmk9jtAtuumtTkl0gVXUnrZtZaLUHibR+y2sr/O6egy9K0+1Ci4ZD40
	IL4GEhLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCdFX-0032i6-1Y;
	Fri, 23 Jun 2023 09:38:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCdFU-0032hV-05
	for barebox@lists.infradead.org;
	Fri, 23 Jun 2023 09:38:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qCdFS-0006Lj-NC; Fri, 23 Jun 2023 11:38:34 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qCdFS-0004S0-Fw; Fri, 23 Jun 2023 11:38:34 +0200
Date: Fri, 23 Jun 2023 11:38:34 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230623093834.GP18491@pengutronix.de>
References: <20230622181907.3167989-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230622181907.3167989-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230623_023836_083264_30628199 
X-CRM114-Status: GOOD (  17.43  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8M: iomux-mx8mm: add pad ctrl defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 22, 2023 at 08:19:07PM +0200, Marco Felsch wrote:
> Add pad ctrl defines like already done for the 8mp.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  include/mach/imx/iomux-mx8mm.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/include/mach/imx/iomux-mx8mm.h b/include/mach/imx/iomux-mx8mm.h
> index f2ebde3d3b..24e7e4afe3 100644
> --- a/include/mach/imx/iomux-mx8mm.h
> +++ b/include/mach/imx/iomux-mx8mm.h
> @@ -691,6 +691,16 @@ enum {
>  	IMX8MM_PAD_UART4_TXD_GPIO5_IO29                               =  IOMUX_PAD(0x04B8, 0x0250, 5, 0x0000, 0, 0),
>  };
>  
> +#define MX8MM_PAD_CTL_DSE1	(0 << 1)
> +#define MX8MM_PAD_CTL_DSE2	(2 << 1)
> +#define MX8MM_PAD_CTL_DSE4	(1 << 1)
> +#define MX8MM_PAD_CTL_DSE6	(3 << 1)
> +#define MX8MM_PAD_CTL_FSEL	BIT(4)
> +#define MX8MM_PAD_CTL_ODE	BIT(5)
> +#define MX8MM_PAD_CTL_PUE	BIT(6)
> +#define MX8MM_PAD_CTL_HYS	BIT(7)
> +#define MX8MM_PAD_CTL_PE	BIT(8)

Can't we just add MX8M_PAD_CTL_* defines? They are likely all the same
for all i.MX8M variants.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


