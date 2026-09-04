Delivery-date: Fri, 04 Sep 2026 12:37:14 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2RIH-00AhXS-2O
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 12:37:14 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=qC4C2KpV;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=iizVJXyj;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EBE0E20583D
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 12:37:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=13KKzw8quFWvSn8TMiFx+e7uZdthoj9L4NSWWJPsrig=; b=qC4C2KpVkJT33LuRjo3L72XAhF
	4EdWpgBYzjBqnmYu+Uxt3veMCiOzj5Xx6rIsrZg/krhibsiyVD9oDygKVNZtqDOlD5Vb+I9MidnLD
	ElHwD+aEUatxmPaUzxSiIE8Rwx1A0N+IQCmNzZCHPJ2Lp43UTMm24w4u33q1yWTD4+zNXguED51+5
	GLArxicxCDUg2K1lmld10eUPlmGQbks0Ey5lkogjMp56o9t5ti1Em45+dEGZQORVUkS9bnTK69EO4
	NNHI5+8Lt/ldn/jBYBXoUFY266X0nVQuov0gBqTFNl4t3KxfVK0iUIwSX4PGxiVjAZ9GsP9+p9a/L
	UN4nfM0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2RHv-00000001hR3-1TeU;
	Fri, 04 Sep 2026 10:36:51 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2RHs-00000001hPq-2ByJ
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 10:36:49 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-47fe89fb333so510637f8f.3
        for <barebox@lists.infradead.org>; Fri, 04 Sep 2026 03:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788518206; x=1789123006; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=13KKzw8quFWvSn8TMiFx+e7uZdthoj9L4NSWWJPsrig=;
        b=iizVJXyjivaFJ5U14/2ptaYcToKdubxASTdPqkMY518ap4l5BuEItjLF75vo1GUA6a
         L+eENamP/etlDQE11xVx5rlm7c+cJre78p8qgYYoX2msc18sCjqbU7o3HhDCVm8s3DJT
         xHxN7efCqRFBTzAQdZ/Ig3KaTg7s44DvRKzXWQBM+PTbnjFPnBViAbkrMKsXpYsbD6nH
         a6Gwgu+hwBC631oHY01y3fAOggHPwAyknBhHDIuCHb1SFpnDT+JXKGOFOpUuzpk3EzpX
         evQeOPsSb0r1fVv7h2LMSPJ4agXkvUUm/su7hZg7CT2hfKo7ZFSsX1B1mUDn6Vn74JUN
         2Mwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788518206; x=1789123006;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=13KKzw8quFWvSn8TMiFx+e7uZdthoj9L4NSWWJPsrig=;
        b=olrqq8/3Wqtg8oENNIDu5Gql79FrkDV3hakgGnPgZUPfXU6uoYecmTtgrBbw/LmVAg
         H7Xk4QJjcf8+g0Lhygj00SGCqj3mHHZIhrRS68NqRv+xUWG7k25XBwRx+5iEFA7B9Hp8
         M5Ik4JEKGub56IPdF1RdYl2uco0jcOTvNEcUZn1vyXCLJqop6lkEiBZZbPaUmuam1FZz
         WRzke6WVbNy0bhO5zJp0+IQmJloC4k52Uul2+m9JTvytCJR0AAuXmHWrpU8URr02WVAy
         6hTJXQPQoalA8tArFYvaWK4ncilZOUsdxDamGjwEVkH+mVq4oqsSD6hQLukTmwERs/h7
         B8Pw==
X-Gm-Message-State: AFuF++lMMCFcsKS28pqt7Mkb6Tv9dDqOHKnVB0MfdFjkNEvh7NLvojgr
	+bslS9vtMg81PymInDpjieKv7bXMSGGXeCWLD8ZMinCCPg5iKBLyGuyd3ia/Yg==
X-Gm-Gg: AYBFou08+fCzepnquZgXK4cWMF3DXYJ7uZPdBHLsImWFn1cQPFn0tmJrs1R0klmruVS
	NwmH93VhH2gE3row0Ei8xDKIddh/1MYm6p0gRtWTq86cH2XlZFeNHA2bgHObRcQ43piJHqS/9nM
	d7nXrZVNhpxyIUc9+kl/wJyxhAsM1SKG8lK6HSemTQgK5+V8u8Z+Cr2oRRTsbcGCO+7fBW1gitx
	McTwmTcSwOimccm5fFnyyht2FTCWx2eXpPmB9o6/QK/rujA5sHyME0XgHINatl/WsVYBRG4DK4N
	aPssIPbKgCcrro86oAuAgeMhuflaMen2wftHB10BcBnap1/oqXAsJtC2HvQLJPdIx/4h3BOi09z
	dGm7yiFOXrvpPnX3onELzCSS8mW/Y/V0u103vfrHD2BldY6TaK1bgqGLNMlSeKwHQGz5EsD7sWc
	3ENv6FWRY1zKdLct7N0xUUTW8TIaAP6KSFhrcatz33xMi92qL1n97ntGRkK6pFqZcQsSRvC5pDr
	s6m7IrYS0jcpvpgPks/0Cwxeudx6ENuoljSjS14ntXy4NVOIC8UC3DGZNGB+oWgY4Z7uVdc9i52
	UtFQfNJtnJIr+Jq33OtOc5EIE07BpV5WljX1W5MRsnya4j3cXRg5lotSpMhQX21cEadz
X-Received: by 2002:a05:6000:25c4:b0:485:8a47:5b84 with SMTP id ffacd0b85a97d-4858a475c77mr2899180f8f.33.1788518205941;
        Fri, 04 Sep 2026 03:36:45 -0700 (PDT)
Received: from ?IPV6:2a02:8388:e6ca:5780:1d0d:b738:33a6:feb6? (2a02-8388-e6ca-5780-1d0d-b738-33a6-feb6.cable.dynamic.v6.surfer.at. [2a02:8388:e6ca:5780:1d0d:b738:33a6:feb6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48588390e30sm5457326f8f.7.2026.09.04.03.36.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2026 03:36:45 -0700 (PDT)
Message-ID: <05911a23-dec7-4bb2-a730-8d4aa1c09834@gmail.com>
Date: Fri, 4 Sep 2026 12:36:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 0/6] Add Raspberry Pi 5 initial support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20260901-add-rpi5-support-v1-0-129784fe06fa@gmail.com>
 <7412fd8e-bd3f-4945-a75b-209f097e64a9@pengutronix.de>
Content-Language: en-GB
From: Andrei Lalaev <andrey.lalaev@gmail.com>
In-Reply-To: <7412fd8e-bd3f-4945-a75b-209f097e64a9@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_033648_576786_B3A63283 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 04.09.26 11:38, Sascha Hauer wrote: > Hi Andrei, > > The
    series looks all good to me. You sent it as RFC so I won't apply > right
   away. So my only C would be: do you want me to apply it? > Hi Sascha, 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:429 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [andrey.lalaev(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: am18airr3wwaap8u5rqrh4jmd17bdh98
X-Rspamd-Queue-Id: EBE0E20583D
X-Spamd-Result: default: False [-4.91 / 15.00];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	BAYES_HAM(-0.00)[34.04%];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[andreylalaev@gmail.com,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[andreylalaev@gmail.com,barebox-bounces@lists.infradead.org];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::429:received];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	FROM_HAS_DN(0.00)[]

On 04.09.26 11:38, Sascha Hauer wrote:
> Hi Andrei,
> 
> The series looks all good to me. You sent it as RFC so I won't apply
> right away. So my only C would be: do you want me to apply it?
> 

Hi Sascha,

To be honest, I marked it as "RFC" only because this is the first series
I've sent that is longer than 2-3 patches. So I just expected there might
be some issues :)

If there are no further comments, I would like to have it applied.

Thank you!

-- 
Best regards,
Andrei Lalaev


