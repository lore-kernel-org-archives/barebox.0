Delivery-date: Mon, 08 Dec 2025 13:12:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSa65-009Csn-16
	for lore@lore.pengutronix.de;
	Mon, 08 Dec 2025 13:12:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSa64-0003rI-QU
	for lore@pengutronix.de; Mon, 08 Dec 2025 13:12:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AdOI1V9oh8jZU/ah4BxK5OkmbBAzirZpqNI93+udPyY=; b=IIaqMYXSow7UA6HXjaQdPYQBxG
	Sy9+gUkOR4KpxRRZEESNFMoK7FoLUieUOtEZvHSWkQBy6CUEjvW5rzrZ+FXRnF4pjDZLK59LaQ5Pw
	z9NQS58496JnE+oFGAWVQjoQhcKHn3iIKWU5l//1PUuuIeOI+hWuaGnjNAzkQWXrex3nbfCNu7q2A
	eE2C0eHv3sgtcIS7MmpglswsTZDBDT72wnDMEImqgAJMARu1auglv1sIP1mIU8xpB+WfIsrRHhrY7
	feAdr5EA2tzsdARxvGAvXl2T9FCRWkCaw8IWouqHsCx5c5VIKrOivj4KOVlGTEbcQgSJ2j3pCLKSX
	781va1bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSa5e-0000000D3Dg-2rjV;
	Mon, 08 Dec 2025 12:11:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSa5b-0000000D3Cv-2MvA
	for barebox@lists.infradead.org;
	Mon, 08 Dec 2025 12:11:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSa5Z-0003m6-UP; Mon, 08 Dec 2025 13:11:37 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSa5Z-004boX-2O;
	Mon, 08 Dec 2025 13:11:37 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSa5Z-000000028pJ-2tTl;
	Mon, 08 Dec 2025 13:11:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251208103229.4130820-1-a.fatoum@pengutronix.de>
References: <20251208103229.4130820-1-a.fatoum@pengutronix.de>
Message-Id: <176519589768.510544.2608340991454728305.b4-ty@pengutronix.de>
Date: Mon, 08 Dec 2025 13:11:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_041139_637646_7610369B 
X-CRM114-Status: UNSURE (   8.00  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! environment: prefer non-removable over
 removable devices for autoprobe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 08 Dec 2025 11:32:29 +0100, Ahmad Fatoum wrote:
> Instead of ad-hoc determination in an inline function in the header, let
> every user decide for itself, it the device is removable or not.
> 
> This changes the implementation slightly: SD-Cards with the
> non-removable device tree property are now reported as such to the block
> layer, whereas before, they were always removable.
> 
> [...]

Applied, thanks!

[1/1] fixup! environment: prefer non-removable over removable devices for autoprobe
      https://git.pengutronix.de/cgit/barebox/commit/?id=37f8562b571b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



