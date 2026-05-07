Delivery-date: Thu, 07 May 2026 13:23:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKwpb-001woJ-05
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 13:23:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKwpV-0003Qd-Mg
	for lore@pengutronix.de; Thu, 07 May 2026 13:23:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A8bYJ4ZMwv3i4QDL0n7g0R/teuog+i30kEYaIWvdcYg=; b=a09TzR1vPzHzPP3kPpEuXprR6A
	1mK8vXzl7IcXC/xZDtcLpR6Gq/ZyEgIlD+HPTDfuMbYnJ/jSQoNOCR2cJbfELQ7rOTXuejYjNgYvU
	4+j4uQoAbW5w+QG8cnAeFjgZEaj9qdRlkYH915+67ZWld9wHVrV0fgFB2gVgJAU3/Bz6X87ly6UGV
	ZISVTGP/5athDyQLugtZ/6dm3leSWexavhbSfV7YKr1rmizQeW9QA0tKdhJwlH+ClAXjNYlSRwWXO
	dyRPmVdUG/cV6Dx/BNzYLJu67zITz9MsDGuEryDQ/Bs3mO8BHnO297lbj5rr8yNcLEVmKLJWAiohd
	UBnwRugg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwoG-00000003bgU-2e2S;
	Thu, 07 May 2026 11:22:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwoF-00000003bgL-3zIA
	for barebox@bombadil.infradead.org;
	Thu, 07 May 2026 11:22:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=A8bYJ4ZMwv3i4QDL0n7g0R/teuog+i30kEYaIWvdcYg=; b=UhRiuXvbDIBoMa4dorW5b3IT23
	WN4CbRGOxvsVUi9+pKrQTLnmWSlPSJiPiIm4ZjuyssbUfRkr4vTL8H2NxRNdI23zalJ9r7JL0nlH9
	OxRQnNslw+1iz8ukxOujfblvCHl+xGZRS9Gj0MSZ4VD/2RZGGe6eRWLyvffLl7691u9pRvGuerTHx
	RFlgzzBkKQfmCxneMufTbGXpNSqmfrEsTgEAlfsSENqVg2dNIaIyIYL+x3Jo4WegACBkrCzoxpnQF
	CjTJqrj3p1W3pnp+ks5NX7tmD3P8GJuq8yy4bkR0/x36D3JDTmsN0MLUpGpBRUrhU7JY38HH2o5MP
	oLrNFRbw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwoC-00000003LH0-3M7B
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 11:22:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwoC-0002Nv-N2; Thu, 07 May 2026 13:22:24 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwoC-000ufV-0C;
	Thu, 07 May 2026 13:22:24 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwoC-0000000BlzL-1rNs;
	Thu, 07 May 2026 13:22:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260428-env-autoprobe-v1-0-9cdedfa0752e@pengutronix.de>
References: <20260428-env-autoprobe-v1-0-9cdedfa0752e@pengutronix.de>
Message-Id: <177815294443.2806058.18111014126275335788.b4-ty@pengutronix.de>
Date: Thu, 07 May 2026 13:22:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_122225_209466_892AB06E 
X-CRM114-Status: UNSURE (   4.94  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH 0/3] environment: Allow autoprobing env
 devices without CONFIG_INSECURE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 28 Apr 2026 11:24:09 +0200, Sascha Hauer wrote:
> Autoprobing environment devices vie barebox environment GUID currently
> only works with CONFIG_INSECURE enabled. Add an explicit Kconfig option
> for it.
> 
> 

Applied, thanks!

[1/3] environment: Drop /dev/env0 default
      https://git.pengutronix.de/cgit/barebox/commit/?id=88c56ccae7f2 (link may not be stable)
[2/3] environment: add global.env.path
      https://git.pengutronix.de/cgit/barebox/commit/?id=7675489c6ac4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



