Delivery-date: Thu, 23 Oct 2025 09:59:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBqEV-00AtEB-2h
	for lore@lore.pengutronix.de;
	Thu, 23 Oct 2025 09:59:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBqEV-0001LL-AB
	for lore@pengutronix.de; Thu, 23 Oct 2025 09:59:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I52F9dJDMIyZ+pYmeeWFkEyo/2rMzZWIAmz+7/zvC1g=; b=sWgunH8yfhKnVi+IkfXZwC641K
	lePjMLk8qacaQSLfouAL+VT5tCNFSmn5No7/ZjLx4bCLqdOwK5hGopqQ60fTqb4q7hhNxkHf0qOa+
	Wpp/O92mB87S6qKcspf2koPMtGIL1v+OAyX+co58hKbqxE33G2VWXwsOvulLSM6UxNJvNsbeSPqUY
	hL/2x2ggBEEwZXuaUiyI60gRtMr0oI8WJIQue1h8GSeqPy6fLGrby8Hc+idgi9W0MuVAqgbOYhJ55
	leBv9uwIDC+gOCyumLww6bRyhFEF0sB1d3Rth8/VE7Dhxfj6MQSibI2wlUGfDdaZhbFNJdcwqCDHn
	AZaW3ViA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBqE4-00000005Rkw-2NSa;
	Thu, 23 Oct 2025 07:59:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBqE1-00000005RkS-3nGW
	for barebox@lists.infradead.org;
	Thu, 23 Oct 2025 07:59:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBqE0-0001BM-3r; Thu, 23 Oct 2025 09:59:08 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBqDz-0051Qr-30;
	Thu, 23 Oct 2025 09:59:07 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBqDz-00000004mo8-3eIw;
	Thu, 23 Oct 2025 09:59:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251020182841.590206-1-a.fatoum@barebox.org>
References: <20251020182841.590206-1-a.fatoum@barebox.org>
Message-Id: <176120634786.1140879.1658847254082738843.b4-ty@pengutronix.de>
Date: Thu, 23 Oct 2025 09:59:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_005909_965416_65D807BC 
X-CRM114-Status: UNSURE (   7.05  )
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
Subject: Re: [PATCH 1/3] test: py: dm: skip test if veritysetup command is
 disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 20 Oct 2025 20:28:36 +0200, Ahmad Fatoum wrote:
> The test depends on veritysetup being available, so skip it if this is
> not the case.
> 
> 

Applied, thanks!

[1/3] test: py: dm: skip test if veritysetup command is disabled
      https://git.pengutronix.de/cgit/barebox/commit/?id=4566090bd769 (link may not be stable)
[2/3] test: py: network: skip test if tftp command is missing
      https://git.pengutronix.de/cgit/barebox/commit/?id=a8d6203e8a23 (link may not be stable)
[3/3] test: py: fix pycodestyle warnings
      https://git.pengutronix.de/cgit/barebox/commit/?id=1e3961ae1ddb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



