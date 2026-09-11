Delivery-date: Fri, 11 Sep 2026 16:12:42 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x51ze-000yFg-11
	for lore@lore.pengutronix.de;
	Fri, 11 Sep 2026 16:12:42 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=PYAoE6t3;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2300E205A28
	for <lore@pengutronix.de>; Fri, 11 Sep 2026 16:12:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3X2q18UHybcEjHVkISF3NwUFc4zvM/MyWmYzeHxPzuQ=; b=PYAoE6t3tDvPc5dxz7QlGiaJXT
	A2cBBDMrEFznQlEDqYIVhelZMj2razp6RVfhm5RHxUYwnOKwJopL0EATtIF/+PEfAnpLNPJvO6H+J
	/GIbUccGrWlD8Udwa/je8lUiRSKemODc9785Xoeq9QmYjPQ6ArE1UYXLOrlGIRVFAxyehh4tJvANC
	6Sglr5r3QqCa/5+8blFBLCKdsGWnMimJ/syBADwOeuPg8Z4Gu7UuYmSPS6bS/e8fc7MPnBHdFqg+w
	vzNOAWWD5DCjtxpKRylh22avOmQISuYc1F97xcoylN1MU7idJGsPzkjayRw1NBUkzBoyJukoC6Rbg
	Px1fzokQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x51yW-0000000GsJo-0U7W;
	Fri, 11 Sep 2026 14:11:32 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x51yK-0000000GsCu-1TjI
	for barebox@lists.infradead.org;
	Fri, 11 Sep 2026 14:11:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 62FB320268F;
	Fri, 11 Sep 2026 16:11:18 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x51yI-000QvK-11;
	Fri, 11 Sep 2026 16:11:18 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x51yI-0000000A9oL-0jJY;
	Fri, 11 Sep 2026 16:11:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Bruno Produit <bruno.produit@trailofbits.com>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20260909-fix-gpt-parser-v1-1-ce1758be604a@pengutronix.de>
References: <20260909-fix-gpt-parser-v1-1-ce1758be604a@pengutronix.de>
Subject: Re: [PATCH master] partitions: efi: reject partitions with
 negative size
Message-Id: <178913587817.2420977.15009312985014984761.b4-ty@pengutronix.de>
Date: Fri, 11 Sep 2026 16:11:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_071120_549930_6FFF150D 
X-CRM114-Status: UNSURE (   5.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 09 Sep 2026 17:29:34 +0200, Stefan Kerkmann wrote:
    > Previously the GPT parser accepted a partition whose ending LBA is > smaller
    than its starting LBA. The sector-count calculation then wrap [...] 
 
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
X-Rspamd-Server: mx1
X-Stat-Signature: fkwkacwzwya9cgb4arsjr79e1c71fx9o
X-Rspamd-Queue-Id: 2300E205A28
X-Spamd-Result: default: False [-57.71 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.90)[99.56%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action


On Wed, 09 Sep 2026 17:29:34 +0200, Stefan Kerkmann wrote:
> Previously the GPT parser accepted a partition whose ending LBA is
> smaller than its starting LBA. The sector-count calculation then wraped
> and registered a partition with a negative file size. This is invalid
> and caused out of bounds reads in the bootm 4-KiB image probe on 32-bit
> systems.
> 
> 
> [...]

Applied, thanks!

[1/1] partitions: efi: reject partitions with negative size
      https://git.pengutronix.de/cgit/barebox/commit/?id=21b8d0054c1a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



