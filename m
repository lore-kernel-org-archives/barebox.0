Delivery-date: Thu, 21 Sep 2023 15:11:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjJSX-005tof-5L
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 15:11:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjJST-0005sn-SS
	for lore@pengutronix.de; Thu, 21 Sep 2023 15:11:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9kzVhQihBNtSa+30kI2Yh6Ionf8OTvhJ0lUkIEKn2PA=; b=s67vHWbq8FHh+zeS4BJ9m3xZKJ
	0Fdw86KaEDqBMuwI7fobeAA3aLNlY64jWHwBg/x2xRVOJLKBaJkBQvNSpSU50D8uXkH+TCoYWntmD
	CpNZnLdz5dHQQn9soF8pOnmE1AKzLqlqMozQw4QkEF+sqe57Lws/l0QyRXQ00FnrJytox7VLEWLxH
	kK4LfnJygbdzZJKWDijQIdp2wRT63kfZHdMY/fqcfTT9gJaHJotfm0SAuhYH/EBTzQOYtxs3fQhvG
	1pm6S43fc4ZMnRWj9H+W23ReTw9GPfXTj/E0OalOfFY5yW3nMEvIyjUtT97CWCyUG8F6E8rvHjDgg
	BM6GyZ0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjJRJ-0066IE-34;
	Thu, 21 Sep 2023 13:09:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjJRI-0066I0-2D
	for barebox@bombadil.infradead.org;
	Thu, 21 Sep 2023 13:09:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=9kzVhQihBNtSa+30kI2Yh6Ionf8OTvhJ0lUkIEKn2PA=; b=UkePviR++3cQGtptiOGio623H8
	ntPsALKUa8N8JRCAmQQLzfhoJgscALmzk9R9XTiXDelmtAi7McykKCiq+ZpYk9eadLb6tx9XUS04l
	s6jK01Yt+e6i+fol26RxP/EFOYSzfqZ9+eSBH6zWzXvMtF3jnJmkoEAfpOfQ+//lbdj/un3o4z2aK
	M+ACG/R8IHg4xgexAZ1S5NUlzCG/w6ER4gTTDx1zXo/XLQJcf/YF56eshpV9oShvmasQ4/NA2WZNx
	xHk/fY3SNRYFv6u+MvvV1Y2b5Xq+JT/d2vtzeH5Q0PbzGopHWpeLh4yy/PlwGqD516KUbcEZSWDvv
	jdHVg4kg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjJRD-00FO29-3D
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 13:09:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjJRF-0005NZ-1y; Thu, 21 Sep 2023 15:09:49 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjJRE-007wGS-Lb; Thu, 21 Sep 2023 15:09:48 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjJRE-00Amsz-JK; Thu, 21 Sep 2023 15:09:48 +0200
Date: Thu, 21 Sep 2023 15:09:48 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230921130948.GS637806@pengutronix.de>
References: <20230921102446.1109545-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921102446.1109545-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_140949_715016_D0E20A09 
X-CRM114-Status: GOOD (  18.76  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] digest: add digest_algo helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 21, 2023 at 12:24:46PM +0200, Ahmad Fatoum wrote:
> Code handling different digest types may want easy access to the digest
> algorithm currently in use. Add a simple inline helper for this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/digest.h | 5 +++++
>  1 file changed, 5 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/include/digest.h b/include/digest.h
> index b984d57d778e..2816ddffaed2 100644
> --- a/include/digest.h
> +++ b/include/digest.h
> @@ -161,6 +161,11 @@ static inline const char *digest_name(struct digest *d)
>  	return d->algo->base.name;
>  }
>  
> +static inline enum hash_algo digest_algo(struct digest *d)
> +{
> +	return d->algo->base.algo;
> +}
> +
>  static inline void* digest_ctx(struct digest *d)
>  {
>  	return d->ctx;
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


