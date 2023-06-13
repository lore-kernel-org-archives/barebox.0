Delivery-date: Tue, 13 Jun 2023 10:39:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8zYb-004vP4-Jr
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 10:39:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8zYZ-0004IV-4y
	for lore@pengutronix.de; Tue, 13 Jun 2023 10:39:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L40/bWYKLNuWchsV6qGeOfzAYtnYWO9kvaYL3K3PikU=; b=dM0ZEziSGL1SMKDITrUL0TFZKm
	rypjuiNwjDXAdWE2hJZYKmKHuH+Nij7s8AijY/Dv+gsl6MkOSiNZDs28M9IXCNdtUrTLxo1wrfHyY
	YmP+O9/sMIBRncGv6CJViDhw8iIEEQJHYYdWFD5AvY7AVk6vT9RBwA3GWzUWxviQqyeTp72STCuA0
	zNLnPZocgKJaYrmFzxTbLguVChYTgflPVsA9cDsc47Iv0kcztS6sorqriU2AYifINknmm4q7HTpTr
	AMUo7E2NjuyYtaQqwSRkNYnYVO53xgsZetPqAZtj7nUw7RU8N2ovR84lcqQ5sFO9VyhVbC3saZ5lO
	Tsv81MZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8zXQ-007Ouw-1p;
	Tue, 13 Jun 2023 08:38:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8zXM-007Ou0-2t
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 08:38:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8zXK-0004DE-6K; Tue, 13 Jun 2023 10:37:58 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8zXJ-0003Hm-VI; Tue, 13 Jun 2023 10:37:57 +0200
Date: Tue, 13 Jun 2023 10:37:57 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230613083757.GQ18491@pengutronix.de>
References: <20230612125917.1087470-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230612125917.1087470-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_013800_933418_98642D7F 
X-CRM114-Status: GOOD (  21.08  )
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
Subject: Re: [PATCH] asm: align virt_to_phys definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 12, 2023 at 02:59:17PM +0200, Ahmad Fatoum wrote:
> We have two definitions of virt_to_phys: One for MIPS code accepting both
> const and non-const pointers and one for everybody else that accepts
> volatile and non-volatile pointers. Unify both to have a common
> definition with the superset of the qualifiers.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/mips/include/asm/io.h | 2 +-
>  include/asm-generic/io.h   | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
> index 9c856c7b1552..4584eec8ca07 100644
> --- a/arch/mips/include/asm/io.h
> +++ b/arch/mips/include/asm/io.h
> @@ -28,7 +28,7 @@ void dma_inv_range(unsigned long, unsigned long);
>   *     the memory address given.
>   */
>  #define virt_to_phys virt_to_phys
> -static inline unsigned long virt_to_phys(const void *address)
> +static inline unsigned long virt_to_phys(const volatile void *address)
>  {
>  	return CPHYSADDR((unsigned long)address);
>  }
> diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
> index 6e91c0aea68f..ab439026928a 100644
> --- a/include/asm-generic/io.h
> +++ b/include/asm-generic/io.h
> @@ -769,7 +769,7 @@ static inline void iowrite64_rep(volatile void __iomem *addr,
>   */
>  #ifndef virt_to_phys
>  #define virt_to_phys virt_to_phys
> -static inline unsigned long virt_to_phys(volatile void *mem)
> +static inline unsigned long virt_to_phys(const volatile void *mem)
>  {
>  	return (unsigned long)mem;
>  }
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


