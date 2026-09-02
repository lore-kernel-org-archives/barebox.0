Delivery-date: Wed, 02 Sep 2026 10:44:24 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1gZz-009wq4-2u
	for lore@lore.pengutronix.de;
	Wed, 02 Sep 2026 10:44:24 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7EDAE205858
	for <lore@pengutronix.de>; Wed, 02 Sep 2026 10:44:24 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iBzhpNzZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h5zHfT2SGSSA5FYPCFajOgbXoQGZq8U5Nxb3rSkTNE4=; b=iBzhpNzZxK3wn8Kumzr+pQbNYf
	9iUz8WN/SziA1QNkCg7EW9yryP+vKPuCVT3S28EpEKAIWtxwNJ+eGx1yV6Yk35YXNAk+Wt1MsJuNS
	ekEpUTdbuZFFRXMae5AJEvnn4GPdRxwaltbmIPj4heKzehVxklOuI3gwb0EdvFrhwTM2Y6XMwvL/h
	lk5ftl41FzZfOEaanOu5RgSTSmrblxSOdPC6CP04YtFDCGTr2U4OORTTI5o3v7+vrrcQL83X5avT5
	myZCHjBn0C0E814kHT+EAtsqoBRBO00Uteh58HQzIWXT7c2lBUPlOaMyv4abidKfZrtfV1sjdrwhw
	3SuMr8mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gZ0-0000000E86g-0h0A;
	Wed, 02 Sep 2026 08:43:22 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gYx-0000000E84k-0vuM
	for barebox@lists.infradead.org;
	Wed, 02 Sep 2026 08:43:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8B925201865;
	Wed, 02 Sep 2026 10:43:17 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x1gYv-004YvI-1a;
	Wed, 02 Sep 2026 10:43:17 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x1gYv-0000000FQkq-1jqO;
	Wed, 02 Sep 2026 10:43:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
In-Reply-To: <20260901122834.3004512-1-a.fatoum@pengutronix.de>
References: <20260901122834.3004512-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] defaultenv: don't pass environment path to zero env
Message-Id: <178833859741.3676557.11754066543148243970.b4-ty@pengutronix.de>
Date: Wed, 02 Sep 2026 10:43:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_014319_442808_9BE205D2 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 01 Sep 2026 14:28:31 +0200, Ahmad Fatoum wrote: >
    bareboxenv -z sets ENVFS_FLAGS_FORCE_BUILT_IN, which makes envfs_save() >
    emit a bare header and never look at its directory argument. Passin [...]
    
 
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
X-Rspamd-Queue-Id: 7EDAE205858
X-Spamd-Result: default: False [-57.79 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.98)[99.92%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 9417dmhwggktsnzpbb4onjdrfbt359wb
X-Rspamd-Server: mx1


On Tue, 01 Sep 2026 14:28:31 +0200, Ahmad Fatoum wrote:
> bareboxenv -z sets ENVFS_FLAGS_FORCE_BUILT_IN, which makes envfs_save()
> emit a bare header and never look at its directory argument. Passing
> CONFIG_DEFAULT_ENVIRONMENT_PATH there was pointless, but harmless until
> the Kconfig sync made auto.conf no longer quote string options:
> The result is that the quotes became part of the value.
> 
> This is triggered by OpenEmbedded's barebox.bbclass for example, which
> overrides the option on the make command line in the old, quoted form:
> 
> [...]

Applied, thanks!

[1/1] defaultenv: don't pass environment path to zero env
      https://git.pengutronix.de/cgit/barebox/commit/?id=be574e455b3a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



