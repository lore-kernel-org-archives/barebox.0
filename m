Delivery-date: Wed, 11 Jan 2023 09:00:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW1q-008dcA-BG
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:00:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW1n-0007k6-91
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:00:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+AL00nhA73jt74a0fzHtGyXoaawPMVEfjQAEPpS99gk=; b=dqQ718RAX6WBvpBjV6Ez46Itzu
	c2Pr1pX4yWRiPaE32g9kewNSwfl9aKWrCBj7mKGKaxDD4ZHtWA71SM8CLvpzdxcIxCawzel/VZKAy
	0FZKot0rYlEzkQRnVc5dpufSQ32AyEHS6/a2oyRTYf+dtAq6GiZFDRvETsCyi1V42tUVTW0EISxec
	pDD9Eak/OQib4qCSe+yuBzA1w3k8CzwzyhX9rsMLDMEKvRrq4r5dqB8KH+ggBHRv1IH20gixsQqzF
	G2t2rhpPt4gPXix5hjF8OCu2QG2SITcFMA/bJKDui6tsFKvN0dgzUyZtdHFPeGLR3vWwBf9wXDM/o
	HYh9hk6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW0I-00ACsd-LV; Wed, 11 Jan 2023 07:58:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW08-00ACqR-Nl
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 07:58:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFW07-0007Of-EZ; Wed, 11 Jan 2023 08:58:23 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFW07-0005gf-6l; Wed, 11 Jan 2023 08:58:23 +0100
Date: Wed, 11 Jan 2023 08:58:23 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230111075823.GD24755@pengutronix.de>
References: <20230111074957.897629-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230111074957.897629-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_235824_806911_0E49EF0F 
X-CRM114-Status: GOOD (  21.03  )
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
Subject: Re: [PATCH v2] include: linux/iopoll.h: silence warning when
 timeout_us contains *
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 11, 2023 at 08:49:57AM +0100, Ahmad Fatoum wrote:
> We evaluate timeout_us for truthiness to determine whether we are
> entering an infinite poll loop. When timeout_us contains a
> multiplication, GCC will warn about it and suggest replacing the *
> with &&. Silence this warning by comparing directly against 0.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - squash change adding parens around timeout_us macro arg
> ---
>  include/linux/iopoll.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
> index 8bf912e173b3..96b17dee48c9 100644
> --- a/include/linux/iopoll.h
> +++ b/include/linux/iopoll.h
> @@ -32,13 +32,13 @@
>  #define read_poll_timeout(op, val, cond, timeout_us, args...)	\
>  ({ \
>  	uint64_t start; \
> -	if (!IN_PBL && timeout_us) \
> +	if (!IN_PBL && (timeout_us) != 0) \
>  		start = get_time_ns(); \
>  	for (;;) { \
>  		(val) = op(args); \
>  		if (cond) \
>  			break; \
> -		if (!IN_PBL && timeout_us && \
> +		if (!IN_PBL && (timeout_us) != 0 && \
>  		    is_timeout(start, ((timeout_us) * USECOND))) { \
>  			(val) = op(args); \
>  			break; \
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


