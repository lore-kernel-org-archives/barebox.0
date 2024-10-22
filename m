Delivery-date: Tue, 22 Oct 2024 12:07:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3BnO-007QGo-1P
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 12:07:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3BnN-0005aG-SG
	for lore@pengutronix.de; Tue, 22 Oct 2024 12:07:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h18hMBG8V8BOq+EA7+PLD0z2Qwi2ktDoL6hXhfDNDxA=; b=UYpVFcG9o4osQy6ELcaulRUmSR
	E0nHZDZxM9sdfNvifSluysdTPZncbYGhd+n+kgZE6B8LGzicRQN0Ttt0D0MLaVz0HjqrrSVn1RTZH
	xl/34tN8/GczSFrwF0dy5tNHzr3F5e9Xi9JL77hfj8VIyXFePA/HM0gEcPgFFX2moKPBPu98s9tbB
	392x10hEmBa/6Cji97fwbE7eaZPZv7jMTe2fyx7UA8GQdBqE5pWa6g9CZXOESoG0z6Fa7tAbjz8fH
	YTIh5s41fuT8aE51gBceWuAGMsKxbol8SAjwP5hQ14YB6/eSvw5jU/8aqkUw2OeHV7/35+8ybXhhM
	6l9wbdYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Bmn-0000000ATOo-3eno;
	Tue, 22 Oct 2024 10:06:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3BS3-0000000APDR-3NW0
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 09:45:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3BS2-0003Hh-Ag; Tue, 22 Oct 2024 11:45:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3BS2-000qD4-0S;
	Tue, 22 Oct 2024 11:45:18 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3BS2-00CCFG-0I;
	Tue, 22 Oct 2024 11:45:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241021133855.266927-1-a.fatoum@pengutronix.de>
References: <20241021133855.266927-1-a.fatoum@pengutronix.de>
Message-Id: <172959031808.2906979.15798654249861061479.b4-ty@pengutronix.de>
Date: Tue, 22 Oct 2024 11:45:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_024519_896226_79A6338C 
X-CRM114-Status: UNSURE (   6.09  )
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
Subject: Re: [PATCH] console_countdown: use CTL_CH macro for control
 characters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 21 Oct 2024 15:38:55 +0200, Ahmad Fatoum wrote:
> This introduces no functional change, but makes code more readable as
> it's directly evident that the 3 here means ctrl+c.
> 
> 

Applied, thanks!

[1/1] console_countdown: use CTL_CH macro for control characters
      https://git.pengutronix.de/cgit/barebox/commit/?id=39fcc58a8e8b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



