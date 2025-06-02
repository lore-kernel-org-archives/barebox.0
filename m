Delivery-date: Mon, 02 Jun 2025 12:16:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM2Df-002vMh-2d
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 12:16:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM2Df-0002T3-9a
	for lore@pengutronix.de; Mon, 02 Jun 2025 12:16:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KIeYdJB4R2HCqSJVMJlueesnbAXckLe3RI4VE475YmQ=; b=aVl4BnrWkL9VgmncoRGE1r230N
	sGQe55rJyU6sb8dJUZDIKAWGDaFpnEa1YbRrZqVZ0oREL64jh8SlLek7tDxpaz+Bw+CnJ5usl+UwK
	8jnVwOK/1ROPp+lu0mNreJaoNBMEe1RyXW2AH0mgqg99lA//w1jsitxpaiR40fVDg5sCgx5OGYrD0
	jNANoF1/a/VMe35C6dQ2pJmsqcLFsUUzUz7MzjEIElGWJikkq/GQZ1DwvOCQ0bb5heVs7cyo01Abh
	puCZdC+d2OFPyhCtYERIGvh/+1M9BY+h1kijKRw1a8Hto/5jeaiUtmrAvbOIOeh5LD5jKQuEOVVnR
	5MHRDoZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM2DE-00000007Af8-0lBZ;
	Mon, 02 Jun 2025 10:16:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM2DB-00000007Aeh-1LY4
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 10:16:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM2D9-0002H2-Re; Mon, 02 Jun 2025 12:16:07 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM2D9-001RBp-29;
	Mon, 02 Jun 2025 12:16:07 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM2D9-003hWZ-1u;
	Mon, 02 Jun 2025 12:16:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20250602095738.822334-1-a.fatoum@barebox.org>
References: <20250602095738.822334-1-a.fatoum@barebox.org>
Message-Id: <174885936758.882258.9684044837369007117.b4-ty@pengutronix.de>
Date: Mon, 02 Jun 2025 12:16:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_031609_365321_2222CBA2 
X-CRM114-Status: UNSURE (   6.26  )
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
Subject: Re: [PATCH v2 1/5] common: deep-probe: inform only about lack of
 deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 02 Jun 2025 11:57:34 +0200, Ahmad Fatoum wrote:
> Instead of printing an info message when deep-probe is enabled, print a
> message when it is disabled.
> 
> 

Applied, thanks!

[1/5] common: deep-probe: inform only about lack of deep-probe support
      https://git.pengutronix.de/cgit/barebox/commit/?id=e8b665d0ecc2 (link may not be stable)
[2/5] common: deep-probe: support specifying support in DT
      https://git.pengutronix.de/cgit/barebox/commit/?id=c075c5d3d8d0 (link may not be stable)
[3/5] treewide: dts: describe deep probe support in device tree
      https://git.pengutronix.de/cgit/barebox/commit/?id=7b7a7edfd53c (link may not be stable)
[4/5] ARM: configs: enable deep probe for the most popular configs
      https://git.pengutronix.de/cgit/barebox/commit/?id=b4bf1ed525dc (link may not be stable)
[5/5] Documentation: migration-2025.07.0: document CONFIG_DEEP_PROBE_DEFAULT
      https://git.pengutronix.de/cgit/barebox/commit/?id=8b2ec69c6140 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



