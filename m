Delivery-date: Tue, 30 Jul 2024 12:18:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYjw2-004QnL-2T
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 12:18:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYjw2-0000DC-6p
	for lore@pengutronix.de; Tue, 30 Jul 2024 12:18:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HrS8W7i11FFA3H7chczvqKJmUYCqYLw3T18KS6ttsfo=; b=vY+3hAWZucXD09+oqNPK6km1dE
	P06GdRPN9OFCoh2v4JSu0C7uF2g/jsn1vowCcpWugKpaqfxxrjEaihhtWwr6PphlOEpuR4OM6aIBQ
	PStwbqEFlssBS4aBq8hfag0owEXCuVq8j/2X1NnYcWfywBg1Mh0mHtMcLZNgpIuJn7HURgiIJ6gAe
	1+FAo3cvCbQBHSzzAe4OWTN45BVnjJ51q/EUHbt+z9C5f/0O1xWOQ179o3e9B/ZxlfmdOUWkQRV52
	69DZbkZs9JxLjYGg2UBizPFBbwzrZigGmctXPw55Y865/2KFsatI0qWH9kXFWMPeJl+FfR1ln9sk4
	czXWY44g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjvV-0000000EgkD-0KAY;
	Tue, 30 Jul 2024 10:17:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjvR-0000000Egiq-0dtL
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 10:17:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYjvP-0008UE-0i; Tue, 30 Jul 2024 12:17:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYjvO-003GCp-Cf; Tue, 30 Jul 2024 12:17:46 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYjvO-009yjq-10;
	Tue, 30 Jul 2024 12:17:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Casey Reeves <contact@xogium.me>
In-Reply-To: <20240726122336.3566793-1-a.fatoum@pengutronix.de>
References: <20240726122336.3566793-1-a.fatoum@pengutronix.de>
Message-Id: <172233466630.2378343.9269871474677367773.b4-ty@pengutronix.de>
Date: Tue, 30 Jul 2024 12:17:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_031749_231475_3D0C5071 
X-CRM114-Status: UNSURE (   7.19  )
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
Subject: Re: [PATCH] common: clarify help text for
 CONFIG_CONSOLE_ACTIVATE_* options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 26 Jul 2024 14:23:36 +0200, Ahmad Fatoum wrote:
> CONFIG_CONSOLE_ACTIVATE_NONE is an unfortunate name. The help text
> explains how consoles are still activated, but omits the main way they
> are activated: The device tree's /chosen/stdout-path property.
> 
> Similarly, CONFIG_CONSOLE_ACTIVATE_(FIRST/NONE) don't talk about the
> implications of selecting them, so reword the help texts to better
> inform the user.
> 
> [...]

Applied, thanks!

[1/1] common: clarify help text for CONFIG_CONSOLE_ACTIVATE_* options
      https://git.pengutronix.de/cgit/barebox/commit/?id=eb00dd84d698 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



