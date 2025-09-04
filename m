Delivery-date: Thu, 04 Sep 2025 14:27:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu94J-0082OX-2w
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 14:27:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu94I-0001no-KZ
	for lore@pengutronix.de; Thu, 04 Sep 2025 14:27:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3TatvSLG/XR7e3N9Z3Z7uSDyJsqaEabYpZhv+iPWr0A=; b=1EnJ1Z5m9y11Qna5I55J7Y3iqu
	QfOE/4EWGAucGZjXRzzOVFiYI2Xb+O4AyZmGzK9i8DnVhwuMQQIDeGJP9Uub+3/QrMNUTF+KPVfzF
	IMS8P1Cu7mX4A9H4Y29W+3btBjOmPHGsiSVOHe8pJDk+7D3ymlFD01JTvRWx9j7IUVDz2k9s+JINN
	iMk9fDcyrIk9P54mXNmhKv2Zd5RdHcZXF1pOTe2Zt7vWiHl39qn7xZeJfPgYWnYsjs1QhLNreU5AR
	pVHTPtXwPO3bT6yfSqgkNT9ufZlJKS8dvRO/RVezpcaMS1XLY0E74jKeywSycL7lIZLX04BnPaHgr
	9Srrku3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu93a-0000000BYPu-2fcf;
	Thu, 04 Sep 2025 12:27:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu7hu-0000000B4K9-0h64
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 11:00:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uu7hs-0002WC-Te; Thu, 04 Sep 2025 13:00:44 +0200
Message-ID: <96be67c8-e10e-40f7-9945-76ccfa8d0aac@pengutronix.de>
Date: Thu, 4 Sep 2025 13:00:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <20250828150637.2222474-2-tobias@waldekranz.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US
In-Reply-To: <20250828150637.2222474-2-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_040046_211660_D44C3758 
X-CRM114-Status: GOOD (  29.84  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] string: add strtok/strtokv
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Tobias,

On 8/28/25 5:05 PM, Tobias Waldekranz wrote:
> Add an implementation of libc's standard strtok(3), which is useful
> for tokenizing strings.

strtok was previously removed in favor of strsep as it doesn't suffer
from re-entrancy issues (poller and bthreads can run during delays). If
you want to allow escapes, there's also strsep_unescaped.

> Also, add a version that will collect all tokens from a string into an
> array, which is useful in situations where you need to know how many
> tokens there are, and when a token's relative position in the order is
> significant.

We have the inverse as strjoin, but not this. Maybe call it strsplit
instead?

Cheers,
Ahmad

> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  include/string.h |  2 ++
>  lib/string.c     | 66 ++++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 68 insertions(+)
> 
> diff --git a/include/string.h b/include/string.h
> index 71affe48b6..c8df8540d8 100644
> --- a/include/string.h
> +++ b/include/string.h
> @@ -8,6 +8,8 @@
>  void *mempcpy(void *dest, const void *src, size_t count);
>  int strtobool(const char *str, int *val);
>  char *strsep_unescaped(char **, const char *, char *);
> +char *strtok(char *str, const char *delim);
> +int strtokv(char *str, const char *delim, char ***vecp);
>  char *stpcpy(char *dest, const char *src);
>  bool strends(const char *str, const char *postfix);
>  
> diff --git a/lib/string.c b/lib/string.c
> index 73637cd971..be7e65eb45 100644
> --- a/lib/string.c
> +++ b/lib/string.c
> @@ -593,6 +593,72 @@ char *strsep_unescaped(char **s, const char *ct, char *delim)
>          return sbegin;
>  }
>  
> +/**
> + * strtok - extract tokens from string
> + * @str:	string to split
> + * @delim:	set of delimiter characters
> + *
> + * The strtok() function breaks up a string into zero or more nonempty
> + * tokens.  On the first call, the string to be parsed should be
> + * specified in @str.  In each subsequent call that should parse the
> + * same string, @str must be NULL.
> + *
> + * @delim specifies a set of bytes that delimit the tokens in the
> + * string.
> + *
> + * Each call to strtok() returns a pointer to a string containing the
> + * next token.  This is done by replacing the first delimiter with a
> + * NUL character, the operation is thus destructive to the string. If
> + * no more tokens are found, strtok() returns NULL.
> + */
> +char *strtok(char *str, const char *delim)
> +{
> +	static char *cursor;
> +
> +	if (str)
> +		cursor = str;
> +
> +	if (!cursor)
> +		return NULL;
> +
> +	cursor += strspn(cursor, delim);
> +	if (*cursor == '\0') {
> +		cursor = NULL;
> +		return NULL;
> +	}
> +
> +	return strsep(&cursor, delim);
> +}
> +EXPORT_SYMBOL(strtok);
> +
> +/**
> + * strtokv - split string into array of tokens based on a delimiter set
> + * @str:	string to split
> + * @delim:	set of delimiter characters
> + * @vecp:	array of tokens
> + *
> + * Split @str into tokens delimited by @delim, using strtok(), and
> + * store the allocated token array in @vecp, which the caller is
> + * responsible for freeing.
> + *
> + * Return: The number of tokens in the array.
> + */
> +int strtokv(char *str, const char *delim, char ***vecp)
> +{
> +	char *tok, **vec = NULL;
> +	int cnt = 0;
> +
> +
> +	for (tok = strtok(str, delim); tok; tok = strtok(NULL, delim)) {
> +		vec = xrealloc(vec, (cnt + 1) * sizeof(*vec));
> +		vec[cnt++] = tok;
> +	}
> +
> +	*vecp = vec;
> +	return cnt;
> +}
> +EXPORT_SYMBOL(strtokv);
> +
>  #ifndef __HAVE_ARCH_STRSWAB
>  /**
>   * strswab - swap adjacent even and odd bytes in %NUL-terminated string

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



