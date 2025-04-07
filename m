Delivery-date: Mon, 07 Apr 2025 15:56:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1myA-009Zcb-37
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 15:56:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1myA-00025M-Dl
	for lore@pengutronix.de; Mon, 07 Apr 2025 15:56:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fjgjRhgEkdJoTRq+p3Jz0kQBjbGctm3W/FunPa5YhwM=; b=wTobCupA4AWBmzgEBGEWUPSo4F
	ShNT4pLtO5lLgAER5tcXsPJ9mWHXBPeNOwbxbRukDVZys7X/9S/FaayYM7uFRxtHWELGZQ2h8bFb1
	0SCT+Krh0NSKA3qfYw9WXFb5gjTqZk7NlP8HdadZiTuAPbPxiFJKeMqE6/Hjn+35VC1QOyK0AQc0O
	ABZCFtZ2CTbRE61dgR4XWv5064k7zYzukj2CfTdYyT9gChN9VIy3WAKNZIl0a/bl9RKX0xS8bypzl
	G/9WUdWYuHYv004OsOQWQAjjY2CyJ8gVHiuhV42L2Dai4wTLwcUPkY8+6ZRLg5NwqgXsILoCk1GCi
	TfioUj7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mxh-00000000cOX-3rxb;
	Mon, 07 Apr 2025 13:56:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mdK-00000000Xqh-1lv4
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 13:35:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mdI-0006ZE-Bd; Mon, 07 Apr 2025 15:35:24 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mdI-003lr6-0J;
	Mon, 07 Apr 2025 15:35:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mdI-00FKEb-06;
	Mon, 07 Apr 2025 15:35:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
Cc: David Jander <david@protonic.nl>
In-Reply-To: <20250331123032.626219-1-o.rempel@pengutronix.de>
References: <20250331123032.626219-1-o.rempel@pengutronix.de>
Message-Id: <174403292402.3652526.16407921799170562249.b4-ty@pengutronix.de>
Date: Mon, 07 Apr 2025 15:35:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_063526_460674_D14E528D 
X-CRM114-Status: UNSURE (   6.14  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 1/4] arm: boards: protonic-stm32mp13: Add support
 for MECT1S board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 31 Mar 2025 14:30:29 +0200, Oleksij Rempel wrote:
> Introduce support for the Protonic MECT1S r1 board based on STM32MP133.
> 
> 

Applied, thanks!

[1/4] arm: boards: protonic-stm32mp13: Add support for MECT1S board
      https://git.pengutronix.de/cgit/barebox/commit/?id=535943973d36 (link may not be stable)
[2/4] arm: boards: protonic-stm32mp13: Use unique board driver name
      https://git.pengutronix.de/cgit/barebox/commit/?id=3b0a45e63c8d (link may not be stable)
[3/4] arm: boards: protonic-stm32mp: fix stack corruption by passing correct ctx to stm32_bsec_optee_ta_close()
      https://git.pengutronix.de/cgit/barebox/commit/?id=765deba962f6 (link may not be stable)
[4/4] arm: boards: protonic-stm32mp: free shift register GPIOs after use
      https://git.pengutronix.de/cgit/barebox/commit/?id=06515f69adf4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



