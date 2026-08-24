Delivery-date: Mon, 24 Aug 2026 15:02:00 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyUJL-006hp4-0l
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 15:02:00 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C7794201B9A
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 15:01:55 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=sV2FzzYC;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kw05SzhAB6qDmEv7mzlQGK4r56JS6YRwVXv3gs5Z6a4=; b=sV2FzzYC8e28ar4WvWZhlvRU9z
	jn/AhJOtnjuA64IURkVupuYppLEbVwLZKleDPDNKKNrDjvK5O4j81uM30Yj6gkx3qUe9fH8CzEFcI
	YyZdzrfU8bLWozF/pep3LWtQ8y+YLRqK605GLKf2flLjGgW4KBm0W45vywBh/12t7bSkKQKxHUaz6
	cOOhlJbVOveeRw/Vcn7mV6utU8mp+wgtXFFYENkaU4AzIDE+ScFDA6y6UPclPTI4JbKQaKk2m8+1X
	8A8iBBNcfaHxnm8+QKs5Fcj+dTPA4LHJNcLgIyu2d+xb1mm9eD3Phs4wcjvA5hWnOaym9NhRUmJX1
	Ms6XC7DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyUI6-0000000GefM-13eN;
	Mon, 24 Aug 2026 13:00:42 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyUI4-0000000Geej-1icF
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 13:00:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B7A65200740;
	Mon, 24 Aug 2026 15:00:38 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyUI2-0036jK-2A;
	Mon, 24 Aug 2026 15:00:38 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyUI2-0000000C9B7-2WTY;
	Mon, 24 Aug 2026 15:00:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
 Jaipaul Cheernam <jaipaul.cheernam@est.tech>
In-Reply-To: <20260824122137.3561601-1-a.fatoum@pengutronix.de>
References: <20260824122137.3561601-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH master] scripts: make build compatible with OpenSSL
 v4.0
Message-Id: <178757643859.2895184.11463663322546167637.b4-ty@pengutronix.de>
Date: Mon, 24 Aug 2026 15:00:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_060040_608397_C0F280CE 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 24 Aug 2026 14:21:06 +0200, Ahmad Fatoum wrote: >
    In addition to normal key files, rkimage supports resolving > pkcs11 URIs
    via both OpenSSL providers and engines. > keytoc only supports engi [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 61gkjo6hgiaf3inycgmhb7nmgusnt81q
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: C7794201B9A


On Mon, 24 Aug 2026 14:21:06 +0200, Ahmad Fatoum wrote:
> In addition to normal key files, rkimage supports resolving
> pkcs11 URIs via both OpenSSL providers and engines.
> keytoc only supports engines in addition to keyfiles.
> 
> OpenSSL v4.0 removes engine support failing the build of these two host
> tools[1]. Define OPENSSL_ENGINE_STUBS[2], so the engine functions return
> errors and the fallback path, if available, is taken instead.
> 
> [...]

Applied, thanks!

[1/1] scripts: make build compatible with OpenSSL v4.0
      https://git.pengutronix.de/cgit/barebox/commit/?id=7152488b9548 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



