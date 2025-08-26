Delivery-date: Tue, 26 Aug 2025 07:08:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqlv8-004bfC-2G
	for lore@lore.pengutronix.de;
	Tue, 26 Aug 2025 07:08:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqlv7-0000ZJ-EL
	for lore@pengutronix.de; Tue, 26 Aug 2025 07:08:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EZVR6o/HeIuM3fxheQpUcTpS7iW5lanZDyslm++Z1Ng=; b=HF/Amt91D41CQmclwOUSMEhkpR
	MSF3xaaKqlrh+563SrZ/95u/99bDOGUK/quuJoekwCekpj+tGTHuM+ccvhGUNcivfOtAJ7mocrkba
	q3T2zF80OAI47Y/pkzyb/bo3dbM+2quLc6FqbUdxRBRb1e1dxeTE3rZfPYvXi9nLToC2afYTC2VR7
	g/2LZYN5UUyctw747b/3QPjwMEdqsgyhoqxNWFhJ8lUgnKnJDU0BCl/QPzsRS75//cu6jAqqCq/i7
	RTSbbPMznYeR1gxmYETKJi/oPGXOnONpzCEmJhkfQldxKgP9wZg6ucbqcVJ3BBYf72l5MbXCYe7w6
	5hK1YN9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqluL-0000000AYOa-3tYd;
	Tue, 26 Aug 2025 05:07:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqluH-0000000AYNw-3cPP
	for barebox@lists.infradead.org;
	Tue, 26 Aug 2025 05:07:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqluG-0000P0-3e; Tue, 26 Aug 2025 07:07:40 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqluF-002AzD-2z;
	Tue, 26 Aug 2025 07:07:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqluF-0000000Cbln-3edI;
	Tue, 26 Aug 2025 07:07:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250825121152.197198-1-eagle.alexander923@gmail.com>
References: <20250825121152.197198-1-eagle.alexander923@gmail.com>
Message-Id: <175618485986.3005001.13054809047793058147.b4-ty@pengutronix.de>
Date: Tue, 26 Aug 2025 07:07:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_220741_902835_D6D1FFA3 
X-CRM114-Status: UNSURE (   5.11  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: bootm-fip: remove redundant variable declaration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 25 Aug 2025 15:11:52 +0300, Alexander Shiyan wrote:
> Remove shadowed variable declaration inside the loop
> 
> 

Applied, thanks!

[1/1] arm: bootm-fip: remove redundant variable declaration
      https://git.pengutronix.de/cgit/barebox/commit/?id=54e2f6bf929d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



