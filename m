Delivery-date: Thu, 21 Sep 2023 14:58:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjJGd-005t0u-8c
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 14:58:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjJGb-0001uf-2W
	for lore@pengutronix.de; Thu, 21 Sep 2023 14:58:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EXFwVKo8Xg6wM0IDMGt03c4FeBxIitZ5jbCP+ByeOXQ=; b=jgh0kcR/pWnd7sNo88AZZiE/zz
	gqaC74JW3VJhFFhgcCzyHwf3BB5Akga6jKH2ZKLZlFeYIZ3M/EAP0G3/uNl2CY1HI8Ht6HB/MPas/
	/6teEFbN1R8qFBA/unOaFOA5nnnkrQxs3P7402nBPxx6yQGcMKq2wOPWGTklgdPBeU8RkzYFTzbyk
	4JEhmAvI8Lv5HHBfNlGtMaaUNLigx60gYWqfH7elZluzQJUHsAx98u74W8+IxZE8NPBHh+k2FAsr6
	HvpINYwWYHPpOqVQzModjtouyTTiS9s7nB+eEmyBPzxM0dKLpK/QWpdVG/fAwfXAL/PGosKYVlXre
	h73S3Pkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjJFM-0064bD-1c;
	Thu, 21 Sep 2023 12:57:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjJFL-0064aw-0A
	for barebox@bombadil.infradead.org;
	Thu, 21 Sep 2023 12:57:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=EXFwVKo8Xg6wM0IDMGt03c4FeBxIitZ5jbCP+ByeOXQ=; b=jycRTg86YjzxMAuiOi5pNya+TQ
	mramuSw4NeZkZHCgbHU27sVDECIbgtBbhSWrB4Yhuk8hKYWEfhsul7jzkBU5YnIFN3038zLBKX7Fc
	ZUG/UaPmgU8Ji2ddEihDOsngRBuYEOx1JhSwAehAT+KuYAQ7rR8YoLRjzB1mjUsnkdRuqGOZjH2dI
	EGkyx0YBt43Mv9sV9lnmzIRlaGNDCzdPzmpd/JEiApqB62iPjdOSE+ofMY0hQYDiRo5OkqEVD+4Yb
	3pQI3pCgdqpnFYIJmVWh3CaQ9UiTskZ+jtVXQGOSIzk46r+NPLu2Jij/6RnYC5p9WAnF7XAip0MJ0
	ltOLfBsg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjJFF-00FNqf-1b
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 12:57:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjJFC-0001U4-Gs; Thu, 21 Sep 2023 14:57:22 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjJFC-007vmL-4E; Thu, 21 Sep 2023 14:57:22 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjJFC-00AlQO-1R; Thu, 21 Sep 2023 14:57:22 +0200
Date: Thu, 21 Sep 2023 14:57:22 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230921125722.GP637806@pengutronix.de>
References: <20230920123720.767063-1-r.czerwinski@pengutronix.de>
 <20230920123720.767063-2-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920123720.767063-2-r.czerwinski@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_135727_076040_41A14A0A 
X-CRM114-Status: GOOD (  25.25  )
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
Subject: Re: [PATCH 2/3] blspec: add new blspec.compatible.extra variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 20, 2023 at 02:37:19PM +0200, Rouven Czerwinski wrote:
> The blspec.compatible.extra variable will be used to specify extra
> compatibles that are also used to match during bootloader specification
> entry parsing. This means that even if your internal barebox device tree
> machine compatible is "vendor,bareboxcompatible", but your bootloader
> specification device tree contains "vendor,linuxcompatible", it is
> possible to boot this entry by setting blspec.compatible.extra to
> "vendor,linuxcompatible".
> 
> More than one compatible is possible as well, the compatibles will need
> to be space separated (since "," is already used for the vendor hardware
> distinction).
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  common/blspec.c | 56 +++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 
> diff --git a/common/blspec.c b/common/blspec.c
> index f8d47f20d2..e361a02333 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -19,10 +19,20 @@
>  #include <net.h>
>  #include <fs.h>
>  #include <of.h>
> +#include <magicvar.h>
> +#include <linux/list.h>
>  #include <linux/stat.h>
>  #include <linux/err.h>
>  #include <mtd/ubi-user.h>
>  
> +struct list_head *blspec_extra_list;

Replace with:

static LIST_HEAD(blspec_extra_list)

and fix the fallout.

> +char *blspec_extra_string;

Should also be static.

> +
> +struct blspec_extra_entry {
> +	char *compatible;
> +	struct list_head list;
> +};
> +
>  /*
>   * blspec_entry_var_set - set a variable to a value
>   */
> @@ -830,8 +840,54 @@ static int blspec_bootentry_provider(struct bootentries *bootentries,
>  	return found;
>  }
>  
> +static int blspec_extra_set(struct param_d *p, void *priv)
> +{

Generally it seems unnecessary to use the setter to create a list from
these entries.

Instead you could just parse blspec_extra_string directly when you need it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


