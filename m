Delivery-date: Tue, 22 Aug 2023 16:29:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYSO9-004swA-C9
	for lore@lore.pengutronix.de; Tue, 22 Aug 2023 16:29:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYSO7-0004oc-7O
	for lore@pengutronix.de; Tue, 22 Aug 2023 16:29:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DjJRpc6Vg/Udqj0KCd3bQyPFL1lvZrcIjwlSwfR7030=; b=lv1PJYUcNpoxUvbjgPm9OWW6Nx
	X9PMm4UHrjY0FRQx1qVg4yOqmqmUj+AkpEWrFViu7SXCmfUuB9G9pe2xxlyTROXuW8e+LOrqb1cDT
	UyWh9+Z5wdoaJjk0ZWhobFrS4qqAJxkCROjdqEWAL1QUK4bW1yV5zpUG08Z5TedU8TT3wn12Iw+uc
	WbOgXdl7bFo9Aicu0YLS2RaqNRFunc2bZ+IR0Je9ZKcPAJbvdR+bT4WgImXs9UE1eYyTgeKADvEfp
	bOLOdVJRYZ9f16Z2pghSzrayG4FNNG2H8ZBPJBvWGetfInx5MpKMGxOPM/2MzeRXmbQBhN1yEBYsU
	IiDwA9uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYSMi-00GCtT-0t;
	Tue, 22 Aug 2023 14:28:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYSMf-00GCsn-13
	for barebox@lists.infradead.org;
	Tue, 22 Aug 2023 14:28:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qYSMZ-0004Yx-MX; Tue, 22 Aug 2023 16:28:07 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qYSMZ-0004LA-F9; Tue, 22 Aug 2023 16:28:07 +0200
Date: Tue, 22 Aug 2023 16:28:07 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230822142807.GA16522@pengutronix.de>
References: <20230822074738.3905283-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230822074738.3905283-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_072813_401997_B6D5B6A7 
X-CRM114-Status: GOOD (  19.98  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] param: drop priv from dev_add_param_string_ro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 22, 2023 at 09:47:36AM +0200, Ahmad Fatoum wrote:
> dev_add_param_string_ro() is used nowhere, but when we do, having an
> unused priv parameter serves no purpose, so drop it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/param.h | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/include/param.h b/include/param.h
> index 76a077fd758a..5d4f7f3db52f 100644
> --- a/include/param.h
> +++ b/include/param.h
> @@ -334,8 +334,7 @@ static inline struct param_d *dev_add_param_bool_ro(struct device *dev,
>  
>  static inline struct param_d *dev_add_param_string_ro(struct device *dev,
>  						      const char *name,
> -						      char **value,
> -						      void *priv)
> +						      char **value)
>  {
>  	return dev_add_param_string(dev, name, param_set_readonly, NULL, value, NULL);
>  }

Wouldn't it be better to pass *priv on to dev_add_param_string() instead
of removing it?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


