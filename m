Delivery-date: Wed, 02 Sep 2026 10:46:49 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1gcL-009wrn-0W
	for lore@lore.pengutronix.de;
	Wed, 02 Sep 2026 10:46:49 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BF91B2016CA
	for <lore@pengutronix.de>; Wed, 02 Sep 2026 10:46:49 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=c2blZJr6;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sTVx5OAWk6eKVKEgy7Ozj0u27HqltsU2xs6F8mgzfjE=; b=c2blZJr6pVJI4KOLuyi4Iw41WM
	jOQjXxTh5AiwOf8JEqR1j/THZYDOb6X6cpMeU0yFGRlbZ9+CcAtvSmeERiV0LDIlV7MlVQWoSL5xs
	iaJnAcRMLZab3p1ySFK73Wj8K+o51BmlrnHrDIghQMPsWeKMzXJBFMqOJI5mwcNOpcx1o1ggSIS4i
	9dTE17+J2Rzk4yces3cwJj4GJif5E0ilOWUSB8Ju1Mi+i08Cba3LK0HwpNQLESRc3vlE76+QAICAT
	HvzgamdLJT4WiwyvRspcgMAsrc1XS4Q/7MCYV4l79oY5UmvyG7UeOOefq/vwSb4G6iyAE1VmRamC5
	6LfRTdGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gbG-0000000E8fG-2cVB;
	Wed, 02 Sep 2026 08:45:42 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gbC-0000000E8eO-45Mp
	for barebox@lists.infradead.org;
	Wed, 02 Sep 2026 08:45:41 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 08C2C201BCA;
	Wed, 02 Sep 2026 10:45:36 +0200 (CEST)
Message-ID: <27d45798-6876-4e70-b2e0-9ddcf3f9a732@pengutronix.de>
Date: Wed, 2 Sep 2026 10:45:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] defaultenv: don't pass environment path to zero env
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
References: <20260901122834.3004512-1-a.fatoum@pengutronix.de>
 <178833859741.3676557.11754066543148243970.b4-ty@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <178833859741.3676557.11754066543148243970.b4-ty@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_014539_161327_6556A419 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Sascha, On 9/2/26 10:43 AM, Sascha Hauer wrote: > >
   On Tue, 01 Sep 2026 14:28:31 +0200, Ahmad Fatoum wrote: >> bareboxenv -z sets
    ENVFS_FLAGS_FORCE_BUILT_IN, which makes envfs_save() >> emit a bare header
    and [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Rspamd-Queue-Id: BF91B2016CA
X-Spamd-Result: default: False [-57.51 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 6ohugsud7dpzjtxxr7ign5gtyo4j8tkh
X-Rspamd-Server: mx1

Hello Sascha,

On 9/2/26 10:43 AM, Sascha Hauer wrote:
> 
> On Tue, 01 Sep 2026 14:28:31 +0200, Ahmad Fatoum wrote:
>> bareboxenv -z sets ENVFS_FLAGS_FORCE_BUILT_IN, which makes envfs_save()
>> emit a bare header and never look at its directory argument. Passing
>> CONFIG_DEFAULT_ENVIRONMENT_PATH there was pointless, but harmless until
>> the Kconfig sync made auto.conf no longer quote string options:
>> The result is that the quotes became part of the value.
>>
>> This is triggered by OpenEmbedded's barebox.bbclass for example, which
>> overrides the option on the make command line in the old, quoted form:
>>
>> [...]
> 
> Applied, thanks!
> 
> [1/1] defaultenv: don't pass environment path to zero env
>       https://git.pengutronix.de/cgit/barebox/commit/?id=be574e455b3a (link may not be stable)

Please also backport to master.

Thanks,
Ahmad

> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



