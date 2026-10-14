Delivery-date: Wed, 14 Oct 2026 14:46:01 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xGyMr-00DVO5-1K
	for lore@lore.pengutronix.de;
	Wed, 14 Oct 2026 14:46:01 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DA00B200582
	for <lore@pengutronix.de>; Wed, 14 Oct 2026 14:46:00 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=tHndbCpW;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Ud5LOA19;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791981961; a=rsa-sha256;
	cv=pass;
	b=HFHa0jZ3ajrIaniNkWjLndMOD+X0uizN/FzjNfyNJ8cEpZHQBrROfjHYjIVZqZ90chS1D3
	6ZUqiMhXoDOVy6dbktBFPFnMpHupFoIHA+IPcyLGp7xKGZ8/B38KJlLDEXRe+QWOQNeTCT
	lJEuSrRivQciIENrN13xxg9Faz+suydkWgrVXAhF09G9d3gXMMs/yAuIVKBbxS/qVU1I7Z
	KnY8Nwxx1nSlWXyk+72f6PegzVScuPAqg4xSi0miHWH7PblBpw4OUgeTyUzKmBO9hNv0jd
	PW195LFDxvPG/T0B6Us1bYK/T5y8J3akL5OpbD7yh/eYRWZJIE6EUVSfqgT4zA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=tHndbCpW;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Ud5LOA19;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791981961;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=hjkPXDxgR3w6xEvuUQDZTujRS1DUo4y4SIcd7KG9GkE=;
	b=cu/9qwtFNsvTaX65x4AppTbN/Ar0Gsx2zym4djulKWSjPWGaEMPlvhnguJEb/aodqY8/ia
	RtDCDqX/X8NRse9FugYXiBxnZ8VK/H4J3qSQNMKCbXoUoBWfKKwDE1fvFn0MO9VwyOO+wP
	3AD4wrb+9j8zJ12CXqO4zBEQRZz4JQmog8M7cD6s81Dsi2Lzv6MxRauAS58nygANSjKHf6
	WcuVpSGKNq/YKj03Or9aIv7RN5GqegdfXefGJZdTTYtVwk5H79QHc/uuJ5s4ANk+JC/939
	hUB5lnoIvfXy4t5YldIxDjyDEF9JVKLT46lMQexDDeLM3ZxeAWVDwuPEyna4+A==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hjkPXDxgR3w6xEvuUQDZTujRS1DUo4y4SIcd7KG9GkE=; b=tHndbCpWczCr3o1YRqxJsVdXkv
	2L+3byLieNvzxdUKt+CxibFz+nku+UWfAZ+Wz9j/NWO9o915rXlBz9keWNW3vXdvNxinO46JsqUU7
	Gq5MLmp0oKQhw682cUJbwju4Ms9Cz0Hky4qawyq39ydKzzP1M/sG5kVBvnhdbi2dr9RkStWaxUZYJ
	423cuETpLRSdKb5ApfqGkNCyeJwUk40q3hFxZ8UHoQMLh7OZDf0Cq4oZ2+uaWETDN1GsFT/uwwxAX
	AOj8lFS38YIYziFD9CKKfo/cxHm1wBerrzswfrfWb9yMWDZi70MFk3cZbadMSKHhRCF7jQgXFXMJn
	DzSfIGIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGyMZ-0000000FTyN-0YvG;
	Wed, 14 Oct 2026 12:45:43 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGyMV-0000000FTxv-47aF
	for barebox@lists.infradead.org;
	Wed, 14 Oct 2026 12:45:41 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 874742007F9;
	Wed, 14 Oct 2026 14:45:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791981937;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hjkPXDxgR3w6xEvuUQDZTujRS1DUo4y4SIcd7KG9GkE=;
	b=Ud5LOA198hNE7jGu+8AbS79kDSnC6Qs+EiQxT409oFmDJ7reOorIpMLL2sbvl7x9rkpq4A
	EGMgVsCKv5FfkG6MyI26MDYlq6wbjXaFmSnd3PGYyj4TEYuJQ+Bhq6Xd6tdi4iJojSGYBP
	ROl0TbAhRN0RAptB8u/VKD/s+asC7aBnmQwrhpAcudgbbEp8d9yltB6iZ/3sqqOOMvPfRH
	yhgRqFoMJW1JK4e+2uBTEy5xUPqJhMzbPoea5HBWSy0eUsuCJu5RaZtu/0Ntw/SyohNjhD
	Tk2YwpkXYTVn8zZOR7laBwpsWKNnFaU6JU694rMfXsoB0CXlPBSo508blJMGqQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791981937; a=rsa-sha256;
	cv=none;
	b=chfVhf6P05mlg3K+qeIlTiEZA+Sar4INewF2wh+E0XGX46b04108fn9tP90XET9HTQSLYh
	PdwJ5+7Y4xPdk7k39UwNh7E7f94NFqR1rNzsFLIWqwroMctfwHD8iAZl7e0xUqZ9nhfiba
	O4IKz6ZOVup1CY7+qGSfO3oQnY4YQHzeK0endB16rG6n2Px2+JPDGnOoBHVx1h17CNSh6C
	BWeqggQbTp/YtHGQvf4T53kXBbheISPC2EHF4ccybSeRpzpul28awA9PG+mk2qYzDOSnT3
	2lBZlFbsyBkxS4YONT2bU1JWLrXdWkV8rT+T8J44xfF+dxYzBr4Tb9VBCuALQQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791981937;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hjkPXDxgR3w6xEvuUQDZTujRS1DUo4y4SIcd7KG9GkE=;
	b=NM31D2mNLeaxjFNR0bG/ymumBcyXqrlr62SzMeK7vueI4NZ12FlrpUvP0zz3KlDb6RmzT8
	y2bRQa0UKZGYqyeTePt2SckzDN8bm3LxhFyQHh/cobFmhT5GfqKYsg1/AAepQlLSNy8z5+
	ev3QCadSh86wcDgiCpSKrw2ML2lLI6IAPAD9kgUGP9RQ8smHrMeTBlYjOUXQe2gIjOyBJb
	0c9PoGZsLCLtYjkaG2ljDVR9OidQ/1JL70lzM4NBrJ8VxSWSTt211xaB/ux5SsZyOIkNkl
	i7wSlJCiwNlUL6lR4aK3UvZe5i4vGyB1yp48HXK0oHtFxkvJebqtFopFZ2zBCA==
Message-ID: <213681da-7e7c-4856-a383-670d2e9368a1@pengutronix.de>
Date: Wed, 14 Oct 2026 14:45:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] ARM: rockchip: pack the device tree passed to TF-A
 and OP-TEE
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261001-rockchip-early-boottime-v1-0-dd891bcdb74f@pengutronix.de>
 <20261001-rockchip-early-boottime-v1-3-dd891bcdb74f@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261001-rockchip-early-boottime-v1-3-dd891bcdb74f@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_054540_176115_2B1555CC 
X-CRM114-Status: GOOD (  23.47  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Sascha, On 10/1/26 9:42 AM, Sascha Hauer wrote: > rockchip_create_optee_fdt()
    builds a device tree with just the memory > nodes, but fdt_create_empty_tree()
    sets its totalsize to the size of the > whole scrat [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: DA00B200582
X-Stat-Signature: 7byx4uq5ksyz8h9ywzog3wgm8x4nxy14

Hello Sascha,

On 10/1/26 9:42 AM, Sascha Hauer wrote:
> rockchip_create_optee_fdt() builds a device tree with just the memory
> nodes, but fdt_create_empty_tree() sets its totalsize to the size of the
> whole scratch buffer, i.e. CONFIG_ARCH_ROCKCHIP_ATF_FDT_SIZE (384 KiB).
> 
> TF-A and OP-TEE both call fdt_open_into() on the device tree, which
> copies totalsize bytes regardless of the actual content. TF-A does this
> with the MMU disabled and OP-TEE through an uncached mapping. On an
> RK3588 this takes 185 ms in TF-A and another 182 ms in OP-TEE.
> 
> Pack the device tree so that totalsize matches its content. OP-TEE can
> still expand it in place, the scratch buffer keeps its size.

While I don't object to the patch, for future reference it would be good
to point out what the implication is for fixups onto the device tree.

Do both TF-A and OP-TEE apply fixups on this platforms? Are these fixups
no longer possible now?

Thanks,
Ahmad

> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-rockchip/atf.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
> index e1ca197430..4b88de8317 100644
> --- a/arch/arm/mach-rockchip/atf.c
> +++ b/arch/arm/mach-rockchip/atf.c
> @@ -172,7 +172,7 @@ static int rockchip_create_optee_fdt(void *buf, int bufsize)
>  {
>  	unsigned long base[ROCKCHIP_MAX_DRAM_RESOURCES];
>  	unsigned long size[ARRAY_SIZE(base)];
> -	int i, root;
> +	int i, root, ret;
>  
>  	if (fdt_create_empty_tree(buf, bufsize) != 0)
>  		return -EINVAL;
> @@ -187,7 +187,12 @@ static int rockchip_create_optee_fdt(void *buf, int bufsize)
>  		size[i] = memsize[i];
>  	}
>  
> -	return fdt_fixup_mem(buf, base, size, n_mem_resources);
> +	ret = fdt_fixup_mem(buf, base, size, n_mem_resources);
> +	if (ret)
> +		return ret;
> +
> +	/* TF-A and OP-TEE copy the whole totalsize, keep it small */
> +	return fdt_pack(buf);
>  }
>  
>  static void rockchip_atf_load_bl31(void *fdt)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



