Delivery-date: Fri, 25 Apr 2025 07:40:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u8Bnc-0058HU-0i
	for lore@lore.pengutronix.de;
	Fri, 25 Apr 2025 07:40:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u8Bnb-0004wM-Kz
	for lore@pengutronix.de; Fri, 25 Apr 2025 07:40:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TZJI95Cs+dtAkj444E1yqIv3NtONLizh15a5GE/SGcI=; b=hldg51xB6Ep4YZrVSkS2CoRaQ9
	udZ/acU82ByKVQq201iGXFYGwGkasYZCNqsIqK5oaCf/Koc+7JTdcbULmPh39WYBuiW7ENcYtAlvZ
	pt7DywOYxj1PMQu7czmAQ9e1p2yDkDaKKuy0mG4O8xEjSvGbLyt/MPbeHPaoBFweljj1BOo8UE21v
	zwbRzK35Vvo/BYqARsCCBxe9igOASkDSDUtQfIXwjYuZ1u1NV9Ap+wmV7rd8hSjp3vD0zVE+nGSV3
	zWJIbcowXAKB0E/PKdWXOZ2nPAjXg4cX2X5ErAHTLTjNtN70sYx61IKFIKgWGQfoP0lthHn1/EMR1
	BegTLwSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8Bn7-0000000FzyP-2FlA;
	Fri, 25 Apr 2025 05:40:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8Bn5-0000000Fzwp-0I7n
	for barebox@lists.infradead.org;
	Fri, 25 Apr 2025 05:40:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u8Bn1-0004lz-Sc; Fri, 25 Apr 2025 07:39:55 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u8Bn1-001zmg-2D;
	Fri, 25 Apr 2025 07:39:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u8Bn1-002LI4-20;
	Fri, 25 Apr 2025 07:39:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250424110631.3943702-1-a.fatoum@pengutronix.de>
References: <20250424110631.3943702-1-a.fatoum@pengutronix.de>
Message-Id: <174555959562.558208.15606401802704241447.b4-ty@pengutronix.de>
Date: Fri, 25 Apr 2025 07:39:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_223959_108986_F41B80C4 
X-CRM114-Status: UNSURE (   5.64  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] Documentation: user: versioning: fix formatting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 24 Apr 2025 13:06:30 +0200, Ahmad Fatoum wrote:
> Apparently, Sphinx is space sensitive in literal ``blocks`` and
> currently interprets <space>`` literally and doesn't end the literal
> then.
> 
> 

Applied, thanks!

[1/2] Documentation: user: versioning: fix formatting
      https://git.pengutronix.de/cgit/barebox/commit/?id=c5fdeecb95ab (link may not be stable)
[2/2] Documentation: user: versioning: reduce indentation
      https://git.pengutronix.de/cgit/barebox/commit/?id=fe58b1f7d24e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



