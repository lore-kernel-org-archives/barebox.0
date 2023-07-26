Delivery-date: Wed, 26 Jul 2023 11:00:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOaNi-00AYX4-MR
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 11:00:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOaNg-0007Bq-8R
	for lore@pengutronix.de; Wed, 26 Jul 2023 11:00:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uR/4Nk273d4DphZEE8m6pblGV+WXfaSu5VT89boSBUc=; b=uh/QYaSArLQpGmbAGCxDQjd2zR
	O+4JRHwB0gS4nIvyUhbb/F7HqHSCeVR/bu1A7oPnGVBIQuLO3CKcz3kwAkdiRtydUc6yYT4kD/BgF
	um9DlZ3hBQ0C0EO+B7I0y5KBBFNGDdALuR63zie8rv29XrAnCDwcbaYhFWdY6+dz+BIYvn7XnDgsT
	Fa6Pq9gupgNiPXJh/Vk1nUsra4ztSroHb5MZePVjUTbmP0ZXdbiPoOqmpxytl8Lk4A8m2r91jP9cQ
	vcxCumGXmvCzUgYvTAwoBOr2PkjDLdmDJsxQGCxJ6d6YRLheeVR/QXodSK7eKtHGsAboofBofL0ua
	7HQmLraA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOaML-009eOH-0o;
	Wed, 26 Jul 2023 08:59:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOaMH-009eMD-17
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 08:59:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOaMB-0006s0-NJ; Wed, 26 Jul 2023 10:58:55 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOaMB-00039i-GR; Wed, 26 Jul 2023 10:58:55 +0200
Date: Wed, 26 Jul 2023 10:58:55 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230726085855.GE18491@pengutronix.de>
References: <20230725203438.1056307-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230725203438.1056307-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_015901_388766_5F3DD51A 
X-CRM114-Status: GOOD (  19.37  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] drivers: hab: work-around GCC -Wmaybe-uninitialized
 false-positive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jul 25, 2023 at 10:34:38PM +0200, Ahmad Fatoum wrote:
> imx_hab_read_srk_hash() always initializes the buffer that's passed in
> fully. Yet, gcc-13.1.1 warns that this is not always the case, but
> inlining imx_hab_read_srk_hash() makes the false-positive warning disappear.
> Pacify GCC by just zero-initializing the 256-bit srk buffer.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/hab/hab.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
> index 5bb97c4b689b..fad367f43dfb 100644
> --- a/drivers/hab/hab.c
> +++ b/drivers/hab/hab.c
> @@ -318,7 +318,7 @@ int imx_hab_write_srk_hash_hex(const char *srkhash, unsigned flags)
>  int imx_hab_lockdown_device(unsigned flags)
>  {
>  	struct imx_hab_ops *ops = imx_get_hab_ops();
> -	u8 srk[SRK_HASH_SIZE];
> +	u8 srk[SRK_HASH_SIZE] = {};
>  	int ret;
>  
>  	ret = imx_hab_read_srk_hash(srk);
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


