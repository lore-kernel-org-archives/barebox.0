Delivery-date: Mon, 08 Aug 2022 15:15:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2b9-00GD1O-Fm
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 15:15:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2b9-0000q3-Ro
	for lore@pengutronix.de; Mon, 08 Aug 2022 15:15:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s9HIGr9m0ZnnxzOazYpHr4VcaTbsMS9DdjQxnXwtcGw=; b=vksXtc3ApC+DkZAgWtAfntNMXS
	lheCpw5GB+Bz5MOOGb7ZfZVtul7puFgJwAUbhrp55J2hXP9u7qecFEcMvQSHoNoav2Xtq9xVedb9y
	XM8NJsutrFv6VKjHbOoxfCWaAEfYEgLfwuAE+0z7ZbSpkypnZcSDoyBcdgTkXvXYA6nITyOkiTUOU
	Gf39PZ00DqPMgLw7EjmLmjElPYckRttWw+noLtSzZ7qqYHxM0Li2DkjY0rQb0N8/AA1HDAKvbZ9kG
	MXCi433JtNH8M8iOIejrHQMcRCX3MI64YibmJfOV1bDXbqhZYKoiaIwTGxSyh38DgkOpH9WR7Sjjr
	KKo7t82Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2Zt-00E0FR-QM; Mon, 08 Aug 2022 13:13:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2Zl-00E0CL-0S
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 13:13:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2Zj-0000gx-MN; Mon, 08 Aug 2022 15:13:43 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2Zj-0003Ie-DI; Mon, 08 Aug 2022 15:13:43 +0200
Date: Mon, 8 Aug 2022 15:13:43 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220808131343.GO31528@pengutronix.de>
References: <20220730094615.1762042-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220730094615.1762042-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_061345_104333_ABAA4386 
X-CRM114-Status: GOOD (  24.78  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 1/2] file_list: factor out file_list_new
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Jul 30, 2022 at 11:46:14AM +0200, Ahmad Fatoum wrote:
> We have the sequence for creating a new file_list at two places and
> follow-up commit will add a third one outside of the file, so it's a
> good occasion to use a common helper. No functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/file-list.c  | 19 +++++++++++++------
>  include/file-list.h |  1 +
>  2 files changed, 14 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/file-list.c b/common/file-list.c
> index 407b31283373..11db7c6e44c7 100644
> --- a/common/file-list.c
> +++ b/common/file-list.c
> @@ -130,16 +130,25 @@ static const char *flags_to_str(int flags)
>  	return str;
>  }
>  
> -struct file_list *file_list_parse(const char *str)
> +struct file_list *file_list_new(void)
>  {
>  	struct file_list *files;
> -	int ret;
> -	const char *endptr;
>  
>  	files = xzalloc(sizeof(*files));
>  
>  	INIT_LIST_HEAD(&files->list);
>  
> +	return files;
> +}
> +
> +struct file_list *file_list_parse(const char *str)
> +{
> +	struct file_list *files;
> +	int ret;
> +	const char *endptr;
> +
> +	files = file_list_new();
> +
>  	while (*str) {
>  		ret = file_list_parse_one(files, str, &endptr);
>  		if (ret) {
> @@ -195,9 +204,7 @@ struct file_list *file_list_dup(struct file_list *old)
>  	struct file_list_entry *old_entry;
>  	struct file_list *new;
>  
> -	new = xzalloc(sizeof(*new));
> -
> -	INIT_LIST_HEAD(&new->list);
> +	new = file_list_new();
>  
>  	list_for_each_entry(old_entry, &old->list, list) {
>  		(void)file_list_add_entry(new, old_entry->name, old_entry->filename,
> diff --git a/include/file-list.h b/include/file-list.h
> index 5090313739b8..af0dd7bbf108 100644
> --- a/include/file-list.h
> +++ b/include/file-list.h
> @@ -29,6 +29,7 @@ void file_list_free(struct file_list *);
>  int file_list_add_entry(struct file_list *files, const char *name, const char *filename,
>  			unsigned long flags);
>  
> +struct file_list *file_list_new(void);
>  struct file_list *file_list_dup(struct file_list *old);
>  
>  int file_list_detect_all(const struct file_list *files);
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


