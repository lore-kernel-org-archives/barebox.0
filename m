Delivery-date: Thu, 25 Apr 2024 09:42:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rztkT-00GIXi-0Z
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 09:42:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rztkR-0001S6-U0
	for lore@pengutronix.de; Thu, 25 Apr 2024 09:42:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BRNH19gEaWK3COmgre+YyvthyLRMZ/Pmwt3uDunP3ls=; b=G0c4UxilqTSYBjWNvzPVoohEbJ
	ChbS/UKybxXCOuol6w0u7ZsdsHUHXwsqeJNIk0DqpB1ViEtEh4zhq3dDdJLRO8k9QxD0jI4uXbiHO
	8FgthyceMDBGcFnNSUUJYBXdLx22HlWSPfUJfvx8ZUAkf1dflILTe6xoIdNAhYtYojMtbAw3z+BaV
	APKwZJ9rksGD+Iz2ub0C+/hRgAimx/c5WmpxwKNRWYhWLC+3MHMnZbi5RXgJYt8jtrScyx67z3H3x
	KzZ4iW0JIbrJxyrdqR2Ef+rXbcl8Gs3S4dW/JNWIfrGoPy2Gt3YZmBAIa6E6rsdTAisEmBaiQZiux
	juWUu3rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rztk1-00000007JJ8-24Mb;
	Thu, 25 Apr 2024 07:42:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rztjx-00000007JIJ-3f0X
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 07:41:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rztjw-0001Dc-LC; Thu, 25 Apr 2024 09:41:56 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rztjw-00EDp1-8Z; Thu, 25 Apr 2024 09:41:56 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rztjw-00DDfz-0a;
	Thu, 25 Apr 2024 09:41:56 +0200
Date: Thu, 25 Apr 2024 09:41:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZioJRHUYQyo3x3bm@pengutronix.de>
References: <20240424064156.3609113-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240424064156.3609113-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_004157_932464_A7751E72 
X-CRM114-Status: GOOD (  20.11  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! mtd: nand: move to drivers/mtd/nand/raw/
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Apr 24, 2024 at 08:41:56AM +0200, Ahmad Fatoum wrote:
> mtd: nand: align IS_ENABLED(symbol) for header stub with Makefile
> 
> drivers/mtd/nand/Makefile builds nand-bb.o when CONFIG_MTD_NAND_CORE
> is defined. We need to use the same symbol in the header to avoid
> breakage when CONFIG_MTD_RAW_NAND is deselected.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/nand.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/include/nand.h b/include/nand.h
> index 84f5a9671410..4fb52e9f82d5 100644
> --- a/include/nand.h
> +++ b/include/nand.h
> @@ -4,7 +4,7 @@
>  
>  struct nand_bb;
>  
> -#ifdef CONFIG_MTD_RAW_NAND
> +#ifdef CONFIG_MTD_NAND_CORE
>  int dev_add_bb_dev(const char *filename, const char *name);
>  int dev_remove_bb_dev(const char *name);
>  struct cdev *mtd_add_bb(struct mtd_info *mtd, const char *name);
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


