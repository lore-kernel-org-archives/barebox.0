Delivery-date: Mon, 31 Aug 2026 10:41:04 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x0xZf-009DDQ-39
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 10:41:04 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3AA19200444
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 10:41:04 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ReHhmzYa;
	dkim=pass header.d=waldekranz-com.20251104.gappssmtp.com header.s=20251104 header.b=eJLGdS2g;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d/v7BHL94YD9+lhAAqy2fZrE63xFCa0sDZSzMAr+E28=; b=ReHhmzYaW5gRfk36wSbDoACunr
	U0XN+/3LT0eC5kLoGdCqbfGwpL7XWOfcn9/gnD22D6vtaBqySrxLgEN0JJtXRFdaOohxDMRYDzUNs
	yLdAgxPiABHLziFtC1odlEKISxa2FRiE2I5Q5CN4BP9y9INqWGPqi7JvBosdWH5M8bCpxF85U17NH
	ugRtvGYTDh63tp/lZRAjjuRzOEb3GUy88rG14d6wPsV9cSjyANCzsuaYFgYvh7c4+Ue/UmWwAS0my
	+0L8nPPWKWH7pJhhIMWfA3A2xLeKCyo2GdiqL5MNAwT0SsxpOaRX0hnwEwLnLcD+6p32UPrkzuFFm
	dhXudk2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xZO-00000008vOX-0oOg;
	Mon, 31 Aug 2026 08:40:46 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xZL-00000008vNg-0nj7
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 08:40:44 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-c1600d040e4so531059666b.1
        for <barebox@lists.infradead.org>; Mon, 31 Aug 2026 01:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20251104.gappssmtp.com; s=20251104; t=1788165641; x=1788770441; darn=lists.infradead.org;
        h=content-type:mime-version:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=d/v7BHL94YD9+lhAAqy2fZrE63xFCa0sDZSzMAr+E28=;
        b=eJLGdS2gtVBXKY2eE7dySHRWEd9XSRZVGPZMq9SGVireaTsT/AxrMMgKupuABx+Hm1
         x6MF+ijrZk9sWIl6u/pN4l8CdpTuSZG3W0lgzuDBNrKclmzfWC7oDOxnUAhZ2tdItHRq
         8vq1iqXE/Py2UNAU2d1OCF+qIGASnREpyfjhQdZqCF7ELtucXpUOa0FWAVKVj6Bccxe+
         HduFfm/ZmxWflnB86TfucANGVoULIZVX6Gsku3pFnZQF9ZkyQiefehLil/3Ab4qz6LDs
         vvEQzj/od6aVexpNG4uoSVR267dXnLbNVh4fbz5czaywm6aYlscnrILSBJPGxntHtlbs
         Q5AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788165641; x=1788770441;
        h=content-type:mime-version:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=d/v7BHL94YD9+lhAAqy2fZrE63xFCa0sDZSzMAr+E28=;
        b=B/aGMxgnOWU4mhvx/bBhqyGvDBxWP9HxRQWqq9xdWTEIbBgfB4i9Ih69h3b7HLzQ2K
         iSCfrtwgoGa3PkB8NKRHifMV1u7ATaJ9It5DEpzx4J01xyBLgNdVpG+nbOCWbfwfuWaB
         8Qn3ISMSqbHbTOlPy/aVUtzTp52OQpkm91PUQDX8LL2uTdQKTD4F6yQW4mBucqmk/3m5
         3iyjfyaKDd0zSbY5YQzUY9FtmSMlSIUDtUdLCTxYEQe+Wsv7unRASy0Kv8FU3kM+tGDP
         oubT9M4AdY9nuLfUAKcQJZWd4V6yFbwwlvsLJ4C5CZjEmYhm2TPmBC1Jm8nLFj7YwXLW
         IvKA==
X-Gm-Message-State: AFuF++mvLIio/CYhdVwoGK4XdLMIpjggYy71HfVeTXXDNcbDnhwM9mFb
	Y3wQDLvRLmjhd2bkefrMHlNHF1N9g/clg3lFcNC5XZKn9iEjXmvMRBANXC4pEKT2xPqMoGiFUya
	ZE1tT
X-Gm-Gg: AR+sD13FQm7xKBwZymN+E2hZ3p5f5yDlzqCMnMs2AodIn75LGVTujJdO8us2gcXdgtE
	V5100pnthGEYzTO8U/pduNTsmcUXb2riske/HEc43aif/sE3STw0IfxYQV/REHKFMOQ2Y5rjXVx
	nSimCTS58C9rI5nvRjNHNj1dOK0ohEXtToNbDckYgDnZiuF4wV8d0U4131gxLRRZbcV7RgUqQtx
	WGq+gVpVTlRR2qsndx32mBcXU22Z4x21vKa6IY7wD77Gw8bjX3hsPM/iMLlTTT+kSWD/2Y27vRt
	1AE4LwY3n9jolJt4iGWDhbmc06LTuHotCD8QApgv8QT4Tzhsw4E1ylPhfv7IJDxbN2uDR59rv7A
	TDhAQmhn74XRI79ka1jtNwZo6pR+JCqRn+FvLZojNO800m7UsrpINdCf2EWPcXphDh3mtuUZshA
	Vxbdwx+d4uzq5gRnPYZn527zzN6Ehj5z65+SD1bJR4vmSXwlF2n577hTQaolyFyUO3jdvf4VMhf
	ncB15wR51k25cLUqlyUFYObMQbL7OFPuy76hg6IgWFY185+30QFq5wIkxnE9STEgQOyxZc17Tsg
	IuA=
X-Received: by 2002:a17:907:9450:b0:c25:4ca3:dfda with SMTP id a640c23a62f3a-c25969351d8mr362127566b.9.1788165640867;
        Mon, 31 Aug 2026 01:40:40 -0700 (PDT)
Received: from wkz-x13 (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a611c38e82sm2937194a12.19.2026.08.31.01.40.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 01:40:40 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Subject: Re: [RFC next 2/2] commands: lvm: inspect VGs, activate LVs
In-Reply-To: <fe4f0bca-9946-4398-9c05-20c3f63d1fd0@pengutronix.de>
References: <20260824183203.3759144-1-tobias@waldekranz.com>
 <20260824183203.3759144-3-tobias@waldekranz.com>
 <fe4f0bca-9946-4398-9c05-20c3f63d1fd0@pengutronix.de>
Date: Mon, 31 Aug 2026 10:40:39 +0200
Message-ID: <87fqzuof7c.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_014043_237230_504C18E2 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On fre, aug 28, 2026 at 14:20, "Sascha Hauer" <s.hauer@pengutronix.de>
    wrote: > On 2026-08-24 18:31, Tobias Waldekranz wrote: >> Provide the most
    rudimentary commands needed to inspect and activate >> [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:62a listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Rspamd-Server: mx1
X-Stat-Signature: hiaw7njk85yg4jopsyj9mpwshqa6fhbu
X-Rspamd-Queue-Id: 3AA19200444
X-Spamd-Result: default: False [-7.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,waldekranz-com.20251104.gappssmtp.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[waldekranz.com];
	FROM_HAS_DN(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[tobias@waldekranz.com,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	FROM_NEQ_ENVFROM(0.00)[tobias@waldekranz.com,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::62a:received];
	DKIM_TRACE(0.00)[lists.infradead.org:+,waldekranz-com.20251104.gappssmtp.com:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

On fre, aug 28, 2026 at 14:20, "Sascha Hauer" <s.hauer@pengutronix.de> wrote:
> On 2026-08-24 18:31, Tobias Waldekranz wrote:
>> Provide the most rudimentary commands needed to inspect and activate
>> volume groups (VGs) and logical volumes (LVs).
>> 
>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> ---
>>  commands/Kconfig  |  11 ++
>>  commands/Makefile |   1 +
>>  commands/lvm.c    | 264 ++++++++++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 276 insertions(+)
>>  create mode 100644 commands/lvm.c
>> 
>> diff --git a/commands/Kconfig b/commands/Kconfig
>> index 08fe544ee1..d7e3bab3f9 100644
>> --- a/commands/Kconfig
>> +++ b/commands/Kconfig
>> @@ -808,6 +808,17 @@ config CMD_VERITYSETUP
>>  	  commands:
>>  	        open <data-dev> <name> <hash-dev> <root-hash>
>>  
>> +config CMD_LVM
>> +	tristate
>> +	depends on DM_LVM
>> +	prompt "lvm"
>> +	help
>> +	  lvm - inspect and activate LVM2 logical volumes
>> +
>> +	  commands:
>> +	        pvs / vgs / lvs
>> +	        activate <vg>/<lv> [<name>]
>
> This is not consistent with the implementation which has "info" and
> "activate" as subcommands.

Oh right, I forgot to update that bit. Thanks!


