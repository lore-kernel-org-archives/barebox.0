Delivery-date: Thu, 06 Aug 2026 15:09:41 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wrxqu-000Bqf-0a
	for lore@lore.pengutronix.de;
	Thu, 06 Aug 2026 15:09:40 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AFC10200F4F
	for <lore@pengutronix.de>; Thu, 06 Aug 2026 15:09:36 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="ljJP/pMO";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kbKhLmwZHsF8d+BpDp97LOzCGJ8sue8zRRCih9LyNyQ=; b=ljJP/pMOeBk3sLX/PTpiKCvaBf
	2QWJoGAa4TGfZMgo6wa63HkOVgdl09GBaM71sTjAcmbN3n5YK0ma2BKB0tH+MRBUuUxQGYNPfXN4+
	N8iH4Qfa/tZoG3/pc2o2oIcwR13kpcxDel2bTR4ZF7wBKxxKszwGfWx/imukahNZtlgee6+0Nkkbg
	mQXQ96IAg4B2Fn6OEG7LjaXOpxE87e1QicYgP9rc+3a34K7PLzFh0VozppxsCDn1qVa9OrGt4k67f
	u7twXSJylyzbYQQk1DPZTGL58NcB7r7ovB3w7QB+Sq2KFGdOLvANZbHnZc4O8t4rRjYKINPmYmYtK
	/8QvydQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrxq9-00000005qzH-26uC;
	Thu, 06 Aug 2026 13:08:53 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrxq6-00000005qyg-27WP
	for barebox@lists.infradead.org;
	Thu, 06 Aug 2026 13:08:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id AD5D1200F4F;
	Thu, 06 Aug 2026 15:08:44 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wrxq0-00065L-21;
	Thu, 06 Aug 2026 15:08:44 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wrxq0-00000009ezV-2PZE;
	Thu, 06 Aug 2026 15:08:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260806112845.3822400-1-a.fatoum@pengutronix.de>
References: <20260806112845.3822400-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH master 1/3] test: kvx: add Labgrid env YAML for
 generic_defconfig
Message-Id: <178602172457.2302237.7052432766863500306.b4-ty@pengutronix.de>
Date: Thu, 06 Aug 2026 15:08:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_060850_699255_D6B94DB0 
X-CRM114-Status: UNSURE (   5.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 06 Aug 2026 13:28:01 +0200, Ahmad Fatoum wrote: >
    We build for kvx in CI, but we don't yet include qemu-system-kvx. > To simplify
    at least manual testing, add a generic_defconfig.yaml > that [...] 
 
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: AFC10200F4F
X-Stat-Signature: c1x6hdm3x6prqfa3hqshtzxeoa67or7j
X-Spamd-Result: default: False [-7.70 / 15.00];
	BAYES_HAM(-2.99)[99.95%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action


On Thu, 06 Aug 2026 13:28:01 +0200, Ahmad Fatoum wrote:
> We build for kvx in CI, but we don't yet include qemu-system-kvx.
> To simplify at least manual testing, add a generic_defconfig.yaml
> that correctly configures QEMU to be able to start barebox.
> 
> 

Applied, thanks!

[1/3] test: kvx: add Labgrid env YAML for generic_defconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=1962405c8e44 (link may not be stable)
[2/3] kvx: select DEAD_CODE_DATA_ELIMINATION
      https://git.pengutronix.de/cgit/barebox/commit/?id=b78c544281da (link may not be stable)
[3/3] dma: fix dma_realloc_coherent compile-time error on kvx
      https://git.pengutronix.de/cgit/barebox/commit/?id=23acc2f11182 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



