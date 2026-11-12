Delivery-date: Thu, 12 Nov 2026 08:50:49 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRPa4-009xTn-2T
	for lore@lore.pengutronix.de;
	Thu, 12 Nov 2026 08:50:49 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9A542201BFB
	for <lore@pengutronix.de>; Thu, 12 Nov 2026 08:50:48 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ufaA1AzX;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QafjYkzx;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794469848;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=62T7NHlbgrWXlF7lL1TuP4BNgTzfVgnItxOxQshOPIU=;
	b=HuwBsMi4nYuY3xQSymGBWxMqkkBm5AB44RvqzlUNcKbG+sMxn/gNSjHvfWfl1oP6zAkXxa
	4Fw7cguN60SteLH7fdsA0eZO0M8RH+o+2hktdL6OP5V3vp4Zev2MshekQvA9GVCJ/wh4HC
	SldJwxvfkM0t6JoRvSM5kJ96hQukYdcQuHkwE1DBPYmhw0TS5PrjU1urP3ftZdDf6MOjKL
	i/U8WMz/LvGUT0a5wuGdry5/xhjJ06whSh0MRjguc/hX9UPKnzkdUmMVlAP/z/TBqJn0DK
	fhGJSOw9X+aVVQXSrUmqboZy/gghEetPNufV2fAqa3/pCokwHMIKZac8phFbsg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794469848; a=rsa-sha256;
	cv=pass;
	b=YoAFOmQZ1o/dHVurEVAV1J+X3jIKYHbCG0vy/AzYg44t31FKaZLccFXC8ZRRfUkHpgKXe1
	LqS0mQO1y4HpT/17tPkjcEjK8R3xIOkK8IM73kgvgUwXiPNv/5fyrW4h/FfeLQ1eT7R2X4
	2jNHuRKaV+IKFwZ1QtFGM6KEiVR4ZC099M6rQrylgoEKhPrNsP2/OjxeKK//BjejssJV5w
	lmCf7wXG4iPIHVimMz87EvOehTeuLKiOsYvPO9uvIcfOW3o5a6B5pWzicWzVDAIV9I4Z34
	28CKhvvGG5r6wOql1H0+0aukbQZ+Gt2fAnGJOPYf7xcPHjWJt16r1lCYNfTnSQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ufaA1AzX;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QafjYkzx;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=62T7NHlbgrWXlF7lL1TuP4BNgTzfVgnItxOxQshOPIU=; b=ufaA1AzXoUB0PV
	krDF8dJLITgIs2yOzD0alUFmeLvkICTzv9w+bH2+lY5zVPXw0e3LzvgGOJpwDaJ1Q72lTHg5BuR4r
	pNpV/S3goZYb8+1BuebNP3GgfliCGHYIJZN+IJGjTS5pIo2/sYZgVUPzW2xznWGS9+0erzCYO5jKt
	y9CQU1F/MQq3E24PCv1UWpiQsysoyMY7QXj6fgfeVWFb3IwZ0w2zBc/dcwBzLYLwxFLfSBFpNAcoo
	pxCpONMLIRBPQ5SRsY0OuLWSWf7Ojbx3eMVM/+NYGh6b0+sai497Qpg/sHHnrJ0wVC3IwaKo2JdzC
	YKoY3hVSKECwAdlvVEmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPZ5-00000008xrt-1iTW;
	Thu, 12 Nov 2026 07:49:47 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPYe-00000008xaF-3jud
	for barebox@lists.infradead.org;
	Thu, 12 Nov 2026 07:49:27 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 900B0200563;
	Thu, 12 Nov 2026 08:49:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794469758;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=62T7NHlbgrWXlF7lL1TuP4BNgTzfVgnItxOxQshOPIU=;
	b=QafjYkzxkOng0N6L4tP70tniKr+jS1NyKUk1BX9WvoqOud+bjgj2DoCy7aBrxtZvrSk2mS
	UW/6ztPkiwjpcMlCYjOULkRhNdt5c3k5awT19tsVScKqiP6XJ8Bt51jUtLF9V6gHleCXOt
	ed9w/Ooh/CeUFL00WyuNQpbvmiIT4C5bPpT1paYkwFSf/qFNF2KyEDWTBNXcqYCODCu2im
	mCvQYQoOk9m+cbW555cbPaSFf8oG984WbjsPRT+AhW669alAlE9IyL/73fpKbTR7Snz0L0
	Bz4JgcullLD8H+0wMioOGhAUlNYS7sDn1knMpaT8Q45eixzx62BcCEYV2cihHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794469758;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=62T7NHlbgrWXlF7lL1TuP4BNgTzfVgnItxOxQshOPIU=;
	b=TqFeXsf0a4LB6ZZlQ5YcPow4rQZ/SbDAi9KpuRxa96IqBVmnKKIrB8LVchnybC6cumBy66
	kJiBHV+flroDajSjXRWfRMRUk+pqdKbJDeZA7ptwNqvGsag9ecfOU+FlpcKe0FHJ+xLPFC
	p1rokF6yqLq85bDuh2UxqMlxiUQ+HElXi9P/Ig9BVnVzqn+JA3n9z9GoDvjQuB4L7Gsikh
	TKAD6IrPQnBagJ623L73PK+zh1CQG0Z3jv0IflAMQwvEu6l/8/sXKqRkjYISGvGSkeMY0x
	JAnEe4nSt6wK/qXmSBVbECy6Q1AvhpLO956zHhU9Xo2CBNa7SpjSo7u3pZtmZg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794469758; a=rsa-sha256;
	cv=none;
	b=OHUIHBidG1N+JklaRXcxSFvKxsBe/urDvJcaRDayftlfKNh1IafRdJva8hsXlVOhE3NAck
	7cA07isOi8yZRG+qAae315mMOhUvoUg8n3Re49N8MJ0Rkcyj4CV8iA+B2j0RpymZzfQ6lE
	rV8qsim2ElfNwaP0qUtx/qR4VilSQSdQ3V3R+r1hNaargktmYIvmegTIK3OL46BOeD4Pos
	rkkyQt6r26YqmS+cBoHeObGzw/NwdxtjlnDBOoTHT8u/YZoODr9ZJixhASv3DqVLJGyQsR
	rDbTi1BFT6/WePnCst7mtyyxJBfT5N2UGVuzI0ZYrGTlXJGdoCKegYXX3TYRlw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <a9513e95-8520-4907-8523-3ad917e9af1a@pengutronix.de>
Date: Thu, 12 Nov 2026 08:49:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/10] bootchooser: use a globalvar scope for its bootargs
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
 <20261030-boot-globalvar-stack-v1-4-a03803e1100c@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-4-a03803e1100c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_234921_982876_1C3AC303 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 10/30/26 11:54, Sascha Hauer wrote: > bootchooser passes
    the active target to the Kernel in > global.linux.bootargs.bootchooser and
    sets it to an empty value again > after booting failed. The varia [...] 
 
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
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
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
X-Rspamd-Queue-Id: 9A542201BFB
X-Stat-Signature: qw5d58diqasjpqqmq4u9ihpnncjq68ys
X-Rspamd-Action: no action

On 10/30/26 11:54, Sascha Hauer wrote:
> bootchooser passes the active target to the Kernel in
> global.linux.bootargs.bootchooser and sets it to an empty value again
> after booting failed. The variable is never removed though, so it stays
> around with an empty value after the first boot attempt.
> 
> Use a globalvar scope instead, which removes the variable again and
> also reverts any other boot related globalvars changed while booting
> the target.
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/bootchooser.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/common/bootchooser.c b/common/bootchooser.c
> index 2a75dfdcc8..2049425ab3 100644
> --- a/common/bootchooser.c
> +++ b/common/bootchooser.c
> @@ -6,6 +6,7 @@
>  #define pr_fmt(fmt)	"bootchooser: " fmt
>  
>  #include <bootchooser.h>
> +#include <boot.h>
>  #include <environment.h>
>  #include <globalvar.h>
>  #include <magicvar.h>
> @@ -846,6 +847,7 @@ static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain,
>  	struct bootentries *entries;
>  	struct bootentry *entry;
>  	struct bootchooser_target *target;
> +	struct globalvar_scope *scope = NULL;
>  	int ret = 0;
>  
>  	entries = bootentries_alloc();
> @@ -857,6 +859,8 @@ static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain,
>  		goto out;
>  	}
>  
> +	scope = boot_globalvar_scope_push();
> +
>  	system = basprintf("bootchooser.active=%s", target->name);
>  	globalvar_add_simple("linux.bootargs.bootchooser", system);
>  	free(system);
> @@ -887,7 +891,7 @@ static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain,
>  
>  	*tryagain = 1;
>  out:
> -	globalvar_set_match("linux.bootargs.bootchooser", NULL);
> +	globalvar_scope_pop(scope);
>  
>  	bootentries_free(entries);
>  
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


