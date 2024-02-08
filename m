Delivery-date: Thu, 08 Feb 2024 08:31:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXysX-008HnF-39
	for lore@lore.pengutronix.de;
	Thu, 08 Feb 2024 08:31:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXysX-0007Ba-Ui
	for lore@pengutronix.de; Thu, 08 Feb 2024 08:31:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lDtFpLBGR0npjF/hsPDqXvYe7/VBOPoakQOXlNXAOu8=; b=VrlpoVZ72hF3gwoKNZeF/Pt2JP
	t/zUn3irupz4ZCOlkMIp5J8usaw1wKVVDCq+GbODASqeDyfVfQQq8yabFg4hofuPTKGr6KqmJbuyy
	gsSeC5gwhdYQMejBr6eAfLYr5lnoiGcRySBZ2orzKoOLgA9ieZYbezbp6qDfsOKQQ6ZC/U0VchW9P
	TzvCkXL+u7y0cVxRhdhkatR+Gth/CLHAn1ipHksyYkVySZdWZH8ZTCpQMemRFv+EfjVOjPQUZhA7Y
	y87iIEpaHdVE44r7IHHXHvkqBm50nSPsALn4vHpKpDFbELxW4rF7/IfYr7DA3iFnsS3AIJFhqLYLs
	XAlFYhWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXyrm-0000000CuED-3GtA;
	Thu, 08 Feb 2024 07:30:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXyrj-0000000CuDd-1Ikj
	for barebox@lists.infradead.org;
	Thu, 08 Feb 2024 07:30:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rXyrg-00078c-Ns; Thu, 08 Feb 2024 08:30:32 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rXyrg-005Aeh-B1; Thu, 08 Feb 2024 08:30:32 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rXyrg-00H5La-0n;
	Thu, 08 Feb 2024 08:30:32 +0100
Date: Thu, 8 Feb 2024 08:30:32 +0100
To: Thaison Phan <tsphan42@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <ZcSDGHbcInKvmR-x@pengutronix.de>
References: <CAFPn3sTc_3q04koG_oPnqTmhGnejxtiva+B5KwYsCdC3czCmKw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFPn3sTc_3q04koG_oPnqTmhGnejxtiva+B5KwYsCdC3czCmKw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_233035_369758_DB75F19B 
X-CRM114-Status: GOOD (  30.07  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] Patch to fix bootm barebox load address alignment to
 acomodate ADRP instruction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Thaison,

On Tue, Feb 06, 2024 at 09:37:47PM -0500, Thaison Phan wrote:
> Hi,
> 
> The aarch64 bootm image handler for barebox can choose a load address
> that is not 4KB aligned. This can result in unexpected behavior with
> the ADRP instruction that is available in 64 bit ARM architectures.
> ADRP forms a PC-relative address to a 4KB page where the bottom 12
> bits of the current PC will be masked out. When the load address of
> the barebox image is not 4KB aligned ADRP can end up forming an
> address that starts from an invalid page of memory or the wrong page
> of memory that was expected to be formed. The following patch aligns
> the load address for the next barebox image to be 4KB aligned to
> accommodate the ADRP instruction.
> 
> Thanks,
> Thaison
> 
> ---
>  arch/arm/lib64/armlinux.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
> index 8382ffdf1b..d66963dae5 100644
> --- a/arch/arm/lib64/armlinux.c
> +++ b/arch/arm/lib64/armlinux.c
> @@ -43,6 +43,8 @@ static struct image_handler aarch64_fit_handler = {
>         .filetype = filetype_oftree,
>  };
> 
> +#define ADRP_PAGE_MASK 0x1000
> +
>  static int do_bootm_barebox(struct image_data *data)
>  {
>         void (*fn)(unsigned long x0, unsigned long x1, unsigned long x2,
> @@ -55,7 +57,7 @@ static int do_bootm_barebox(struct image_data *data)
>         if (ret)
>                 goto out;
> 
> -       barebox = start;
> +       barebox = ALIGN(start, ADRP_PAGE_MASK);

I'd suggest using PAGE_ALIGN here.

While I agree that the barebox image must be page aligned to be
correctly started, I wonder how it can happen that the address returned
from memory_bank_first_find_space() is not page aligned. Normally this
should be the start address of your DRAM. How comes this address is not
aligned in your case?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


