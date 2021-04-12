Delivery-date: Mon, 12 Apr 2021 09:46:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVrHF-0003lY-Rf
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 09:46:33 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVrHE-0000OC-Sh
	for lore@pengutronix.de; Mon, 12 Apr 2021 09:46:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uyYZ9u0uoyC/G7Fq5e/8uYlCRx02m5/SZJCTElQECn0=; b=Per0YwkUKIygdZGJ4teuP2191
	ypq4nd1x/he13NHh5OiCdNwg7IZ0Mm6M3zGdjD2aCGk/Xoq1t1jfYO4YN9o8SemAaKXYh6Y82MSDQ
	0KDz6ZZdHFzwXngj7VmwLh1M+7bUtywju6cSN8V7x7ezy8PgYriYK+ka48r1avlWLhsbfWhaS7SC8
	SXYOR7tqJ80c3/QjvIGQRo7cau8aJIXrtii9lCiw5KQmbyVWHEHi3mZwtMvVJ9/cBPgvirk8yVJVi
	W2fHbnTgKTrfiT4VnhaRQe/G2DPCi0DUzr+OeWwJTiAjKCCA0QRBp8q8OzP5PCg24HhW5RS5JINpw
	TqiBSpYDg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVrG8-0060um-8e; Mon, 12 Apr 2021 07:45:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVrFr-0060u0-B3
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 07:45:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=zlqWJ7adMnprPBHmnzwStpKSkZlh5kW3JTgPgyW8imo=; b=1b6u5Qzey/Hmo9TJNkdY8KIvQz
 5UVpnDSjg7Rup+M8UVIGoRlnJfyo0F0QEBQiCCBsQdD80bwg34/LCZsgCQjsn1kUnerNOivT91FDU
 U5HbD2qTvTtbvx7RAarIleWiy1ThXqDUCuztSXBlpduAsoPYNxhPPIBGccnFcJBrPHQ+DYaFi1fLz
 qb8GajHendVokInYjH1eiIvzB/ID68XRNSqC57cDfnnSX6SNlDIquKXaaVrMXLTbAGdDSpXGo/XxR
 KpBlKYpuYEauL4vHm5PGGGVo/Cex81pd7qXkHm91fj47r5h79fkhWt5Ovp1TwS+QnvWec32K7OWyv
 XEnFIwQQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVrFo-005wA5-No
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 07:45:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1lVrFl-0008P3-BG; Mon, 12 Apr 2021 09:45:01 +0200
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1lVrFk-0007gx-PB; Mon, 12 Apr 2021 09:45:00 +0200
Date: Mon, 12 Apr 2021 09:45:00 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210412074500.dgi2vz7ptkzmrsrk@pengutronix.de>
References: <20210410104505.2076790-1-ahmad@a3f.at>
 <20210411203947.3296981-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210411203947.3296981-1-ahmad@a3f.at>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_004504_794378_18B6E5C1 
X-CRM114-Status: GOOD (  20.45  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! common: add option for shipping KCONFIG_CONFIG as
 /env/data/config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Apr 11, 2021 at 10:39:47PM +0200, Ahmad Fatoum wrote:
> Doesn't make sense to have this without DEFAULT_ENVIRONMENT_GENERIC_NEW
> support. Similar options depend on this as well.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>

Thanks, this is useful!

For both:
Tested-by: Roland Hieber <rhi@pengutronix.de>

> ---
>  common/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 2872c80dbf13..bddf802d3bb4 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -943,6 +943,7 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE
>  
>  config DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG
>  	bool "Ship .config as /env/data/config"
> +	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
>  	help
>  	  This option embeds the used barebox Kconfig .config file into the
>  	  environment as /env/data/config. This will increases barebox image
> -- 
> 2.31.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

