Delivery-date: Sun, 25 Oct 2026 22:09:56 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xL5TX-003FfW-24
	for lore@lore.pengutronix.de;
	Sun, 25 Oct 2026 22:09:56 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 72BD4200B9E
	for <lore@pengutronix.de>; Sun, 25 Oct 2026 22:09:55 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=rRBX6bzG;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=mQulX0vp;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("google.com:s=arc-20260327:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792962595; a=rsa-sha256;
	cv=pass;
	b=Rrw7UrxWJT1GXmi0WfxNY8M0djPv4UbvZwYRC5bK3uQG3kWRkE/esmrRHQEWpLr2sL99Bv
	8S2w+uoCH42y2hxrrlbnz96oQKC1VdKcSytmVjh1mlYG98wAdpJHWCS8rxWSUAZEXljZWI
	UiK1E+Rr15wHIB0l5Edy37FTU4fzcDLzkiJBpOXG+vt3JS8t0Q8Q4YhSFrfbsrp/7QXtVX
	GRP6uRYcnOG7e6neHrVxArEDMMPMBUNWBrFpqE5p+jXEaQZwD65cPlmoviYhn7qUMh03wQ
	o+bRtdG7Rw0rDuRcIRLfoWebAsjeedHZFYgJkTMzTBJaMcfXQsOu+Z9g2NYsoA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=rRBX6bzG;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=mQulX0vp;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("google.com:s=arc-20260327:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792962595;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=izDazt0lbRSAgkZHBdB7zEXALqeePHodYN11vPjFlIg=;
	b=g0rh5OTn4b71ZB+QW7YuSFFrlUOkKwJ2pmHc6++aUrYzJqY2ZZ7I/nMpf98wM7OvqxMB4Q
	/SPSqhK+mOIDthOSCth8i3KRw/hTRMTbmXmHz4L+oUEXwDcdfhYHY4cOrVk9ZXrCwmaMKK
	3/HoXzgfiY3RwMTtjDz8ZaZLKTILI9TNRUA2+KBALwGYhlqFuiQWENoQTieETrjk9bbQWS
	w4a1Sw8LwHh0CrJ1GhhEBKFGhk4wCH4ZPtgZmry1ZjY2eA3pgf9dd5vpCnH1iJwdNmxMtt
	gqZIAAchgMmahaovH+hiExtVreUFJHHM0jMFsoURqYp9Z1MRLp78mh24OVQdXg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=izDazt0lbRSAgkZHBdB7zEXALqeePHodYN11vPjFlIg=; b=rRBX6bzGbAyobMvJ3xoiW2h55E
	vrNwUQ0bOPCyPIfv3W/8FIIovExRmpHbOTGFlP8x15AswdtsE5jKvC/eZBqjEWOIiHsPOcD5g6hJm
	+k+guQxgGmLTGMUw2+kseB6fi7kGzM2W9QriV1Y56UYNUcu8vOtPxRiEsNFLgIJa9RxOhtBqJ7arq
	bTriUJ4PqBX5S6y6Q2ITHF3FiiSbuHFeHE/0NMNFOu8GjndMhwehF9yi9JfDGwhJYirxZygdq1EMa
	OO+avFds90UkEthtE6qtNGManF23+TlKgvUxa9vAALRIX+ojYs0Tt9QacQ0BNUkGQ0E2B0eJCEQ+D
	PilPSd3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xL5SD-00000001S2s-2W8z;
	Sun, 25 Oct 2026 21:08:33 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xL5SB-00000001S2T-0kfA
	for barebox@lists.infradead.org;
	Sun, 25 Oct 2026 21:08:32 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-6b45f9ec1ceso499126a12.2
        for <barebox@lists.infradead.org>; Sun, 25 Oct 2026 14:08:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792962508; cv=none;
        d=google.com; s=arc-20260327;
        b=H+vMJaGTfdr+rx1tnIC/86lPArC9cmyRm/QDSBpteZJ2kUAjc3EKCmRXAls8j7Yldg
         FbvbXoMpLP/H3iytrtIi8euurC6EeXcEt9eoarioXMjqeGk7APlYXPvDum97VvCJ1Xn2
         x54opzXdvBgnR9oGqvFhYpf19PcWk3/F4XAi5ImLPH86gIbIFuIE5L5sNrOdKTFBq1JP
         rd3yVt8Yow4KvFXXexRNmtRvdwixYkdskwR5EOW+lOxHJO1ufK/9kwsq/I//EAXm4ISy
         AwsW92tFxYHW+AGasXanKNva+BeA/pBvrBtHwgxLor7YxUg+mJ8zTr6DdGYHZ3jp4v9t
         d0vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=izDazt0lbRSAgkZHBdB7zEXALqeePHodYN11vPjFlIg=;
        fh=nDWr/NGBxypLRpXDDzp3G+TPW5FTTeYIsyMzIh7BKA8=;
        b=IpoJvVRVSxB/lfSpTgxbyuPwfmW9y3HeZEpBBudA8/TPSQs5wWrltfWcIPIE0eA0oA
         Z/iuapwLSj0m72d6jTawlhVKieK3Rua8F8S+SEoLFQJ+ZJs5Rx7kzmdsPmN+1RttexrN
         8Rt0qOzatTnezR+hkED+dkyTuV3jd3+vqesEYwx8aq31a+BUBHaj9zohrHqlThjHOFQD
         elsKvQf3ZLLidLMz3V3+Kyw7vzqZsEZRvV3h/cZ3RH36vHQJlAdYzuaq2RLHovfixqLs
         qO5FfeJJ0gubZvtul6QULsReYZAgaVuzqbyCneoYMQ3hMiIWndm2jgricgRQq5VbP+9j
         H3ow==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792962508; x=1793567308; darn=lists.infradead.org;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=izDazt0lbRSAgkZHBdB7zEXALqeePHodYN11vPjFlIg=;
        b=mQulX0vp1mSKU12TxkGH1HJN+vinh0FAc8EmWvWbky04ZhJY+jVjbPnhet5bOGsx9z
         7OFFC7L4lnXuBKVGN1dfYnGDGaoUqmpMEedLMMiGHyxZ4fMj9dUpakoq8VmxuwvOpKFu
         gxcLAYr8k6ijOn7/O6jEsD4h3wItIgXvDkDVhVQuNF4cVVFHTLC/MWjq2QCm75MZudPT
         I7nwfokwIHY43Vwm9eNC4aW0WobdwDWmcmifRjs1oBMzx0jDKEvD/9EezDvF9My7Twej
         F6u57rVLOzd1ngpgq+ayY4XaVp5FkS/n65tqWBcvRTY2KgDJPXhv745N5lxUuiAIBl7E
         pJtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792962508; x=1793567308;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=izDazt0lbRSAgkZHBdB7zEXALqeePHodYN11vPjFlIg=;
        b=aL7NF/tgkSlccx0Fo106WpRNHcrn3IsSShvRKOrxyRoDsr2i2BGoVqW8KCXoxFep7l
         V7zVKmvts1oH4SpEwW13Y2mSbJDDBL+YkzpZ/7+JaqHqQiMtcyY+FprMgyWGuJjk+l04
         mVOXB69Tdkl8vd+Ri6t32Fi10DdkoevxUbdLw6vgLH0zOQhnva1kWSOdTD/oDXiQk3pN
         yiAK/+HIpb8jCREibf9Pyku/Hc+IHouupubUQl89IZmNk532lNQRhBr804qq3xA05DOK
         Z4gnoaqc4tpd6umPJ765L7/k8fpcNQPJOY+4pc0Crb9mmgWMnssrsxd9vrglC8uzL0p6
         Omhw==
X-Gm-Message-State: AFq9FYICD/OGXCOXjjz/qHXtbxL9dBczYybYGEsC3yC+ksnKCXwNLmQo
	86ZeMNIaM7xJTSjmag7bAo2WoM3vHxUhKLXXI/VmLwVCbxA+TZri2fZgeDQoLsMLkZDnnGQoV4U
	9I98UV/eZxurQzVjGtCgtYn/bdUh3lvhvZd4V
X-Gm-Gg: AYBFou2l425ls2ZmOsIdFenUrI1DiPfNCzCWELp1MMDdLMkprLrOOVBnC/KA8V+P3nM
	wEB0gnqE72U3f6YF9A8+PHatKTVwEYjgwDY7ml5Aj7dw5uJO7seAFj6hxeArLXknuxNlKH0QEmL
	hsDkobkBud9KgevNMaCdPa901Fs6aXLrRFE/4RAR2uyYVE7kjdRMqHiqJ5fWilJNQhn4XCb4bBP
	F9BpAKvnKsv8b2sk4j9+yD0u50HEtltMvinfLm3wCZkp19pmKQjiIMM8VY0f5P3BkaGvFGIWPzU
	oKsZuusIb3/hE2tWGzOermdQbRvn5rwPDzIt5Zh7LULZUNx0CV739sKTaMPUjikpDSqyZTVHZVt
	1D+c8uhmUFvkj0V1KsLTvok5HFoSi0CLIt07G4TUYlmeqtqmNrEcG8AGBBzw=
X-Received: by 2002:a05:6402:1ed1:b0:6b3:c422:9257 with SMTP id
 4fb4d7f45d1cf-6b443000276mr6423634a12.25.1792962508489; Sun, 25 Oct 2026
 14:08:28 -0700 (PDT)
MIME-Version: 1.0
From: Martin Wege <martin.l.wege@gmail.com>
Date: Sun, 25 Oct 2026 22:07:52 +0100
X-Gm-Features: AclHuK9a6ThjOvYCM9FOSELFqmY3HNr9P4fKqsiQwfwiiD95mjvL1RVmqNnqMm0
Message-ID: <CANH4o6M1zvtGcz6fDyWoj5wi3OLzgFJYL1BB52qb-DoCUsWcnw@mail.gmail.com>
Subject: Mount NFSv4.1/NFSv4.2 filesystem in barebox?
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261025_140831_226804_B3E9D7A8 
X-CRM114-Status: UNSURE (   3.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello! Does barebox have support to mount a NFSv4.1/NFSv.2
    filesystem? Thanks, Martin 
 
 Content analysis details:   (-0.7 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:52e listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.5 BAYES_05               BODY: Bayes spam probability is 1 to 5%
                             [score: 0.0178]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [martin.l.wege(at)gmail.com]
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 72BD4200B9E
X-Spamd-Result: default: False [-7.64 / 15.00];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	BAYES_HAM(-1.93)[94.60%];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[google.com:s=arc-20260327:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	SUBJECT_ENDS_QUESTION(0.20)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinlwege@gmail.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::52e:received]
X-Rspamd-Action: no action
X-Stat-Signature: ui4kc3pxjyz8cehyt6fyyp936z6rykxb

Hello!

Does barebox have support to mount a NFSv4.1/NFSv.2 filesystem?

Thanks,
Martin


