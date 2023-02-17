Delivery-date: Fri, 17 Feb 2023 10:04:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSwfR-00A0Kp-Ql
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 10:04:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSwfQ-0002P4-S5
	for lore@pengutronix.de; Fri, 17 Feb 2023 10:04:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=46CY+uaiYO1U0sLC9pKcnX2MJ1+ojsp+PfKg0ygpXZc=; b=Tmy9M/vKqfxhKSxeg6AxUn2PSV
	rBE6SlFt+A/oK69qE4mH6d3PZn/DDH3DsJ8xpA7Ch19S7lZiR+cacvaKx+dheeTXC9U6nP1t4LBcJ
	QTpS8zdi942fiaAaQgf+RdPcFeGETxd+4ySQfkEmr75gE6dWRvLFbKk4EoZqvYLJc4SZ+oSK2w2Mo
	R+RV/MFc34Q3ZpnGMYj+AySKmskuFpYcQjtYOnDkytukCHJO75bOWp9OU/b34Ihb4yRYyCo3O6pte
	dUukP9Xz8jipJx5hAODokQpmV9M6+1i8Q3/F7B//hNbt4+gajOTyvqZx87wkY423ME/0vD/CAfd8C
	H5Tj41Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSweW-00DPA4-OR; Fri, 17 Feb 2023 09:03:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSweQ-00DP7w-8Y
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 09:03:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pSweN-00027P-D6; Fri, 17 Feb 2023 10:03:27 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pSweN-0008Fv-63; Fri, 17 Feb 2023 10:03:27 +0100
Date: Fri, 17 Feb 2023 10:03:27 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Message-ID: <20230217090327.mxaqfuibw3hdibbq@pengutronix.de>
References: <20230217070810.3353123-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230217070810.3353123-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_010330_319396_D4CF9EE2 
X-CRM114-Status: GOOD (  14.08  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] kwboot: add missing header to fix musl build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-02-17, Ahmad Fatoum wrote:
> Building kwboot for musl instead of glibc results in a couple of errors:
> 
>   error: unknown type name 'fd_set'
>   error: storage size of 'tv' isn't known
>     142 |         struct timeval tv;
>   warning: implicit declaration of function 'FD_ZERO'
>   warning: implicit declaration of function 'FD_SET'
>   warning: implicit declaration of function 'select'
>   warning: implicit declaration of function 'FD_ISSET'
> 
> POSIX specifies[1] that all these symbols shall be defined by <sys/select.h>,
> so include this missing header.
> 
> [1]: https://pubs.opengroup.org/onlinepubs/009695399/basedefs/sys/select.h.html
> 
> Reported-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Link: https://lore.kernel.org/openembedded-core/Y91ObtiQCtnpGaRH@mail.local/
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  scripts/kwboot.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/scripts/kwboot.c b/scripts/kwboot.c
> index 1cbb456935f2..2a4f6bc5fc58 100644
> --- a/scripts/kwboot.c
> +++ b/scripts/kwboot.c
> @@ -22,6 +22,7 @@
>  #include <termios.h>
>  #include <sys/mman.h>
>  #include <sys/stat.h>
> +#include <sys/select.h>
>  
>  /*
>   * Marvell BootROM UART Sensing
> -- 
> 2.30.2
> 
> 
> 


