Delivery-date: Wed, 01 Oct 2025 10:31:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3sFL-0034a4-0q
	for lore@lore.pengutronix.de;
	Wed, 01 Oct 2025 10:31:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3sFK-0007j6-Ob
	for lore@pengutronix.de; Wed, 01 Oct 2025 10:31:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tbje1KVXx8op688O9e4oZnrib6SrkRDBU9dIwoNLHig=; b=TkpUMxYvsF7eehGAJHS9ZHjrf7
	/fotpieL4KaCSWiQpFi8ngdOSA7kej/PlqfjXl4wMsc9cLMp/XFwzfgm7s9XForTc7xoixtuKdleo
	DdjnZzW5sLa2l4fTlfjuOn+jhP2vAWdPvtlGvTSjmzVS8a7amJ1vGR9IEAR5lrRdMI1+bA2Pbpk6h
	eaAkSjyZHJmujiz1x0UKuYCXMtIQUEsyODO9HTyPrRU+Q1DMD1KBC6Ab2Rq12U5eB96/JQef9K5uS
	v5gcRK8I+u1E0T+x9ndaN8+gAMGiBn9Llhpn70FDVjsjj6/iQDgQLJWMEhv01VRvK6R0QxXhIv7b8
	CCZsNygQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3sEu-000000071tg-1dAJ;
	Wed, 01 Oct 2025 08:31:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3sEs-000000071st-1t3d
	for barebox@lists.infradead.org;
	Wed, 01 Oct 2025 08:31:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3sEr-0007bM-2J; Wed, 01 Oct 2025 10:31:05 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3sEq-001NnM-2M;
	Wed, 01 Oct 2025 10:31:04 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3sEq-00000001u1A-2oVY;
	Wed, 01 Oct 2025 10:31:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Thorsten Scherer <t.scherer@eckelmann.de>
In-Reply-To: <20250930112140.45620-1-t.scherer@eckelmann.de>
References: <20250930112140.45620-1-t.scherer@eckelmann.de>
Message-Id: <175930746466.453364.7934427389083566624.b4-ty@pengutronix.de>
Date: Wed, 01 Oct 2025 10:31:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_013106_490689_B0A4B7E3 
X-CRM114-Status: UNSURE (   4.72  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc3: am62: Fix name of driver struct
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 30 Sep 2025 13:21:17 +0200, Thorsten Scherer wrote:
> 


Applied, thanks!

[1/1] usb: dwc3: am62: Fix name of driver struct
      https://git.pengutronix.de/cgit/barebox/commit/?id=58a932efcb8d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



