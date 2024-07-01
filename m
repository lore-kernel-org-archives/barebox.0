Delivery-date: Mon, 01 Jul 2024 10:57:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOCqY-000Rbv-0Z
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 10:57:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOCqX-0007EK-Kz
	for lore@pengutronix.de; Mon, 01 Jul 2024 10:57:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=thaxNAKoaqnXcUZUQvgEAVOn3OBR5Km+Te/HWU/HZM8=; b=1/ZN2xu22mbIKvqt8lkhfh3l/j
	KthTfHhx/46ock1cOsj1kcX1MWodg1EPWJEZzfMll3Z+BsA5nj79Tdm9KrmYdgWg0/yV3P8QByEhp
	rRiS4nwDfeg03DrB4VDACO2AQUlbD5UW076f079lL69s9/CtN5u3it1MCRveSHv7LiuSKMHSux7xn
	BP21P2J7ZybhwwuWriI+8NhiVpaE7b5Adu9VdxNZb2J7WBkPWPZZSQIGUd4w9cIIRl9U2fPjechwk
	QBX+QkQ9KZnIBqvfPlUSq6A6j8TH3Gl3iVfUxzDmwRl47uxT1g5hC/JTK7FSez/qiBiLxH16Qmjcy
	XL12yRWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOCq4-00000002LCI-29xU;
	Mon, 01 Jul 2024 08:56:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOCq0-00000002LA9-1zTu
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 08:56:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOCpx-00075d-C7; Mon, 01 Jul 2024 10:56:37 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOCpw-006KeT-W7; Mon, 01 Jul 2024 10:56:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOCpw-0062ah-30;
	Mon, 01 Jul 2024 10:56:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240701084825.3039740-1-a.fatoum@pengutronix.de>
References: <20240701084825.3039740-1-a.fatoum@pengutronix.de>
Message-Id: <171982419692.1439833.10016269621764710546.b4-ty@pengutronix.de>
Date: Mon, 01 Jul 2024 10:56:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_015640_915932_651C9613 
X-CRM114-Status: UNSURE (   7.04  )
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
Subject: Re: [PATCH] Documentation: boards: stm32mp: describe location of
 DIP switch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Jul 2024 10:48:25 +0200, Ahmad Fatoum wrote:
> ChatGPT can explain ASCII art, but without information about the
> position, it's not as useful for a blind user.
> 
> Extend the docs, so it's more useful in that case.
> 
> 

Applied, thanks!

[1/1] Documentation: boards: stm32mp: describe location of DIP switch
      https://git.pengutronix.de/cgit/barebox/commit/?id=b5a530d4072e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



