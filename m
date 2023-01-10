Delivery-date: Tue, 10 Jan 2023 15:39:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFFnE-007qF4-Eb
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 15:39:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFFnC-0004Rt-KR
	for lore@pengutronix.de; Tue, 10 Jan 2023 15:39:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y8d6eC4MXCriNfwLyesqGjHWbKwb311agyoZIp69hew=; b=I/qVm2xdjdzZ111fTjyrtlvnHm
	NVUxqoCTnEsQUYZA3Rn4fK7BhxgNjV7UiBL3aHkRE0b805w7CRszDSS/oKh1Eb1u+VTWoRvKA6ohc
	XhWuAUgD9SKhqrDNV3jJWjnT/pdDLXTVdHCsJkg2H6fcSGizO3rzDdH+v0j6xa0zhpn/na+wjrPDg
	WuVB3P1mfcaWABLl5nCZIMR+6f7vdL52ff62zgrVE1s11oXauYZrh4zvDIBfJzwGC4nDecSxal6tz
	dc1l4kRgsjkDQbex9Y9xnnFBHg/u9zPJfON3vLbeBhlVnVqkZfyVUnnxRkElEnXZ7rayT7qaMfqdJ
	yU0njX6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFlw-007LB8-Um; Tue, 10 Jan 2023 14:38:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFlq-007L9a-GF
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 14:38:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFFlo-0004I8-DV; Tue, 10 Jan 2023 15:38:32 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFFlo-0004SO-5a; Tue, 10 Jan 2023 15:38:32 +0100
Date: Tue, 10 Jan 2023 15:38:32 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230110143832.GI28911@pengutronix.de>
References: <20230109175828.2017699-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230109175828.2017699-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_063834_565506_427DD5C2 
X-CRM114-Status: GOOD (  19.46  )
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
Subject: Re: [PATCH] asm-generic: define IOMEM for assembly as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 09, 2023 at 06:58:28PM +0100, Ahmad Fatoum wrote:
> In interest of type safety, we should start using IOMEM() for register
> MMIO base addresses that we keep in headers for PBL. Some of these
> addresses are used from assembly code as well, so define IOMEM() for
> that case.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  include/asm-generic/io.h | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
> index e41b4df40366..51f65ceb0a2e 100644
> --- a/include/asm-generic/io.h
> +++ b/include/asm-generic/io.h
> @@ -442,7 +442,11 @@ static inline void *phys_to_virt(unsigned long phys)
>  #endif
>  
>  #ifndef IOMEM
> +#ifndef __ASSEMBLY__
>  #define IOMEM(addr)	((void __force __iomem *)(addr))
> +#else
> +#define IOMEM(addr)	addr
> +#endif
>  #endif
>  
>  #define __io_virt(x) ((void __force *)(x))
> -- 
> 2.38.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


