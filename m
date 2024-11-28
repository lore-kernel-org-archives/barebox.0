Delivery-date: Thu, 28 Nov 2024 10:48:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGb89-001P31-10
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 10:48:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGb89-0001JH-7f
	for lore@pengutronix.de; Thu, 28 Nov 2024 10:48:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8tQcsfYDLRAoPcKjUFGOewR1gb8vwegqFf8ycCmQBvg=; b=cQvPef9hkpR2nAqp7ljBSMKMM/
	ahc8fmJjMvfjGSS0MaqufAZIajGuTyoejUGCrq37vRiag5TdJ+zIydiAiwZ/AtuSVl2JhyitvXG5o
	L4Ahgy+nNTkV+FIREHXBbE2HlRPm3sfqBMMbU/L4Qdwg92u2GNAz40LTNGIjM1VOTIt77MKrEBUlT
	4+gzaXFZlO6tgZpBns6eGQUSqDvDhXtuB2F5usXVHdaMJ9E5ZkgQkGnG6rnbd4S4/4EoOeaecYq3X
	65+SWXgiyP1TFy8jjN8UpTzltYpZOd1u2O2K8xZ07Pn1MtMNUTRDhL4SRkT6rGs90jvM+8IutOdqG
	RIzPU3ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGb7l-0000000FBCS-0N44;
	Thu, 28 Nov 2024 09:47:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGb7j-0000000FBC3-1kCP
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 09:47:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tGb7i-000194-0K; Thu, 28 Nov 2024 10:47:46 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tGb7h-000age-08;
	Thu, 28 Nov 2024 10:47:45 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tGb7h-002rQG-2L;
	Thu, 28 Nov 2024 10:47:45 +0100
Date: Thu, 28 Nov 2024 10:47:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z0g8QW03e57kDB8U@pengutronix.de>
References: <20241125151228.341441-1-a.fatoum@pengutronix.de>
 <20241125151228.341441-7-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241125151228.341441-7-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_014747_451496_170E9A24 
X-CRM114-Status: GOOD (  22.14  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 06/16] bootsource: stub out when in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 25, 2024 at 04:12:18PM +0100, Ahmad Fatoum wrote:
> To optimize out calls to undefined functions in PBL at compile-time
> instead of link time, let's use IS_PROPER instead of IS_ENABELED(),

The last part of the sentence doesn't match this patch anymore.

Sascha

> so the remainder of the code is skipped in PBL build instead of relying
> on linker garbage collection.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/bootsource.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/bootsource.c b/common/bootsource.c
> index 6808c9c51d88..d82bb5f18c52 100644
> --- a/common/bootsource.c
> +++ b/common/bootsource.c
> @@ -158,7 +158,7 @@ int bootsource_of_alias_xlate(enum bootsource src, int instance)
>  	struct device_node *np;
>  	int alias_id;
>  
> -	if (!IS_ENABLED(CONFIG_OFDEVICE))
> +	if (!IS_ENABLED(CONFIG_OFDEVICE) || IN_PBL)
>  		return BOOTSOURCE_INSTANCE_UNKNOWN;
>  
>  	if (src == BOOTSOURCE_UNKNOWN ||
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


