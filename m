Delivery-date: Mon, 29 Jun 2026 10:49:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we7ge-00B3mP-0a
	for lore@lore.pengutronix.de;
	Mon, 29 Jun 2026 10:49:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we7gd-0005WS-Bd
	for lore@pengutronix.de; Mon, 29 Jun 2026 10:49:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bl9FYQZbgUe0iCdSh3ed7D2OjhYS6AU/lzEVwkUetH0=; b=0RkWsZZE5TEjLIkUtHq3eD7kmo
	cBW/GcOYvqLHCi7WwLdKCZOjF6ca5jxt0W0kWG7Si9kd38XR99CG1M0Z9T6izbtSzIdh+AItdONab
	c1WBdN6XV41gtMqwKrag1OiIyw9Mgcf48EK+/+5ISiL+p6TR5Pq8SFikZysWF3bkjq1YhAc1debxZ
	3IixhDalZXu/pOV/3bnrApJ/LNRLlYLc6y8v2T+P/wLHsg8PqFXMcHx4HkNmUixNQistYt+wLwUVy
	J7eLkstR5oxvf66auH+feScibrAO/6WtBNL61/p9jWd4TAntDIk9u0YQbDkDAfNRaDlMWNwEEJhDh
	6Iz24BlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we7fd-0000000E2D6-3eDJ;
	Mon, 29 Jun 2026 08:48:49 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we7fa-0000000E2CM-3XuD
	for barebox@lists.infradead.org;
	Mon, 29 Jun 2026 08:48:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 537322002FE;
	Mon, 29 Jun 2026 10:48:43 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1we7fX-005DLL-0q;
	Mon, 29 Jun 2026 10:48:43 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1we7fX-00000000iUP-0qqi;
	Mon, 29 Jun 2026 10:48:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260626113132.1557874-1-a.fatoum@barebox.org>
References: <20260626113132.1557874-1-a.fatoum@barebox.org>
Message-Id: <178272292319.171008.3000483984593625707.b4-ty@pengutronix.de>
Date: Mon, 29 Jun 2026 10:48:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_014847_047465_F561EF45 
X-CRM114-Status: UNSURE (   4.78  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ci: container: add FAT image tools to container
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 26 Jun 2026 13:31:22 +0200, Ahmad Fatoum wrote:
> To prepare testing the FAT implementation in future, make the required
> host tools explicit in the test container instead of relying on
> transitive dependencies.
> 
> 

Applied, thanks!

[1/2] ci: container: add FAT image tools to container
      https://git.pengutronix.de/cgit/barebox/commit/?id=36bbc65abe47 (link may not be stable)
[2/2] ci: container: enable rustc and bindgen in container
      https://git.pengutronix.de/cgit/barebox/commit/?id=f44ae82e520f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



