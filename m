Delivery-date: Wed, 20 Aug 2025 14:19:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohmU-002cEY-26
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 14:19:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohmT-0007qT-FE
	for lore@pengutronix.de; Wed, 20 Aug 2025 14:19:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eiVIwu5mxZ6+TLXqFDXcMZeRRyBpkBLTtUOSGj/Dek4=; b=uBt9MH+1CjGlxe22FFNjE5fxNi
	UW7g4g0zHodkaZh0Wg8mwN7efuOqCEzkHmEwySiPxlpF4p7TOcdoMfLwq2G+x6tYmD0O2ZFUhrCly
	uJGfzc9UNJj08HUHIf7kxAxk5muK2KTGMV36DwDnZsIevrJGdnmh3SKY1MbeE1iF6EGa1wW1PRtaL
	nplV/hIZd0PT5j8GfPLx2FSQEaTvRv1BAbg1zTc28QqpLKngwvAmd9iXhXMoxs3a5cTZf0nLS/Kc0
	FVdQ4OgKz+bPv6EAqLp9P0c3u+OvEKwx7/J0yAu5g6Ua3qG0+95qd/tifuGcjUHsh8MVkgCTszrr/
	1WLa+DTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohmE-0000000DXAo-3qZc;
	Wed, 20 Aug 2025 12:18:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofqg-0000000D6h0-3AWx
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 10:15:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uofqd-0004tp-TV; Wed, 20 Aug 2025 12:15:15 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uofqd-001EEB-2L;
	Wed, 20 Aug 2025 12:15:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uofqd-004ztT-2B;
	Wed, 20 Aug 2025 12:15:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250819121422.3952695-1-a.fatoum@pengutronix.de>
References: <20250819121422.3952695-1-a.fatoum@pengutronix.de>
Message-Id: <175568491567.1190776.12505925632217847332.b4-ty@pengutronix.de>
Date: Wed, 20 Aug 2025 12:15:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_031518_793679_A36EFDA0 
X-CRM114-Status: UNSURE (   6.10  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: drop unused ARM_USE_COMPRESSED_DTB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 19 Aug 2025 14:14:22 +0200, Ahmad Fatoum wrote:
> The new USE_COMPRESSED_DTB option is selected unconditionally for ARM,
> so drop the stale selects to the old symbol.
> 
> 

Applied, thanks!

[1/1] ARM: drop unused ARM_USE_COMPRESSED_DTB
      https://git.pengutronix.de/cgit/barebox/commit/?id=103423f97606 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



