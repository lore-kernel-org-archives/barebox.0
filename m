Delivery-date: Tue, 04 Oct 2022 10:56:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofdie-005Myk-IT
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 10:56:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofdid-0007Mc-Kq
	for lore@pengutronix.de; Tue, 04 Oct 2022 10:56:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V0sWtSFLoQZnBSznXmiRW4fD6DTHmmrp30K1uAnoEzA=; b=se8LS7hFHpZ2S3MbKHzlAVnaYn
	BFZHIvlIG1rsrIJcVWedIrzpPRN4xDdC5upP7z/dhk9b2GXNa1HfB6cI7YHz2AgM8zTkkDddcWBaY
	YWwhKeWPwjJBsMCulU20kQLPYTWaFbfYAZlAtoGjKUs4ykspKTPSbp6RCbdonOBfpi0N/wnrTETsm
	opkHa+dPcQwqyqgcQXzsU4g4vNohZXQiW74Q/Oaiwcb95qmc1+L0Um1Ovkqrr59K3KrKYSfbjjWkq
	XUtwsBP3+yeePLDaJEJK2vE0YUx3z+Ze+NBkhbJSDZ97zhM6/sTe1Zpqzylf4LNZmrzANhW0JOq4z
	KyjsmXVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofdh4-0092TF-32; Tue, 04 Oct 2022 08:54:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofdgt-0092Rj-JE
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 08:54:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofdgs-0006xQ-CQ; Tue, 04 Oct 2022 10:54:14 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofdgs-0002Ww-5r; Tue, 04 Oct 2022 10:54:14 +0200
Date: Tue, 4 Oct 2022 10:54:14 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221004085414.GK986@pengutronix.de>
References: <20220930153819.744833-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220930153819.744833-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_015417_523137_A629B651 
X-CRM114-Status: GOOD (  17.54  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] include: define SSIZE_MAX in <linux/limits.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Sep 30, 2022 at 05:38:19PM +0200, Ahmad Fatoum wrote:
> For symmetry with SIZE_MAX, which we already define, define SIZE_MAX as
> well. Definition taken from Linux.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/limits.h | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/limits.h b/include/linux/limits.h
> index e1aa2de84519..eab3848bbf7a 100644
> --- a/include/linux/limits.h
> +++ b/include/linux/limits.h
> @@ -19,6 +19,7 @@
>  #define SIZE_MAX	(~(size_t)0)
>  #define PHYS_ADDR_MAX	(~(phys_addr_t)0)
>  #define UINTPTR_MAX	ULONG_MAX
> +#define SSIZE_MAX	((ssize_t)(SIZE_MAX >> 1))
>  
>  #define U8_MAX		((u8)~0U)
>  #define S8_MAX		((s8)(U8_MAX >> 1))
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


