Delivery-date: Thu, 04 Jan 2024 10:13:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLJn6-003L3h-0O
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 10:13:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLJn5-0001AW-1T
	for lore@pengutronix.de; Thu, 04 Jan 2024 10:13:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LTbv69GabTsStLmXCKE6jMdSXq5OhUrSOPbg7KNr8fY=; b=uCXUCALKWrDyJKFAPTGP99whNg
	AZpsYvnU5q6cq5vPOqoZ7Pj+pZL9MbBPwwH61OFYUm4bui/TGbRm8fXmczasK/NtNA5jeRxf9UvcE
	sUT+RO6TySyj0LKy57tPDtvFHwo16GXZ4rfOu8PG6vx//GHw46P+v8+XnzDPN5wZWkzN/DeeOIjXv
	BnTxMAnk6lSaRMf0+c7a5l2wXrIYL6Gvv5MLlV+hHQl3l1nyxXYheoDegWqt/AIvmEUskHef0K8Dr
	8a3nkkyFkoNQy8UP6bEhS5SOGwHhNshc+1cRI4zqv8z/Dmmzt3v8TB9IjLpsP7ycS4bCT4Go0RHRZ
	Be804WfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJm6-00DKeU-1n;
	Thu, 04 Jan 2024 09:12:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJm3-00DKdl-22
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 09:12:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLJm2-0000rp-Ac; Thu, 04 Jan 2024 10:12:22 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLJm1-000JPB-U3; Thu, 04 Jan 2024 10:12:21 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLJm1-00ABqc-Ro; Thu, 04 Jan 2024 10:12:21 +0100
Date: Thu, 4 Jan 2024 10:12:21 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240104091221.GN1318922@pengutronix.de>
References: <20240103101948.2630473-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240103101948.2630473-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_011223_668940_99EF38BB 
X-CRM114-Status: GOOD (  21.58  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] list: rename debugging hooks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 03, 2024 at 11:19:47AM +0100, Ahmad Fatoum wrote:
> Linux recently renamed the name of these helpers, so have barebox follow
> suit before implementing them out of line when optional list debugging
> is enabled.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/list.h | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/list.h b/include/linux/list.h
> index 1341806b59da..60b0111f467c 100644
> --- a/include/linux/list.h
> +++ b/include/linux/list.h
> @@ -37,18 +37,18 @@ static inline void INIT_LIST_HEAD(struct list_head *list)
>  }
>  
>  #ifdef CONFIG_DEBUG_LIST
> -extern bool __list_add_valid(struct list_head *new,
> -			      struct list_head *prev,
> -			      struct list_head *next);
> -extern bool __list_del_entry_valid(struct list_head *entry);
> +extern bool __list_add_valid_or_report(struct list_head *new,
> +				       struct list_head *prev,
> +				       struct list_head *next);
> +extern bool __list_del_entry_valid_or_report(struct list_head *entry);
>  #else
> -static inline bool __list_add_valid(struct list_head *new,
> -				struct list_head *prev,
> -				struct list_head *next)
> +static inline bool __list_add_valid_or_report(struct list_head *new,
> +					      struct list_head *prev,
> +					      struct list_head *next)
>  {
>  	return true;
>  }
> -static inline bool __list_del_entry_valid(struct list_head *entry)
> +static inline bool __list_del_entry_valid_or_report(struct list_head *entry)
>  {
>  	return true;
>  }
> @@ -64,7 +64,7 @@ static inline void __list_add(struct list_head *new,
>  			      struct list_head *prev,
>  			      struct list_head *next)
>  {
> -	if (!__list_add_valid(new, prev, next))
> +	if (!__list_add_valid_or_report(new, prev, next))
>  		return;
>  
>  	next->prev = new;
> @@ -129,7 +129,7 @@ static inline void __list_del_clearprev(struct list_head *entry)
>  
>  static inline void __list_del_entry(struct list_head *entry)
>  {
> -	if (!__list_del_entry_valid(entry))
> +	if (!__list_del_entry_valid_or_report(entry))
>  		return;
>  
>  	__list_del(entry->prev, entry->next);
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


