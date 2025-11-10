Delivery-date: Mon, 10 Nov 2025 09:12:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIN15-00HJP9-2w
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 09:12:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIN15-0004UK-CR
	for lore@pengutronix.de; Mon, 10 Nov 2025 09:12:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JcYx2RKNnHtIkubgMN0Dhd5Eh3W8+OgNuUuQ+R6EIkw=; b=pJ/NXkPwDK3LHEA4ZM1O9myBI7
	4WCMmuhLxcQUEq1J4plFxfPu8EFMHJsiHHgIzh44rOxW+FOr2gzHz/XK1QOu3qKigDT+gUHFLccRJ
	dLj64rvdqp9kTzuRo4yD/qXNfHK541FqfJoN1DtOUTlC82kIpdMoQzK1cXIiXKCbpM7i2zw3nOOXK
	XpTTJglJEp2Naj0yCx3jtMddxVA768BW+TX3jxzaT0YrJX4tPWsXHHRzz7py8gD8IVnFqfxznjuKP
	4NVM7yowDKk9487WLses1kl9Ji8/lMu+qJT8g68Z3enSrCdOVUUWJ1OnH8AeOToqnNqI+KypvsrXe
	9w5FUW+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIN0V-00000004x7A-2RzF;
	Mon, 10 Nov 2025 08:12:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIN0S-00000004x6R-1pL4
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 08:12:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIN0P-0004HT-Bk; Mon, 10 Nov 2025 09:12:05 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIN0P-007zCo-0P;
	Mon, 10 Nov 2025 09:12:05 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIN0P-000000048GS-29fS;
	Mon, 10 Nov 2025 09:12:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251027075438.2480311-1-a.fatoum@barebox.org>
References: <20251027075438.2480311-1-a.fatoum@barebox.org>
Message-Id: <176276232506.985046.11225171524975607876.b4-ty@pengutronix.de>
Date: Mon, 10 Nov 2025 09:12:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_001208_477504_BC6BD11B 
X-CRM114-Status: UNSURE (   7.89  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH RFC 1/3] lib: add talloc for overlaying a tree onto
 allocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 27 Oct 2025 08:54:32 +0100, Ahmad Fatoum wrote:
> Talloc is the hierarchical allocator used by Samba, which keeps all
> allocated buffers in a tree, where each child may not live longer than
> its parent. When a parent is talloc_free'd, all its children are as
> well. This can simplify memory management a great deal.
> 
> In barebox, this can also be used to implement devm_.
> 
> [...]

Applied, thanks!

[1/3] lib: add talloc for overlaying a tree onto allocations
      https://git.pengutronix.de/cgit/barebox/commit/?id=9c35b3c2ac7e (link may not be stable)
[2/3] test: self: add talloc selftest
      https://git.pengutronix.de/cgit/barebox/commit/?id=2e65ba56f3ee (link may not be stable)
[3/3] hush: fix memory leaks
      https://git.pengutronix.de/cgit/barebox/commit/?id=f86d68979fa6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



