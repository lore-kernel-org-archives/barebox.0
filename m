Delivery-date: Tue, 16 Sep 2025 10:35:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyRAK-003cqh-0M
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 10:35:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyRAJ-00077K-FJ
	for lore@pengutronix.de; Tue, 16 Sep 2025 10:35:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QGOwVIJWSybR0YBoM9wUmOCOZz54nPkGPd4RUfL31yk=; b=lifCsCk0PD/Y/pbnZyWRJibdBy
	aSWgowednkaTVo1j4tre1HCMxq7ohfeNXYM7S/RwgZp2dx+SP2t9orkDmQcyRimECrPs0zrm8RI8L
	Pj4jG4kxW0ZPWZtUvYnqhEiRWDi2PaVXL2Q/cfM/cZOlxjg2IOaFwsI+XOE+uTNGrMAlOQAkUFd2m
	xG45NfZwbNJjXU65CJFu88nBAhcWKzY0kTWTP9QnLy8yzZanlajpXHmy9DSFqwkdSo5gh9+eoz/tk
	iBfXsvN7jMl6q++tkuOtk3pwPMyeEta1HnwYzka/aQdZzO6Io+mHRdyofba8zKARrq4L3lKxzY4Le
	2CqyoEQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyR9c-00000007DdH-0mFZ;
	Tue, 16 Sep 2025 08:35:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyR9Z-00000007Dc4-0LnX
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 08:35:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uyR9W-00070H-T5; Tue, 16 Sep 2025 10:35:06 +0200
Message-ID: <be2df68d-b0c3-4532-b020-5e11e8ffa202@pengutronix.de>
Date: Tue, 16 Sep 2025 10:35:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org
References: <20250909131843.2260573-1-tobias@waldekranz.com>
 <20250909131843.2260573-2-tobias@waldekranz.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250909131843.2260573-2-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_013509_141893_5FADCF78 
X-CRM114-Status: GOOD (  25.10  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/7] string: add strtok/strtokv
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 9/9/25 3:18 PM, Tobias Waldekranz wrote:
> Add an implementation of libc's standard strtok(3), which is useful
> for tokenizing strings.

Nitpick: Only strtokv is implemented, but I think no need to resend,
Sascha can fix it up when applying.

> 
> Also, add a version that will collect all tokens from a string into an
> array, which is useful in situations where you need to know how many
> tokens there are, and when a token's relative position in the order is
> significant.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
> 
> Notes:
>     v1 -> v2:
>     - Tokeinize using strsep()+empty-token-check instead of strtok()
>     - Return array from strtokv() and pass count in an output pointer,
>       rather than the opposite.
> 
>  include/string.h |  1 +
>  lib/string.c     | 30 ++++++++++++++++++++++++++++++
>  2 files changed, 31 insertions(+)
> 
> diff --git a/include/string.h b/include/string.h
> index 71affe48b6..cb3492ba04 100644
> --- a/include/string.h
> +++ b/include/string.h
> @@ -8,6 +8,7 @@
>  void *mempcpy(void *dest, const void *src, size_t count);
>  int strtobool(const char *str, int *val);
>  char *strsep_unescaped(char **, const char *, char *);
> +char **strtokv(char *str, const char *delim, int *cntp);
>  char *stpcpy(char *dest, const char *src);
>  bool strends(const char *str, const char *postfix);
>  
> diff --git a/lib/string.c b/lib/string.c
> index 73637cd971..a55f989900 100644
> --- a/lib/string.c
> +++ b/lib/string.c
> @@ -593,6 +593,36 @@ char *strsep_unescaped(char **s, const char *ct, char *delim)
>          return sbegin;
>  }
>  
> +/**
> + * strtokv - split string into array of tokens based on a delimiter set
> + * @str:	string to split
> + * @delim:	set of delimiter characters
> + * @cntp:	number of tokens
> + *
> + * Split @str into non-empty tokens delimited by spans of characters
> + * from @delim, and store the numbers of tokens in @cntp.
> + *
> + * Return: The allocated array of tokens, which the caller is
> + * responsible for freeing.
> + */
> +char **strtokv(char *str, const char *delim, int *cntp)
> +{
> +	char *tok, **vec = NULL;
> +	int cnt = 0;
> +
> +	while ((tok = strsep(&str, delim))) {
> +		if (*tok == '\0')
> +			continue;
> +
> +		vec = xrealloc(vec, (cnt + 1) * sizeof(*vec));
> +		vec[cnt++] = tok;
> +	}
> +
> +	*cntp = cnt;
> +	return vec;
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



