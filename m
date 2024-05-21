Delivery-date: Tue, 21 May 2024 12:58:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9NC5-00C8P7-06
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 12:58:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9NC4-0008Pp-FZ
	for lore@pengutronix.de; Tue, 21 May 2024 12:58:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FY9SlLj1CdfjfxJVJiauyQTEl54bUjFCFkqvL7MEsZU=; b=MTanPQ1rUQoNbOlEzXH4S32S+t
	zSgUqPfNgLvKOENXMSq1jaF8twQ/DD0aHdNIU5oEwXncUxxFE2K2p7f18pdJhu48f6cAOytAgTHdd
	FHIB2PXragEbJv3ABxby2SuLi61j7T/MbY6Cjp1sbXsBonPu976+Z9XIsa8V+yFJlNJjc6if/1hn6
	NBtQscNBxsYMSiIhWrppGVaZ10LK2t5BKXZbGWRUQzknuJ2w9rV+W8evB/+mXdHyTpzcoTGBaCEtq
	k7x0P9S+p+caP0kog6xLGamS8HweVDE9rAOnxLnKsebNKHcORzORUGRyBLox/WnZTPuamd0Y9/zRx
	yrE2d2vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9NBf-0000000HClZ-01CR;
	Tue, 21 May 2024 10:57:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9NBc-0000000HCkv-0ylF
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 10:57:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9NBa-0008AT-I3; Tue, 21 May 2024 12:57:38 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9NBa-002NVZ-5C; Tue, 21 May 2024 12:57:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9NBa-008LAT-0J;
	Tue, 21 May 2024 12:57:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240517060944.3298926-1-a.fatoum@pengutronix.de>
References: <20240517060944.3298926-1-a.fatoum@pengutronix.de>
Message-Id: <171628905809.1987896.7574431481813712164.b4-ty@pengutronix.de>
Date: Tue, 21 May 2024 12:57:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_035740_312211_C0C00C07 
X-CRM114-Status: UNSURE (   7.11  )
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
Subject: Re: [PATCH] mci: collect host operation in struct mci_ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 17 May 2024 08:09:44 +0200, Ahmad Fatoum wrote:
> The number of ops implementable by MCI drivers increase due to HS200
> support and will increase more for HS400. Collecting them into a common
> struct makes it easier to specialize them for drivers that support
> multiple variants and makes code more similar to Linux.
> 
> No functional change.
> 
> [...]

Applied, thanks!

[1/1] mci: collect host operation in struct mci_ops
      https://git.pengutronix.de/cgit/barebox/commit/?id=dfef2a2d2792 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



