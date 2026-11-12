Delivery-date: Thu, 12 Nov 2026 09:50:54 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRQWE-009ybT-0g
	for lore@lore.pengutronix.de;
	Thu, 12 Nov 2026 09:50:54 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1F6F6201C9E
	for <lore@pengutronix.de>; Thu, 12 Nov 2026 09:50:54 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=PVjQ8cYv;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=NyF5mDu+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794473454;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=eLOpxDJd3Z8W9GbaEmnRcPoTWTAb3eZ7MJTXitul0b0=;
	b=DMnsl/WMpgMRGMXhhTLpyv9KC68SqDLo/jtAX0d2jA8pmIB7C7+6Hs357G8GExsPJfbC3Z
	rIIamXmYR6eJuTO2CV9+6E07cAv6maNHrhAlL11NNCmckv24sheM+fECsSQzvlJJCLOTle
	g4EQ4pn152+8DkAyOQSte6OkOCfsULKWxfyunk5O74OTk0z2ouNBWWIOocn2xlNRXmn8bI
	AqcfqsUcFdv+vnchhf+zur5yjlLc6qf1lmY3EM0BmNOdF8DF5t1NBB8CWH2tL2sZkIInmW
	MOALKkkA6LVswS1Ag0E/jK9dcJa7ZOqU9QUiybFx5stCduS2y8PMdKDuoeMSMQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794473454; a=rsa-sha256;
	cv=pass;
	b=ORmnHXaxM5C5M5TwD1Hc3ScBnP296sNMWVAnU8Hic0y0Xr0VZymJTOOY+jzEkOfos1vIYM
	vcfrDzJ5gyErw4yySQ1eO0BA7uQbZDbGPXnAq2BMdJzydV7TIn7CuIAS2yZhoaN7pR1IAC
	UYA9eQQaCEcVJJg/RjLq/dyTwT6w/RrAXEHvAj2Oe2bE+BL/P2mARfsvMfr5WhTG4pPfhS
	PdCe7YnbsLB4PxlNlu6AN2dr+n1roBO3Igh8M2M1C1b6h6yYW3id1qx/bM3RjQu5xDnKBR
	S2S0quYcNMi1ows9jdtUrAQUk9ARBR+L8qiRt/kja/tzEok/X3XUwHPDD4FTrQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=PVjQ8cYv;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=NyF5mDu+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=eLOpxDJd3Z8W9GbaEmnRcPoTWTAb3eZ7MJTXitul0b0=; b=PVjQ8cYvBU3/f8
	vUjJrW3mZR143hppDLi/X3iydNSnlY0h1G1yaRTdftihKy9sQcZI5pZd8qBtCtZ6VUKuslNr/A/Ti
	RUBLXCVlOzucio3ChdYDvIaxNJMaX6j2Ggqrt3uUemKipol0iOxRT5wEuOWkM8CcDCN/7sAsMgnuu
	7J1QZeYrr0LTJPgAAqDlq+jyzYgprJ7d33zRqq1gTrVM1iyn6BqgDj6/KxbQ76I/tpuj/2nKjZy/j
	H5BHgf4xUd6dTVf4M7hy18QJlUOXicheY5FqohDg2RLbyXieFp6JdFCU6NB3G5MzFoBPUuZEx9lwx
	a9wIOdmA54Nxlb+Pm+0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQTQ-00000009EEx-2EBh;
	Thu, 12 Nov 2026 08:48:00 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQTL-00000009ED6-3rkx
	for barebox@lists.infradead.org;
	Thu, 12 Nov 2026 08:47:58 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E507B201A86;
	Thu, 12 Nov 2026 09:47:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794473274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eLOpxDJd3Z8W9GbaEmnRcPoTWTAb3eZ7MJTXitul0b0=;
	b=NyF5mDu+0NhP/FVewAelbHk+xve5f/k1aQwRb+otB60UvJS1wz7RLwKMPQNpiJc4pThf3E
	PES/2o/cLeEDB0E0EFhGfkEcBA6+6VnbliMSuj/nr4M0z4/DegSfJHyByQ9OLkOHK3W5DL
	sv9+9EVFLu+dYvo6o1MskWx6kvRYI0sR4e6YR12LlWOqgp7SpffT8GN7usGBNryG6VJmI6
	Luqn4+kZ2ifn5gydbRO9gOMODtIHdynJ7q0foXgXCs5mgjmIYXBPk7T4PmJ1adesrgfiop
	0GEENMAombMv6ihRnbFbNOhA/nJBY6NIbCtC/Lf4fRO/u7lhKvyOnEg/NTPrQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794473274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eLOpxDJd3Z8W9GbaEmnRcPoTWTAb3eZ7MJTXitul0b0=;
	b=eTv9TK9ezwQeYHcrmZGwNZC20cHyJXMNrrxiqfEIeusJ4CozjPyx27SYO0YNkmd/quShae
	tdxVQjTTxQJ71Qmp+zJQLnx3emaOgNT1p+wqEw2ZpaKRV/UjXmnsWjmROeNHa5iGrOH6z5
	ER95HDgF0PTIlKsJ5cj/3jjELGrsaHRXwG8RsHV2mkloLXzWl3cMOxo9XrGYpNHQ7ErM2e
	XdO+/hBZQ5OGox+hFClvnesKTXTwEoGajYcgzrAoUhlIiUrfTFN/uJiwtlEGLQ1AWNgshw
	dNiXvTkBu190EYUeAkw94ofeRx60zBhWw9occp4YBIBpLkazYO41U2IR1Wx+gA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794473274; a=rsa-sha256;
	cv=none;
	b=fHNEJpsRFOEonmNlKbpdqNiyvEUNjs1GhUrdI8AUsflHUAuQyVpCOy+IsHlc3fRuSZqTvc
	8BNs3fF4bvd3xgQwd+Yv6jmMdlk+8WbLR8+SIr4uPL2oTV3NWHcnzINYy72Z3u1a9bom3h
	5Fqc6MoDv1JHM4Jd0cIPQgJJOqtgZuPv0Ad4Efagy0SL73PrBqoNawEoe6hRcTgfmg8Baq
	1hDBaToSYdL7/1T0n6ZjD1MaFnovCQt1YpK76dQch5etipNweG9wTrPMZNqWSpdAA+WaxW
	6BLKBDuk53/1psvw9huMiw0EAPeIsSy2KBvmgANGIOmvIpnIFY1wDSgpYRz3PQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <e344c1ba-1555-4e90-8df2-47937d5f3554@pengutronix.de>
Date: Thu, 12 Nov 2026 09:47:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] hush: export source_script()
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261030-devboot-v1-0-ab9dd3a92c66@pengutronix.de>
 <20261030-devboot-v1-2-ab9dd3a92c66@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261030-devboot-v1-2-ab9dd3a92c66@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_004756_191961_41E458F8 
X-CRM114-Status: GOOD (  24.05  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 10/30/26 15:13, Sascha Hauer wrote: > C code that wants
    to source a shell script has to go through > run_command("source ..."), which
    parses the command line and looks the > script up in the PATH. [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 1F6F6201C9E
X-Stat-Signature: jd6sb7ufkq7fixmm7f7oxw7s6s43865a
X-Rspamd-Action: no action

On 10/30/26 15:13, Sascha Hauer wrote:
> C code that wants to source a shell script has to go through
> run_command("source ..."), which parses the command line and looks the
> script up in the PATH.
> 
> Export source_script() instead. As the simple parser can't source
> scripts, it gets a stub returning -ENOSYS. Unlike its callers in hush,
> source_script() can now be called directly, so check the security policy
> in it, like run_command() and execute_script() do.
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/hush.c   | 17 +++++++++++++++--
>  include/shell.h |  8 ++++++++
>  2 files changed, 23 insertions(+), 2 deletions(-)
> 
> diff --git a/common/hush.c b/common/hush.c
> index ac885fbfe7..c5809b32cd 100644
> --- a/common/hush.c
> +++ b/common/hush.c
> @@ -329,7 +329,6 @@ static char **make_list_in(char **inp, char *name);
>  static char *insert_var_value(char *inp);
>  static int set_local_var(const char *s, int flg_export);
>  static int execute_script(const char *path, int argc, char *argv[]);
> -static int source_script(const char *path, int argc, char *argv[]);
>  
>  static int b_check_space(o_string *o, int len)
>  {
> @@ -1975,12 +1974,26 @@ static int execute_script(const char *path, int argc, char *argv[])
>  	return ret;
>  }
>  
> -static int source_script(const char *path, int argc, char *argv[])
> +/**
> + * source_script - execute a shell script in the current environment
> + * @path: path of the script
> + * @argc: number of positional parameters, including $0
> + * @argv: positional parameters, starting with $0
> + *
> + * Unlike executing a script, variables set by it remain set in the current
> + * environment context after it returns.
> + *
> + * Return: exit status of the last command executed, or a negative error code
> + */
> +int source_script(const char *path, int argc, char *argv[])
>  {
>  	struct p_context ctx = {};
>  	char *script;
>  	int ret;
>  
> +	if (!IS_ALLOWED(SCONFIG_SHELL))
> +		return -EPERM;
> +
>  	initialize_context(&ctx, true);
>  
>  	ctx.global_argc = argc;
> diff --git a/include/shell.h b/include/shell.h
> index b399564ff3..a0c3414fa6 100644
> --- a/include/shell.h
> +++ b/include/shell.h
> @@ -6,17 +6,25 @@
>  #ifndef __SHELL_H__
>  #define __SHELL_H__
>  
> +#include <linux/errno.h>
> +
>  int shell_get_last_return_code(void);
>  
>  int run_shell(void);
>  
>  #ifdef CONFIG_SHELL_HUSH
>  char *shell_expand(char *str);
> +int source_script(const char *path, int argc, char *argv[]);
>  #else
>  static inline char *shell_expand(char *str)
>  {
>  	return strdup(str);
>  }
> +
> +static inline int source_script(const char *path, int argc, char *argv[])
> +{
> +	return -ENOSYS;
> +}
>  #endif
>  
>  #ifdef CONFIG_BAREBOX_CMDLINE
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


