Delivery-date: Wed, 08 May 2024 14:44:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4geP-0030JJ-1H
	for lore@lore.pengutronix.de;
	Wed, 08 May 2024 14:44:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4geO-0006BM-QC
	for lore@pengutronix.de; Wed, 08 May 2024 14:44:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vGUnP5YZTCGQKvIJbAJKd2PfW5Lv89i5W1TGkCAQQEg=; b=v/AvDLj7MvIaYvzFIbFA/yu/ru
	WzYA8d7sWGD+cLR2t3lQXcS84tvTljKZylWAXk3Z2fv2RJF4YOT4Y9SMRstR+uEcDGhZ55wBw1hiK
	K6M94ypMZN5WSAw6TfiStj+5sj4qSSokgUZgvY+ne6J+r6Kr6ySeGEyCu/Q3G1KL7owvYqG8VdxtV
	kYAfKpwuqaENxGOaN4xsOmBHlVdxQGhFIQIqnO6Hj1RFNEM0h4d9UJ66uOnyduE+L1W03Sv5fdRoW
	ZV2YgRCQTEeGinqNTS63JwcFKe+jWZj9T5YawWTHHE4QNLPXa0tDkuuO2HXBE5uRpUqJ/zzY1Hjaq
	y7Rnr5pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4gdz-0000000FUAW-3dAU;
	Wed, 08 May 2024 12:43:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4gdj-0000000FU4l-3s6o
	for barebox@lists.infradead.org;
	Wed, 08 May 2024 12:43:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1s4gdh-0005tq-A0; Wed, 08 May 2024 14:43:17 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1s4gdg-000HFV-Tp; Wed, 08 May 2024 14:43:16 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1s4gdg-000cVe-2h;
	Wed, 08 May 2024 14:43:16 +0200
Date: Wed, 8 May 2024 14:43:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZjtzZOYtvbShaTDx@pengutronix.de>
References: <20240508111836.307806-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240508111836.307806-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_054319_991730_8A9226F2 
X-CRM114-Status: GOOD (  22.20  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] pstore: move slash handling into common function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, May 08, 2024 at 01:18:35PM +0200, Ahmad Fatoum wrote:
> Both open and stat receive a file path and manually skip over the slash
> before calling pstore_get_by_name. Follow-up commit adds one more user
> of pstore_get_by_name, so instead of duplicating the flash skip a third
> time, move it into pstore_get_by_name.

s/flash/slash while applying.

Sascha

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/pstore/fs.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
> index 238a316e9157..f2ffc0ac6251 100644
> --- a/fs/pstore/fs.c
> +++ b/fs/pstore/fs.c
> @@ -130,6 +130,9 @@ static struct pstore_private *pstore_get_by_name(struct list_head *head,
>  	if (!name)
>  		return NULL;
>  
> +	if (name[0] == '/')
> +		name++;
> +
>  	list_for_each_entry(d, head, list) {
>  		if (strcmp(d->name, name) == 0)
>  			return d;
> @@ -143,9 +146,6 @@ static int pstore_open(struct device *dev, FILE *file, const char *filename)
>  	struct list_head *head = dev->priv;
>  	struct pstore_private *d;
>  
> -	if (filename[0] == '/')
> -		filename++;
> -
>  	d = pstore_get_by_name(head, filename);
>  	if (!d)
>  		return -ENOENT;
> @@ -221,9 +221,6 @@ static int pstore_stat(struct device *dev, const char *filename,
>  {
>  	struct pstore_private *d;
>  
> -	if (filename[0] == '/')
> -		filename++;
> -
>  	d = pstore_get_by_name(&allpstore, filename);
>  	if (!d)
>  		return -ENOENT;
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


