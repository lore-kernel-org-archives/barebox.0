Delivery-date: Fri, 09 Jun 2023 08:20:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7VUH-00GpQr-1W
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 08:20:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7VUE-0000OX-KX
	for lore@pengutronix.de; Fri, 09 Jun 2023 08:20:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9ZN0Y1r42f2pbRH0flcfkycXh6SH3ax5/HjXvt7yy94=; b=Rsjxi3jnc/1WyRk1hx2QQAan3D
	cO7GqHyV/tTfyyKMT9v+pmyTp8vEHPxt9yCs+ZamufA2zkbMpSbVsw2yOYWuRygPvQA1NgXK/RGP0
	Fpn1nHBxG2nymYN6pCGd92+feLzT+5zYLoR9AKs55vhIuSUpFBWiUj+5pST/S9noUsDEuLno9axc6
	D1o5p8XFIX+BPylBa2rSOx+8vi5a2YOmK/bc06W2AxxyPwkKx4laqXVFmhDxlddzUtJ7Ri98fXpEd
	aBr9aRgPGU0PpypLhF6ywpgNYmldDm+q86N1utJpGuVNj7XjULLdXhuLVXZLWkpYGjC0jWMH+Wz1w
	segaSVaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7VTF-00BqAv-1T;
	Fri, 09 Jun 2023 06:19:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7VTC-00BqAE-28
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 06:19:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q7VTB-0008U7-C6; Fri, 09 Jun 2023 08:19:33 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q7VTB-0007b9-5R; Fri, 09 Jun 2023 08:19:33 +0200
Date: Fri, 9 Jun 2023 08:19:33 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230609061933.GM18491@pengutronix.de>
References: <20230608143818.3147443-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230608143818.3147443-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_231934_698433_7C1CC190 
X-CRM114-Status: GOOD (  20.38  )
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
Subject: Re: [PATCH master] of: override existing reg property in
 of_fixup_reserved_memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 08, 2023 at 04:38:18PM +0200, Ahmad Fatoum wrote:
> of_new_property doesn't care for existing properties and would happily
> add a property that already exists leading Linux to trip over it when
> creating the VFS view into the device tree.
> 
> Fix this by using of_set_property, which would delete an existing
> reg property first, before adding it anew.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/oftree.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/oftree.c b/common/oftree.c
> index 620de6ed5649..3e85070d113c 100644
> --- a/common/oftree.c
> +++ b/common/oftree.c
> @@ -308,8 +308,8 @@ int of_fixup_reserved_memory(struct device_node *root, void *_res)
>  	of_write_number(reg, res->start, addr_n_cells);
>  	of_write_number(reg + addr_n_cells, resource_size(res), size_n_cells);
>  
> -	of_new_property(child, "reg", reg,
> -			(addr_n_cells + size_n_cells) * sizeof(*reg));
> +	of_set_property(child, "reg", reg,
> +			(addr_n_cells + size_n_cells) * sizeof(*reg), true);
>  
>  	return 0;
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


