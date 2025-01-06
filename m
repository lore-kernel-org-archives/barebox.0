Delivery-date: Mon, 06 Jan 2025 11:35:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUkSd-00HRxY-15
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 11:35:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUkSd-0007EV-BS
	for lore@pengutronix.de; Mon, 06 Jan 2025 11:35:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gkDm/05acF9AVQn0LKajxxKDOdIBg1unqBApRUz1x70=; b=yIAHMBaRCgrqIW+1AK2+U6LfUv
	8F6cLeI3lGtCP/KXb50MFxYWIpMyT5FbxtgUrPOcpg1G4xZ0kKSYRPeRjJteCFJvQHQHAyGjC+3h8
	rKYEywsYVFyPysPMT21dCus5gfkyJYNRcs/wt+SxWeT3xZ8+aQXX6cp74E22DbYN8xVNt0897XDB2
	RwlYY8zroGTADIPbtlecDWuFQgjv0eY4YDo91mRPt0lq+u8FjPZCBOS30V97clRI9jIgRnuFrt+ks
	BeuLbuQl04aR0uQqW90IWG12HwuIbTk1sETF8HmQeS0dHTeNRazX78hPPJRrzycy8eGerU3832NCz
	+Q4DRb0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUkS3-00000000sH0-39rg;
	Mon, 06 Jan 2025 10:35:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUkQt-00000000rzs-3Sm9
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 10:34:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUkQr-0006vL-Io; Mon, 06 Jan 2025 11:34:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUkQq-0079N5-21;
	Mon, 06 Jan 2025 11:34:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUkQr-00F8fK-14;
	Mon, 06 Jan 2025 11:34:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250106091847.3435030-1-a.fatoum@pengutronix.de>
References: <20250106091847.3435030-1-a.fatoum@pengutronix.de>
Message-Id: <173615964133.3607643.16811905118328649672.b4-ty@pengutronix.de>
Date: Mon, 06 Jan 2025 11:34:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_023403_865928_EE259250 
X-CRM114-Status: UNSURE (   6.98  )
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
Subject: Re: [PATCH 1/2] ARM: ep93xx: delete unused drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 06 Jan 2025 10:18:46 +0100, Ahmad Fatoum wrote:
> The architecture itself was removed last year and its serial driver and
> network drivers are now dead code and do not support device tree, so
> remove them.
> 
> 

Applied, thanks!

[1/2] ARM: ep93xx: delete unused drivers
      https://git.pengutronix.de/cgit/barebox/commit/?id=f5309f51c617 (link may not be stable)
[2/2] compiler: drop intel compiler support
      https://git.pengutronix.de/cgit/barebox/commit/?id=46e26d67ab1c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



