Delivery-date: Wed, 26 Jul 2023 13:57:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOd8a-00AoOc-Oz
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 13:57:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOd8Y-0007Ey-5A
	for lore@pengutronix.de; Wed, 26 Jul 2023 13:57:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d35U3edWROqAhKhpUvfQkoYX6YWD+Gfg+N+789GZzKk=; b=NEd3ArGJj8EVllw+dbhH4AiMmb
	0Zy+yEg8lTl7peT+ZcDKfZOb8usz3yqSBbjco0EhJwiw2XPefN7VIUYvipRf5rwcZ76MLKlzIpq5w
	hK7dUWKiPjvBRYrhWz0viIinp92AzqS7VeU+X7j3PzfXyHvMSpTxPdsa2ZLWcjy87JNlE+tSCNJh1
	YP9q2wfvCv7DJgCG8u9gVcDfeBFPKpeMrkBq4/g8UfY/dTqcdGEFu2yo6IIIZ4MkW57qfm+KUsA7h
	IL5BKbiQDb1piMFO1SqsPfcT3U/iZXB2hQLF57GBV3vGNigzw1WJmivgnJLAS0VcVQknYlAgz4bk0
	0F/6IH4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOd7B-00AFxc-00;
	Wed, 26 Jul 2023 11:55:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOd71-00AFrS-2i
	for barebox@bombadil.infradead.org;
	Wed, 26 Jul 2023 11:55:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=d35U3edWROqAhKhpUvfQkoYX6YWD+Gfg+N+789GZzKk=; b=crQ8Q469uYqTPnvBFAlqYTVf53
	qGtnwEvcYgT3KhsPMqxS62pxQA5p8eB30zEE19Bw9UVhxumZHCPXIAfrWUR66mlqfzirhZLJL8Wup
	4L3aFzpAbv0lCJCpciaqRJkqt7kaqfi1J+lsMEX/IdUQc4UAdk1xiwQlp1x32Pc2ohqO69qvfSTkr
	iVdZD8AfG1gaLmdFp8HOh+RBrpQMMnRbmgAXdKo4gO08+rnHNfqWyyYL92fu1gGbJnjM5kDWJMW5+
	29l9YqMwKjRSk6RBtM3yt3QzPMPadIw5vb9g67VeElb7gzI3Dt+O+vKGaXDZYAS91OG1rHrQc1ME0
	ku9qRj3A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOcv9-005q2I-0F
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 11:43:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOcv8-0005KW-Bu; Wed, 26 Jul 2023 13:43:10 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOcv7-0003J2-Qu; Wed, 26 Jul 2023 13:43:09 +0200
Date: Wed, 26 Jul 2023 13:43:09 +0200
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230726114309.GM18491@pengutronix.de>
References: <20230719181129.367413-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230719181129.367413-1-enrico.scholz@sigma-chemnitz.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_124311_235904_C1A25371 
X-CRM114-Status: GOOD (  23.40  )
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
Subject: Re: [PATCH] fdt: copy terminating '\0' in lstrcpy()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jul 19, 2023 at 08:11:29PM +0200, Enrico Scholz wrote:
> From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> 
> On large string tables (>64K), a
> 
> |		fdt->strings = realloc(fdt->strings, fdt->str_size * 2);
> 
> operation is executed.  This 'realloc()' does not zero the memory so
> there is no guarantee that the strings will be terminated properly.
> 
> Modify 'lstrcpy()' so that it also copies the terminating '\0'.
> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  drivers/of/fdt.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 01d7dc37439f..9d72fafd3669 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -302,15 +302,15 @@ static int lstrcpy(char *dest, const char *src)
>  	int len = 0;
>  	int maxlen = 1023;
>  
> -	while (*src) {
> -		*dest++ = *src++;
> +	do {
> +		*dest++ = *src;
>  		len++;
>  		if (!maxlen)
>  			return -ENOSPC;
>  		maxlen--;
> -	}
> +	} while (*src++);
>  
> -	return len;
> +	return len - 1;
>  }
>  
>  static void *memalign_realloc(void *orig, size_t oldsize, size_t newsize)
> -- 
> 2.41.0
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


