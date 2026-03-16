Delivery-date: Tue, 17 Mar 2026 00:25:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2HJr-001bZT-0R
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 00:25:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2HJq-0002vJ-Ee
	for lore@pengutronix.de; Tue, 17 Mar 2026 00:25:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9lJehdBbiXkK82kTYoxIAzKUJLmlh7rWb9bv6Wkw4hc=; b=FkptOuJHVr0L1Sv1Eattm5o6KA
	Z8UhIROTUGPNU3YKgRRbwgUl76rkHxBgdNu1yab/Jm2m4xGDW/FQjmEspqEt0Wir5IVceyJPqq/en
	aMHlD8BDhA08jjnMS8OAM3zI1fSYS3GIlOfOUdM8adxmGBg1cxHZGNSJAdHU+sFpuhZQO1qxbuuhF
	6vg6ZM99y2AhUUol3+QBrGcgVgYk9kzMMYKGtDvOuL/H8SSSVVrlwxLeeFutPUHrj2VxY/AEC9sd5
	esqDmW4TTOV1gpuvgTDphYrhiP1kIXJqPJXVZp95YE4ldmVDgut00SUn2DaRciEor73FHmixL9UZs
	utHTu5aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2HJE-000000054Ck-3H27;
	Mon, 16 Mar 2026 23:25:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2HJB-000000054C5-1rDa
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 23:25:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1w2HJ7-0002ph-RZ; Tue, 17 Mar 2026 00:25:09 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1w2HJ7-000e9n-29;
	Tue, 17 Mar 2026 00:25:09 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1w2HJ7-00000005Xyo-2MjJ;
	Tue, 17 Mar 2026 00:25:09 +0100
Date: Tue, 17 Mar 2026 00:25:09 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Message-ID: <hj565xhm3wewvsaynr5atw2yfkz7huxjkqx4myewl3dhxwhgmm@ypfksvmwjite>
References: <20260316-keytoc-multi-env-v3-0-433591ef3198@pengutronix.de>
 <20260316-keytoc-multi-env-v3-1-433591ef3198@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316-keytoc-multi-env-v3-1-433591ef3198@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_162513_485065_5FD79A3D 
X-CRM114-Status: GOOD (  26.38  )
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
Cc: BAREBOX <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 1/4] scripts: include: Add string_util.h for
 strsep_unescaped
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-03-16, Jonas Rebmann wrote:
> lib/string.c has strsep_unescaped() that will be useful for the keytoc
> host tool to split ENV specs at spaces not preceded by a backslash in a
> future commit.
> 
> In preparation, create scripts/include/string_util.h with a copy of that
> function as to have it available in host tools.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>  scripts/include/string_util.h | 65 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 65 insertions(+)
> 
> diff --git a/scripts/include/string_util.h b/scripts/include/string_util.h
> new file mode 100644
> index 0000000000..e71aa60d26
> --- /dev/null
> +++ b/scripts/include/string_util.h
> @@ -0,0 +1,65 @@
> +#ifndef _TOOLS_STRING_UTIL_H_
> +#define _TOOLS_STRING_UTIL_H_
> +
> +#include <linux/types.h>
> +#include <stddef.h>
> +
> +// SPDX-SnippetBegin
> +// SPDX-Snippet-Comment: Origin-URL: https://git.pengutronix.de/cgit/barebox/tree/lib/string.c?id=dfcf686f94a5a5387660f2afab79a714baab828a

Do we really need this if we reference code within our own repo?

> +/**
> + * strsep_unescaped - Split a string into tokens, while ignoring escaped delimiters
> + * @s: The string to be searched
> + * @ct: The delimiter characters to search for
> + * @delim: optional pointer to store found delimiter into
> + *
> + * strsep_unescaped() behaves like strsep unless it meets an escaped delimiter.
> + * In that case, it shifts the string back in memory to overwrite the escape's
> + * backslash then continues the search until an unescaped delimiter is found.
> + *
> + * On end of string, this function returns NULL. As long as a non-NULL
> + * value is returned and @delim is not NULL, the found delimiter will
> + * be stored into *@delim.
> + */
> +static char *strsep_unescaped(char **s, const char *ct, char *delim)

Is there a reason for defining this function within a .h instead of a .c
file?

Regards,
  Marco

> +{
> +	char *sbegin = *s, *hay;
> +	const char *needle;
> +	size_t shift = 0;
> +
> +	if (sbegin == NULL)
> +		return NULL;
> +
> +	for (hay = sbegin; *hay != '\0'; ++hay) {
> +		*hay = hay[shift];
> +
> +		if (*hay == '\\') {
> +			*hay = hay[++shift];
> +			if (*hay != '\\')
> +				continue;
> +		}
> +
> +		for (needle = ct; *needle != '\0'; ++needle) {
> +			if (*hay == *needle)
> +				goto match;
> +		}
> +	}
> +
> +	*s = NULL;
> +	if (delim)
> +		*delim = '\0';
> +	return sbegin;
> +
> +match:
> +	if (delim)
> +		*delim = *hay;
> +	*hay = '\0';
> +	*s = &hay[shift + 1];
> +
> +	return sbegin;
> +}
> +
> +// SPDX-SnippetEnd
> +
> +
> +#endif /* _TOOLS_STRING_UTIL_H_ */
> 
> -- 
> 2.53.0.308.g50d063e335
> 
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


