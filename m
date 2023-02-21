Delivery-date: Tue, 21 Feb 2023 08:53:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNSh-00DdVQ-PI
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 08:53:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNSg-0004cb-FZ
	for lore@pengutronix.de; Tue, 21 Feb 2023 08:53:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dNcK85NT3XbxMaWrO0Da6/qF3UYuVEx3oghEZGpfTQg=; b=Vjpi7pvRaPtZMInhGLI6UbcwBW
	911SwLPKvdCd3groO9EOZ1NOM7o4ZCiM/pnAf/JIAi3SUEdxrtKaLJEAO8erc2WSNS2dm99W2CJeM
	mxy0mE7jVwp2A5j2tP/ssi0podwpP6doVa0g/L7OElF2xXSrhW1NVuq8sIGvsNOD75P+FO6u1sfuj
	NRxu0S5cyRYlThM1u0LyXPr1dC43jd868+utjD5INHplnma1kf0JRt32XnKKkwdHdZMuEP5Ot2Bwp
	VuJ+enV1cQv9453Bm0hqhoGJQgDL1jrKeL7LWIaQUF6WWBYuopLN4xic/QOILY7lHJ4q+FToaZ2MP
	EaKrQNyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNRs-006x4R-KQ; Tue, 21 Feb 2023 07:52:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNRo-006x3Z-2U
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 07:52:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUNRm-0004Xk-Gi; Tue, 21 Feb 2023 08:52:22 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUNRm-0008SM-99; Tue, 21 Feb 2023 08:52:22 +0100
Date: Tue, 21 Feb 2023 08:52:22 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230221075222.GX10447@pengutronix.de>
References: <20230221070735.1130600-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230221070735.1130600-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_235224_133805_45B1430D 
X-CRM114-Status: GOOD (  29.68  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/2] of: split part of of_get_stdoutpath into
 of_find_node_by_chosen
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Feb 21, 2023 at 08:07:34AM +0100, Ahmad Fatoum wrote:
> Follow-up commit will also lookup the value of a chosen property by full
> path or alias, so factor this out into a helper function.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/of/base.c | 52 +++++++++++++++++++++++++++++++++--------------
>  include/of.h      |  8 ++++++++
>  2 files changed, 45 insertions(+), 15 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 937847f44ab7..da621ad5d1a9 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2667,30 +2667,52 @@ void of_delete_node(struct device_node *node)
>  	free(node);
>  }
>  
> -struct device_node *of_get_stdoutpath(unsigned int *baudrate)
> +/*
> + * of_find_node_by_chosen - Find a node given a chosen property pointing at it
> + * @propname:   the name of the property containing a path or alias
> + *              The function will lookup the first string in the property
> + *              value up to the first : character or till \0.
> + * @options     The Remainder (without : or \0 at the end) will be written
> + *              to *options if not NULL.
> + */
> +struct device_node *of_find_node_by_chosen(const char *propname,
> +					   const char **options)
>  {
> +	const char *value, *p;
> +	char *buf = NULL;
>  	struct device_node *dn;
> -	const char *name;
> -	const char *p;
> -	char *q;
>  
> -	name = of_get_property(of_chosen, "stdout-path", NULL);
> -	if (!name)
> -		name = of_get_property(of_chosen, "linux,stdout-path", NULL);
> +	value = of_get_property(of_chosen, propname, NULL);
> +	if (!value)
> +		return NULL;
>  
> -	if (!name)
> -		return 0;
> +	p = strchrnul(value, ':');
> +	if (*p)
> +		buf = xstrndup(value, p - value);
>  
> -	p = strchrnul(name, ':');
> +	dn = of_find_node_by_path_or_alias(NULL, buf);
>  
> -	q = xstrndup(name, p - name);
> +	free(buf);
>  
> -	dn = of_find_node_by_path_or_alias(NULL, q);
> +	if (options && *p)
> +		*options = p + 1;
>  
> -	free(q);
> +	return dn;
> +}
> +
> +struct device_node *of_get_stdoutpath(unsigned int *baudrate)
> +{
> +	const char *opts = NULL;
> +	struct device_node *dn;
> +
> +	dn = of_find_node_by_chosen("stdout-path", &opts);
> +	if (!dn)
> +		dn = of_find_node_by_chosen("linux,stdout-path", &opts);
> +	if (!dn)
> +		return NULL;
>  
> -	if (baudrate && *p) {
> -		unsigned rate = simple_strtoul(p + 1, NULL, 10);
> +	if (baudrate && opts) {
> +		unsigned rate = simple_strtoul(opts, NULL, 10);
>  		if (rate)
>  			*baudrate = rate;
>  	}
> diff --git a/include/of.h b/include/of.h
> index 7ee1304b932b..6d0aca0102c6 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -314,6 +314,8 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node);
>  int of_parse_partitions(struct cdev *cdev, struct device_node *node);
>  int of_fixup_partitions(struct device_node *np, struct cdev *cdev);
>  int of_partitions_register_fixup(struct cdev *cdev);
> +struct device_node *of_find_node_by_chosen(const char *propname,
> +					   const char **options);
>  struct device_node *of_get_stdoutpath(unsigned int *);
>  int of_device_is_stdout_path(struct device *dev, unsigned int *baudrate);
>  const char *of_get_model(void);
> @@ -369,6 +371,12 @@ static inline int of_partitions_register_fixup(struct cdev *cdev)
>  	return -ENOSYS;
>  }
>  
> +static inline struct device_node *of_find_node_by_chosen(const char *propname,
> +							 const char **options)
> +{
> +	return NULL;
> +}
> +
>  static inline struct device_node *of_get_stdoutpath(unsigned int *rate)
>  {
>  	return NULL;
> -- 
> 2.38.3
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


