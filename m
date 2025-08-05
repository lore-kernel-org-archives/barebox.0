Delivery-date: Tue, 05 Aug 2025 11:07:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujDdg-007F5z-3C
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:07:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujDdg-0008Hl-Fa
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:07:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ef/lyIgL9pqFMZq6rFqWttVrBeVlqt+zUximPhX0wOI=; b=eFdkFDTq9S4x5E+4GqOGFtyKfD
	MoXOl+wUK09eI82ZQj8uDfN12jvPRcVL8kTNvlQIUJZVh55A6A4dtprdxveiM1TjYjEqACmWiiFaZ
	6JtjlQngEcNDY4mZKj2+qqO+fyLHewoimSwzWPOLxfQ6ATsBXgGowsh0wm1pL5QapUUoRGWXab3sq
	gayYEt7WZ0RlAQ70WYRcZRBCyGdvhZRFaAGJ0QmX18Z7rxU1CjqNYEmwrWEm69Igczc4LH93ArS8+
	hwqt5t5AaKtJre9qNZaTWwUD/9K5qGzdpbJ6fA8O6fUEnZAWzOodcbVXGAaBiGg4e/WBfZbgzK+Kj
	iytq2RRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDdH-0000000CJ19-1o2M;
	Tue, 05 Aug 2025 09:06:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDAT-0000000CCWA-1uTT
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 08:37:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDAS-0004kk-3d; Tue, 05 Aug 2025 10:37:08 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDAR-00C0nQ-2m;
	Tue, 05 Aug 2025 10:37:07 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDAR-00EgMz-2a;
	Tue, 05 Aug 2025 10:37:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250703101520.1170742-1-a.fatoum@barebox.org>
References: <20250703101520.1170742-1-a.fatoum@barebox.org>
Message-Id: <175438302779.3499434.10241267848284078574.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 10:37:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_013709_502671_6CB960F6 
X-CRM114-Status: UNSURE (   5.72  )
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
Subject: Re: [PATCH master] Documentation: migration-2025.07.0: fix
 formatting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 03 Jul 2025 12:15:20 +0200, Ahmad Fatoum wrote:
> The indentation makes the heading a normal text and turns the dashes
> into a horizontal bar instead.
> 
> 

Applied, thanks!

[1/1] Documentation: migration-2025.07.0: fix formatting
      https://git.pengutronix.de/cgit/barebox/commit/?id=e9a93af56721 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



