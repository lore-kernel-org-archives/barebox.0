Delivery-date: Tue, 10 Jun 2025 20:13:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP3T3-005suF-1s
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 20:13:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP3T3-00046E-2I
	for lore@pengutronix.de; Tue, 10 Jun 2025 20:13:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vb3wJCy2Ev+xUDTBFfRONqP0axpl8OCEgMSf491RhBo=; b=xj9jfGWYpnHbrrlnWgdRRWXAio
	iSXHNyReXW9TsoXcwaIxdbk6stxS7LfqA83lH4sDfK80hA7xYOm6mwLm/v8wKTsM11uUPhRorDPk+
	1+KXG2eJzQt/V4OrVWoUxJjSnVAjUgYinOWVN0o2nzbnhFVySRROciNiCL+E+8PI7evTkaYuZH9C8
	EYqMOmvl5bvnDVafKvLW+5GbWP+rCCjLsVqpRcPJ/j7KfOLDQ0/4XCVlzH9g1nRhKL0LzKbQcqxev
	obwNt1f2F02prpaDAqQhy1DOHexPbJB4Gf2Ij+zeilwndCQ7vACSAMPsqtrtxfVYFFMQAt6Zk+zko
	6s2KzUuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP3SZ-00000007lem-1Wxr;
	Tue, 10 Jun 2025 18:12:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP0VS-00000007Dhf-30cx
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 15:03:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uP0VR-0003ov-JR; Tue, 10 Jun 2025 17:03:17 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uP0VR-002nFy-1K;
	Tue, 10 Jun 2025 17:03:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uP0VR-007dH5-17;
	Tue, 10 Jun 2025 17:03:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
In-Reply-To: <20250610092718.258050-1-bst@pengutronix.de>
References: <20250610092718.258050-1-bst@pengutronix.de>
Message-Id: <174956779734.1816765.10463176151658093759.b4-ty@pengutronix.de>
Date: Tue, 10 Jun 2025 17:03:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_080318_758861_0BDD3482 
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: user: use https instead of git protocol
 for cloning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 10 Jun 2025 11:27:18 +0200, Bastian Krause wrote:
> The git server at git.pengutronix.de no longer supports the git
> protocol, so switch to https.
> 
> 

Applied, thanks!

[1/1] Documentation: user: use https instead of git protocol for cloning
      https://git.pengutronix.de/cgit/barebox/commit/?id=49f926ceb830 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



