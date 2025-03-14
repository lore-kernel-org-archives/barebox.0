Delivery-date: Fri, 14 Mar 2025 17:17:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt7ip-00E4eC-2b
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 17:17:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt7io-00062t-LZ
	for lore@pengutronix.de; Fri, 14 Mar 2025 17:17:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1mptAPtjWRsibCaxqSBx0ixdUGzj0IyqyqaTezFgfUw=; b=Vfv1dCY5ekUAfUVoaetICJzoZ/
	2lpQK9gKgV5XPiQ0Ao4LREND+Px7qGjkorwEod6Byyu2jY4ol6gNskcDAzgkyDViSnBaPOQCtbNvB
	9RBJwuS0EceuV6yGdedDX0wGpvTOk3eIT2jdg45v235l7NP4LOd2zka6osXZf7Zr3winpsww9J1bF
	gGEcEd9LmXWOPjQ9t5GBSq8gtCdLt6lzeH2TXAByVXDrdZ0z5bWBumv40ktJ9pNz05SCedPZ5Mcwe
	9rWFsvw00oimuqnuaylc4KFMc57bH2c8Wdc5IhONzyHwofxihoz08KAdNqT8z03yvSQn2EYI0SRQ7
	Rvmhji0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7iP-0000000EinP-394l;
	Fri, 14 Mar 2025 16:16:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7h3-0000000EiKe-2YRU
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 16:15:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7h2-0005TZ-D2; Fri, 14 Mar 2025 17:15:28 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7h2-005jSK-0D;
	Fri, 14 Mar 2025 17:15:28 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7h2-00HIXN-01;
	Fri, 14 Mar 2025 17:15:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250307114739.3680956-1-eagle.alexander923@gmail.com>
References: <20250307114739.3680956-1-eagle.alexander923@gmail.com>
Message-Id: <174196892800.4122820.6862295502856355866.b4-ty@pengutronix.de>
Date: Fri, 14 Mar 2025 17:15:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_091529_656458_13892B87 
X-CRM114-Status: UNSURE (   7.28  )
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
Subject: Re: [PATCH] ARM: at91: Remove SAMA5D2 handling from sam9_smc
 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 07 Mar 2025 14:47:39 +0300, Alexander Shiyan wrote:
> SAMA5D2 SOC does not use sam9_smc driver.
> Let's remove handling of this SOC from driver code.
> 
> 

Applied, thanks!

[1/1] ARM: at91: Remove SAMA5D2 handling from sam9_smc driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=6a825b7cfb7a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



