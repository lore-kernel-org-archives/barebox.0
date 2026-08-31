Delivery-date: Mon, 31 Aug 2026 10:40:34 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x0xZC-009DCd-0V
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 10:40:34 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6B7FF200444
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 10:40:34 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=D1mxGzWg;
	dkim=pass header.d=waldekranz-com.20251104.gappssmtp.com header.s=20251104 header.b=Jpx79FrC;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BoZhTfizV3MLLoq/jx0MLdf9ti3X6CkNwkjxJjSR7p8=; b=D1mxGzWgzpHL1Cu/t7PMaSefdY
	bSlT1ym1ICxJvUNN7nTY598YzVekTnPSC53kdMPO764bRlp++nEHsLWFYXrMLDXKH6lTKveOK/6+x
	B6pd0hH1pS20rad/vEJfSVjPtH9vCsPwONtaMhN9QXSyYzMzvmatVnxLqTWmmTCKJoEXnOVF8l+cC
	LHvKZRi5OMZSdkye16zbz/zD6jfSySs5z9PHWMzYLHyC2R/0hCWIFahP4oqh918toq8hmxfYBqmLE
	F4HMK6Wtr8JXw/aO9ocZsF/RkIkFovdLiQrvE+giiKHtYBbSwF/ZLCkMAH5lbGUHH3fRAfHN2LCi1
	Osl+Q49g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xY2-00000008vEG-028W;
	Mon, 31 Aug 2026 08:39:22 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xXz-00000008vDa-3I8S
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 08:39:20 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-69f7fa1c548so4902558a12.2
        for <barebox@lists.infradead.org>; Mon, 31 Aug 2026 01:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20251104.gappssmtp.com; s=20251104; t=1788165558; x=1788770358; darn=lists.infradead.org;
        h=content-type:mime-version:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BoZhTfizV3MLLoq/jx0MLdf9ti3X6CkNwkjxJjSR7p8=;
        b=Jpx79FrC3RbgXGqHvmZPCUTdepcg/z40FCY5VugjWPs/k58Dgg+solgPyN77ooDsnQ
         /9ITh+OsWNHxJAA5eQul8/DktElEs4dzHO6nyxJ9Qaiz1pOcFrAaa+r5/laEMTRfq4Im
         CfkbawSa5hBZji4Ryrz6EPe7XMyIr4ceplwuHYXMcuE0VYaI8fnw+YvRwHt5W9hnierP
         +AOdcrWNVfqHN8GUXvmVz12kC/wk+OxnLvlmTf7h8Cgq8ZD2B/8Ja/Fo+Rx120VtNLBq
         /KeJxQgMNmsOiOQo1TXVxX8+IVZE3E/I9+L2YMpG2sI+tJ+73PJmhpxQUrC8Iz33+kvu
         Rv1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788165558; x=1788770358;
        h=content-type:mime-version:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=BoZhTfizV3MLLoq/jx0MLdf9ti3X6CkNwkjxJjSR7p8=;
        b=oi7Qs33WgelS9KriVncoZqDOR5SbkbV+oPYHCfRmNvG3ASSxACr5vuE/o/NK1QmEwy
         SMqFyxeqtFPUjicNGl0NS8XYLE6VXEBg18bXi1VA2GzcBJOc2VyeNt0YWjGADGOqTkT3
         81zbjmZZo0j23xBaOipfkWYVG3Alxqt+4amMeupMhnFNO+UM7yL0Wj0MzbH1eOprlh7O
         UogBoflZ5r11Psjy3uJo8evRWoHwo6xy+eK/TWy6TOQKiloVwf1Pk+IRfoMk+NkGj6sB
         zCokHW/Sddtk5rrl+d/tHbJgZJvXYlQSF09yB1IZsDNUeCB5NhPemZUC5uj2oMbIexXG
         37Tg==
X-Gm-Message-State: AFuF++kEcbNusjhPhT3TF878q2HqezqGqplIaJ2GKURuMA/f+C1MvTQN
	bAGWJ+f3Rfp2RJVmW7pGTHZlJQjbkCWz9gjhKia60teRwDcz1viDR/eOfDMJI6prBgW+x41z22a
	rjXIg
X-Gm-Gg: AYBFou1Jq7KO012sFRZ0eFkC0eh63jqH4MahsMUiC/rv266c9DrxHF9WcdV7wH2N+5a
	TBxlhGFJh3LShS+gr4Cgz9SGpM1A5W2XhOMxGWynqoj97XpapWRujV2Nr8Qumk5xmiUj7b2IplK
	dOx6kmWiY6ManIW1vIimZcLLCXW+BT+Q6HcR9mYDI3Yge3lHKlYtbHxH8LF21V1meWJrye4kJ75
	9hNzVYCzDnztPKXvgpv8M8JQnhPhwbkeuiOKeOcTSUF6qhXih+nttjle097jcMKISNTUUS4pGOq
	yCue+xB0/l4ZQ9Kb7pNLY/oox+sOgnPOsfOVkcEFbW62OmC1qzkjcvmneIObxIFYBluxCyzit29
	a6c/kqGHHmz6zBv5GlwN6FRsCuiEYR/pY4uvq1wFua2mI/8ntjZx4dtJdpNXcAJfVCblwtaUTWm
	7uQshXAKhxFbziSS0ccmlDIyuW7CfJh6tg+AdyGyJnd9CGE3WI4iEBIxsyprH4KYAYrJPpHBs6a
	7RojwSEWMeXyLhC8S7uKFWWjmdzynkt+yMcSzfvd0FydPxSJWG5VFmS5p9dQOpU8/TJOecm8tiq
	EWM=
X-Received: by 2002:a05:6402:a0ca:b0:6a6:32fa:54f7 with SMTP id 4fb4d7f45d1cf-6a632fa5574mr6908113a12.22.1788165557686;
        Mon, 31 Aug 2026 01:39:17 -0700 (PDT)
Received: from wkz-x13 (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a611c7773asm3340724a12.31.2026.08.31.01.39.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 01:39:17 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Subject: Re: [RFC next 1/2] dm: lvm: Initial Logical Volume Management support
In-Reply-To: <466724b2-2de6-4e41-b546-724dc2bd3d9a@pengutronix.de>
References: <20260824183203.3759144-1-tobias@waldekranz.com>
 <20260824183203.3759144-2-tobias@waldekranz.com>
 <466724b2-2de6-4e41-b546-724dc2bd3d9a@pengutronix.de>
Date: Mon, 31 Aug 2026 10:39:16 +0200
Message-ID: <87ik4qof9n.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_013919_828194_E7323574 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On fre, aug 28, 2026 at 14:19, "Sascha Hauer" <s.hauer@pengutronix.de>
    wrote: > On 2026-08-24 18:31, Tobias Waldekranz wrote: >> + >> +const lvm_tok_t
    *lvm_md_vgsect(const struct lvm_md *md, const lvm [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:533 listed in]
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
X-Stat-Signature: ekbc9yuiwdihcp1xckdsq65x76qbwfet
X-Rspamd-Queue-Id: 6B7FF200444
X-Spamd-Result: default: False [-7.38 / 15.00];
	BAYES_HAM(-2.97)[99.88%];
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
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::533:received];
	DKIM_TRACE(0.00)[lists.infradead.org:+,waldekranz-com.20251104.gappssmtp.com:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

On fre, aug 28, 2026 at 14:19, "Sascha Hauer" <s.hauer@pengutronix.de> wrote:
> On 2026-08-24 18:31, Tobias Waldekranz wrote:
>> +
>> +const lvm_tok_t *lvm_md_vgsect(const struct lvm_md *md, const lvm_tok_t **keyp)
>> +{
>> +	const lvm_tok_t *key, *val;
>> +
>> +	lvm_md_for_each(md, key, &md->tokens[0]) {
>> +		val = key + 1;
>
> Should you check against num_tokens here?

Good catch, yes I should!

>
>> +		if (val->type == LVM_TOK_SECTION) {
>> +			if (keyp)
>> +				*keyp = key;
>> +			return val;
>> +		}
>> +	}
>> +
>> +	return NULL;
>> +}
>> +
>
>> +const lvm_tok_t *lvm_md_find(const struct lvm_md *md, const lvm_tok_t *sec,
>> +			     const char *key)
>> +{
>> +	const lvm_tok_t *k;
>> +
>> +	if (sec->type != LVM_TOK_SECTION)
>> +		return NULL;
>> +
>> +	lvm_md_for_each(md, k, sec) {
>> +		if (lvm_md_tok_eq(md, k, key))
>> +			return k + 1;
>
> Here as well. Fuzzing might indeed be useful ;)

Indeed :) Thanks for the thorough review!


