Delivery-date: Mon, 20 Oct 2025 14:58:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTW-009tmX-08
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:58:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTL-0000Yy-6T
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:58:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4BclwlKQxdch3/4JjhpeaSUo1DaWyag8DBrRsoD6ECE=; b=3aP2fHku0vqplhogbU6nPX7sZy
	3qQxIvjRf55c/TNg1eriJtxf+l9pw9Be8r8yjP0/C/E7mYXJGXirS3oKbYs/GGVNzE2hjW5kN8F7F
	4txA2cyICLDlEykES5rrbhOhOzKWMF8lrPx9eWhqNeY/PC1CUALZHt7TWkkVf6/p5tbXr8Rd/Yxkk
	43hl6L6idJus7SXZEvUO8BIiX2ua+5PkSDEreZ7kh5qO+/A9LPRjHe+I73ee4FRPPD54qtIQVoDGt
	s/X4uv2FQuzoWUm0AcNQF+4StuIH1RO5E1Tyko662U1rRYO/3ax7M8IBSgPw70M24zcQMyebKGIvX
	qdfOKX6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSi-0000000DfC9-37jw;
	Mon, 20 Oct 2025 12:58:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSd-0000000Df4M-2kG0
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSa-0008Bu-Ux
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAnqY-004XRw-20;
	Mon, 20 Oct 2025 13:14:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAnqY-0000000A5MO-2HLh;
	Mon, 20 Oct 2025 13:14:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251015081648.4078283-1-a.fatoum@barebox.org>
References: <20251015081648.4078283-1-a.fatoum@barebox.org>
Message-Id: <176095887853.2403869.668006805803112588.b4-ty@pengutronix.de>
Date: Mon, 20 Oct 2025 13:14:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_055803_721182_2A11E3C8 
X-CRM114-Status: UNSURE (   7.82  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] fs: make dpath always panic on OOM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 Oct 2025 10:16:45 +0200, Ahmad Fatoum wrote:
> This is effectively already the case since basprintf was changed to be
> equivalent to xasprintf. Replace basprintf with xasprintf to make this
> clearer and use xstrdup instead of strdup for the root node.
> 
> All users, except one, didn't bother to check dpath return value for NULL
> anyway.
> 
> [...]

Applied, thanks!

[1/2] fs: make dpath always panic on OOM
      https://git.pengutronix.de/cgit/barebox/commit/?id=d8b66050032b (link may not be stable)
[2/2] fs: add filepath helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=60dd427b634d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



