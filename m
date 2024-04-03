Delivery-date: Wed, 03 Apr 2024 13:30:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrypW-005zyI-2P
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 13:30:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrypW-0004uA-6U
	for lore@pengutronix.de; Wed, 03 Apr 2024 13:30:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oYuPkAXe2f5f4MHassLrgNYejpSTDU2KC1KyY+99TEg=; b=OO4DAhefwxMsNtrUSQ68zv+4F2
	zcc1aTxpNKLg8w5yVaTNGUE6/lJSUOjU33Va1zvh4xRlA9wwEASZ2B8bc73/xReRyotsU0mTUiz6X
	OUl66RmOGuQdst6QJ1ZQDZGlAIP1wKbSa9C6IH87bBzwyE3YuYpPWMbYLvjFLECfq7LXVgmsok3Ui
	OLxXH1WdjWuTkLSNbask0ai6nf3CHyXzSXajHJXO7JotncZQhL2CjpxJFDiMp327arFCRrAkIP+KS
	qxmG+PyvtMRPmVOqXPEb4pdnf9a+C+iSU4mJi8Pq4wPFIxuC5PgsJ49dEcuKFPnd/nKkViwdbnShN
	oSdT7csg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rryp7-0000000FmXJ-21Vr;
	Wed, 03 Apr 2024 11:30:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rryp3-0000000FmWU-3R9k
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 11:30:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rryp2-0004SX-Dm; Wed, 03 Apr 2024 13:30:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rryp1-00AALa-V9; Wed, 03 Apr 2024 13:30:27 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rryp1-006EqL-2u;
	Wed, 03 Apr 2024 13:30:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: David Jander <david@protonic.nl>
In-Reply-To: <20240402084616.3437060-1-s.hauer@pengutronix.de>
References: <20240402084616.3437060-1-s.hauer@pengutronix.de>
Message-Id: <171214382789.1486988.12180261206841128370.b4-ty@pengutronix.de>
Date: Wed, 03 Apr 2024 13:30:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_043029_892522_7E639BFB 
X-CRM114-Status: UNSURE (   6.43  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: usb: ax88179_178a.c: Add 2 new USB ids
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 02 Apr 2024 10:46:16 +0200, Sascha Hauer wrote:
> Add support for the Sitecom USB 3.0 to Gigabit Adapter and the
> Belkin Gigabit Ethernet Adapter. The existing driver works as is, so
> only add the IDs.
> 
> 

Applied, thanks!

[1/1] net: usb: ax88179_178a.c: Add 2 new USB ids
      https://git.pengutronix.de/cgit/barebox/commit/?id=476057f7b2d5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



