Delivery-date: Thu, 12 Nov 2026 08:49:39 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRPYw-009xSh-2e
	for lore@lore.pengutronix.de;
	Thu, 12 Nov 2026 08:49:39 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6E85D200563
	for <lore@pengutronix.de>; Thu, 12 Nov 2026 08:49:38 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ZtS3j3zI;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=O1tgnUeQ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794469778;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=cOlVXerUv9koCFwduiYdaAflbyj1qbu1X4KyJbxYJE8=;
	b=SHurP6BE+wCofuZ2j85eoYKYNyIxyHzM2WPXB2FbjAgso1ghUTA5NLS6oWL22tQ4XEkeFg
	0g1U34D7DTWWscipV59y6TyWcU0W6y/O4T/Hd0cyy1uB3GKLf2qzpNOf69DaCm1nB/uW5T
	O2Z0+hIYHtpQAj8EGxIHXKJOkAUw4cWQoE/4lPyLDpx2U52XxE374SCx5g9tKCqEt6O177
	BdDKfQzTYsWtBqAHLHg3WaZ6c7qPitYyzbYDMhCjgXvCKCU38cbszl5DzMD+4fxNOmHcZ4
	bsyXge5U48P2EXQR3EhEE2SijXn2ILIjSGuFKs2AYywckH8PZl4sNDhYPIoFrw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794469778; a=rsa-sha256;
	cv=pass;
	b=BVzg+9ykgWGvFKwwppCu+bLNSBfs2ZfHRmO7pnXHsFNikcbHbxfJuKz1IJNof3pwAft1bI
	knC1dg3hJJCFaLnbf/5tCUxMaaHdSBT8wvC+BepdtXNkvhDjLPn5PfbpO6vpjTrIiLjWBO
	JwfvpdFoAGqFHEEJ4P2XccDn6c2q7fsm6sUTtZUIRSZBkcIHBRLc7BpNR9Vr7K23IRyjsg
	4FrumK5vFs+uEBH0CVTiQIFc/fgOw4O87toawyLA+nWh8Fuubf4AOtNXOg+Q2oaUPIv6dz
	K9CDHEpRPYUhkZJV3swkeK05JQ2ndHFMyOoXTOV57zG+F92qqA2b7OFGlGXA8g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ZtS3j3zI;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=O1tgnUeQ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=cOlVXerUv9koCFwduiYdaAflbyj1qbu1X4KyJbxYJE8=; b=ZtS3j3zI6+6mLU
	ysqbuXNtnU0UZqsIHBAx6P0L6QJtsKz0i2RwK41qr6XDlBpdJPCVEzX7PfNSWwu9x653S2ZWKuBIl
	wwuhtUD1OYqTGtTcCjjK0+7ZGbHVD4qw3O7SIuaadlU5bJHPkc70zCCHdKZkbMIWKeYHPr2p1dB3T
	FAcQmd3MTFbydVknUOIfJfKxs3R3H6GBxNcjRqvWUspjGeVK9lUHHTzkCxsdrS4H3fUNmgwdbC1D3
	w5DFrauXrxaiOsgPyC7jMJlO1MwKM6gUP7DhAfQiTwsrZUYppOPHaLiZgUSg0JBOvEMR3BkAGCgCU
	1W4CqMylQtHK6cOKtT1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPXi-00000008xDZ-388T;
	Thu, 12 Nov 2026 07:48:22 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPXe-00000008xCR-3ZJN
	for barebox@lists.infradead.org;
	Thu, 12 Nov 2026 07:48:20 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1D259201A86;
	Thu, 12 Nov 2026 08:48:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794469697;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cOlVXerUv9koCFwduiYdaAflbyj1qbu1X4KyJbxYJE8=;
	b=O1tgnUeQzMae33nEwdVNPMKFCJjIJmAuEiloASX9eR9I4lEbK7N6+QW40K8A+iebGRisas
	RGwbsu9F/nSf4xTfiP3SKkNBZfREV696nranEWZVFDySpf/Q9J7u7wqR+I77vDFAoEjnKL
	lASOTY2CBNu02GXQTu+YYrKp88s2fiBUXNj6tWCupomkxJyDbRDcDELmc+7tH2iTPcD6u4
	fJENzRGCMZ0gZnSejx4g+TGugYdZ2/j653eoU5fQwryUMfzlIjuxPRdus6EcBr9/AFWA9q
	xkbYJgO/DiXpA0X7DRBX5GLcqdPulF55CTX14kkdKb2qXDou4xDra5GmrnmtqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794469697;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cOlVXerUv9koCFwduiYdaAflbyj1qbu1X4KyJbxYJE8=;
	b=ZfwPBCExTB9K5aOZIrUc09GseeKwgZuivYGggFjmZJ3zv4AaDoHdhvIgw6u5J9PQDai9va
	ljyTfghnkNCl3RRYBoLebiGPkwDtXMlqn/5M8pkyab75T/ZdpACrCADmovMJuRzLehEeIt
	qC6FZOht34o59e91TtMy9Ka99bqOprsc5CR02lR1nJiQm/w8V35YU5RhM+XsdBnhHcsOtm
	Q2Wejub9/y9wPOP2gMTCxQtMtv/JXxlf1eLwmYUsW28+jYtYD7P9filXs2wgcT3p7wwmaW
	0Eanplf4d0HVdvKC6xmTh0vNagzNAl6YR27Y5UMA7zAmqVQV76yxunB85RdbQw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794469697; a=rsa-sha256;
	cv=none;
	b=cSrafX5cvhAOZV03XmwfGTuIibcbImYMJHhHD9W4fsWBuRZdApqn3hbunx+gYHMFdi1Kar
	njJNfOhQbAhfb4K4UE3DjuJS9U0zCzDHgusMq/ZAGCICcSSZ4bPHF9a+j3DuZWSsQy4F4W
	exU7+7bWhfPjqF+FLEb6zxrW/3nNnPa9FIcT2/RbL4dC4KZWd4DO8VZc+eXEk5qcvZg7e1
	MIQWa4tGFjlfMeuMNu2V0SRnqjMw2UF2NAshMjDrDWtcYNSDrfkDBWlqr8+Jq34awFiT1l
	UqVdSYe6fiB0VKO7i9bT0fD+RAxzCo6Hr05wsq5YS/TQi4m6Ut6C3AKGjyTFEA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <17320307-410c-46ba-893a-542ca0393ede@pengutronix.de>
Date: Thu, 12 Nov 2026 08:48:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/10] bootm: revert globalvar changes in
 bootm_boot_cleanup()
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
 <20261030-boot-globalvar-stack-v1-2-a03803e1100c@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-2-a03803e1100c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_234819_055486_774A591E 
X-CRM114-Status: GOOD (  33.18  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 10/30/26 11:54, Sascha Hauer wrote: > bootm adds the Kernel
    command line options it generates itself as > global.linux.bootargs.!bootm.*
    and global.linux.bootargs.~bootm.* > variables and removes t [...] 
 
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
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
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
X-Rspamd-Queue-Id: 6E85D200563
X-Stat-Signature: 8pntzqbytkchwzxxioznbqqe9mq1yk5z
X-Rspamd-Action: no action

On 10/30/26 11:54, Sascha Hauer wrote:
> bootm adds the Kernel command line options it generates itself as
> global.linux.bootargs.!bootm.* and global.linux.bootargs.~bootm.*
> variables and removes them again in bootm_boot_cleanup(). Anything else
> bootm or the image handlers change in the global namespace while booting
> stays, for example global.linux.bootargs.dyn.watchdog which is added by
> the devicetree fixups and only cleared again when booting through the
> boot command.
> 
> Add boot_globalvar_scope_push() which snapshots the globalvars that
> configure booting, take a snapshot in bootm_boot_prep() and restore it in
> bootm_boot_cleanup(). This covers the variables bootm removed so far, so
> drop the explicit removal.
> 
> Besides global.bootm.* and global.linux.bootargs.*, the scope covers the
> rest of global.linux.*, like global.linux.bootargs_append, which
> global.linux.bootargs.* doesn't match, or global.linux.rootwait, then
> global.of.*, which includes the global.of.overlay.* variables selecting
> the overlays applied to the Kernel device tree, and
> global.boot.watchdog_timeout.
> 
> It deliberately doesn't cover all globalvars: booting legitimately
> changes others, which must persist. For example DHCP sets
> global.net.server, global.net.gateway and global.hostname, and reverting
> them while the interface stays up would leave the network unusable, as a
> later ifup doesn't run DHCP again.
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/bootm.c  |  6 ++++--
>  include/boot.h  | 16 ++++++++++++++++
>  include/bootm.h |  8 +++++++-
>  3 files changed, 27 insertions(+), 3 deletions(-)
> 
> diff --git a/common/bootm.c b/common/bootm.c
> index bcd557d679..22f2ca4081 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -2,6 +2,7 @@
>  
>  #include <common.h>
>  #include <bootargs.h>
> +#include <boot.h>
>  #include <bootm.h>
>  #include <fs.h>
>  #include <fcntl.h>
> @@ -533,6 +534,8 @@ struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data)
>  
>  	data = xzalloc(sizeof(*data));
>  
> +	data->globalvar_scope = boot_globalvar_scope_push();
> +
>  	bootm_image_name_and_part(bootm_data->os_file, &data->os_file, &data->os_part);
>  	bootm_image_name_and_part(bootm_data->oftree_file, &data->oftree_file, &data->oftree_part);
>  	bootm_image_name_and_part(bootm_data->initrd_file, &data->initrd_file, &data->initrd_part);
> @@ -792,8 +795,7 @@ void bootm_boot_cleanup(struct image_data *data)
>  	if (data->of_root_node)
>  		of_delete_node(data->of_root_node);
>  
> -	globalvar_remove(LINUX_BOOTARGS_BOOTM_EARLY "*");
> -	globalvar_remove(LINUX_BOOTARGS_BOOTM_LATE  "*");
> +	globalvar_scope_pop(data->globalvar_scope);
>  	free(data->os_header);
>  	free(data->os_file);
>  	free(data->oftree_file);
> diff --git a/include/boot.h b/include/boot.h
> index 57f9cb409b..b30cdd314a 100644
> --- a/include/boot.h
> +++ b/include/boot.h
> @@ -7,6 +7,7 @@
>  #include <environment.h>
>  #include <bootm-overrides.h>
>  #include <bootargs.h>
> +#include <globalvar.h>
>  
>  struct bootentries {
>  	struct list_head entries;
> @@ -58,4 +59,19 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun);
>  struct bootm_data;
>  int bootm_entry(struct bootentry *be, const struct bootm_data *data);
>  
> +/*
> + * Snapshot all globalvars that configure booting. Whatever a boot script,
> + * a boot entry or bootm itself changes there is reverted again by
> + * globalvar_scope_pop(), so it doesn't leak into the next boot attempt.
> + *
> + * This deliberately doesn't cover all globalvars: booting may change
> + * others that must persist, e.g. DHCP sets global.net.* and
> + * global.hostname while the interface stays up.
> + */
> +static inline struct globalvar_scope *boot_globalvar_scope_push(void)
> +{
> +	return globalvar_scope_push("bootm.", "linux.", "of.",
> +				    "boot.watchdog_timeout");
> +}
> +
>  #endif /* __BOOT_H */
> diff --git a/include/bootm.h b/include/bootm.h
> index 8e574040f4..bbdbb8e69d 100644
> --- a/include/bootm.h
> +++ b/include/bootm.h
> @@ -16,7 +16,8 @@
>   *   !		0x21 is less than any non-space printable character
>   *   ~		0x7e is greater than any printable character
>   *
> - * Users will never see those as bootm_boot_cleanup() will delete them again.
> + * Users will never see those as bootm_boot_cleanup() reverts the globalvars
> + * to the state before bootm_boot_prep().
>   */
>  #define LINUX_BOOTARGS_BOOTM_EARLY	"linux.bootargs.!bootm."
>  #define LINUX_BOOTARGS_BOOTM_LATE	"linux.bootargs.~bootm."
> @@ -80,7 +81,12 @@ int bootm_open_os_compressed(struct image_data *data);
>  int bootm_boot_handler(struct image_data *data);
>  void bootm_boot_cleanup(struct image_data *data);
>  
> +struct globalvar_scope;
> +
>  struct image_data {
> +	/* globalvars to restore in bootm_boot_cleanup() */
> +	struct globalvar_scope *globalvar_scope;
> +
>  	/* simplest case. barebox has already loaded the os here */
>  	struct resource *os_res;
>  
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


