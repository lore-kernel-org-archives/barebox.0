Delivery-date: Tue, 18 Oct 2022 10:54:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okiN8-00CSzT-FC
	for lore@lore.pengutronix.de; Tue, 18 Oct 2022 10:54:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okiN6-0003SO-44
	for lore@pengutronix.de; Tue, 18 Oct 2022 10:54:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JX6SocT4ApaLyq5E0RFsUA9R1wYuP5gycJZukZBDRS4=; b=dFJPzzp4hz8FXZuvcBZDNW/1fV
	z21fVcetWyEoagFZ1vJXVCOXjUT20QHuzKLjZIUgSXwstLb7q2Xq473L+UUolJrZCbvhoOlS/MbSA
	j9hi/w0arwRSfZax3yMfR+iXU6P7N2rIenAUnUJQAJplYJwNdOqefF7iTVvWttEstZ6MmQ7e+Cb0W
	UQiT//c+EyO8476FolLyLc5mV9+nc2jATehTHRlLQpvw94V2BHSPUVKwoXqIe2dwWMGPJjyA3ICwf
	trnlSNxvMvJNR1VhmIiBb8rqHL6NhNXEKC2RWANEGB/nJA2BTmf1Ntfp+FB/f7xb5h+gmSdhAqCNd
	AmhbiZaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okiLN-004VTM-Sk; Tue, 18 Oct 2022 08:53:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okiLJ-004VOJ-R3
	for barebox@lists.infradead.org; Tue, 18 Oct 2022 08:52:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1okiLG-00035s-Fm; Tue, 18 Oct 2022 10:52:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1okiLG-0005ux-3S; Tue, 18 Oct 2022 10:52:54 +0200
Date: Tue, 18 Oct 2022 10:52:54 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Ian Abbott <abbotti@mev.co.uk>
Message-ID: <20221018085254.GM6702@pengutronix.de>
References: <20221017133859.299705-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221017133859.299705-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_015257_888602_B0617E53 
X-CRM114-Status: GOOD (  21.10  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] resource: fix recently broken memory bank fusing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 17, 2022 at 03:39:00PM +0200, Ahmad Fatoum wrote:
> barebox will fuse overlapping memory banks to avoid the common issue of
> the device tree being modified upstream to contain a minimum RAM size
> that would then conflict with a RAM size barebox determines by
> querying the memory controller. This was recently broken, because we
> changed memory banks to have IORESOURCE_MEM in their flags field,
> but resource_contains() used to compare regions won't return true if
> memory type differs. Fix this by settings .flags = IORESOURCE_MEM
> for the new resource as well.
> 
> Reported-by: Ian Abbott <abbotti@mev.co.uk>
> Fixes: d0b5f6bde15b ("of: reserved-mem: reserve regions prior to mmu_initcall()")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/memory.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/common/memory.c b/common/memory.c
> index 7e24ecb2bd03..0ae9e7383cce 100644
> --- a/common/memory.c
> +++ b/common/memory.c
> @@ -149,6 +149,7 @@ int barebox_add_memory_bank(const char *name, resource_size_t start,
>  	struct resource newres = {
>  		.start = start,
>  		.end = start + size - 1,
> +		.flags = IORESOURCE_MEM,
>  	};
>  
>  	for_each_memory_bank(bank) {
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


