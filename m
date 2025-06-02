Delivery-date: Mon, 02 Jun 2025 09:57:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM03J-002t3D-1C
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 09:57:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM03I-0001Z8-Ou
	for lore@pengutronix.de; Mon, 02 Jun 2025 09:57:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cf3oy6gIuKLKZ0BNQyiJSZDndvHLRzLHwifaMSLREeM=; b=DjwQMXBpLnp1T47v90cDW5amm7
	I9eIwipRXgPnE0KZ+8Gf0R+ioX5baIcEpTiSrxfSChcQbuhVCwaiduQ/4M1tCQft3WcszGXoPdJ31
	4gGToPzhDczpVxw4FWrNcFGVhdVfbZZQz6szQyxkzrFfOhjrbM38t1LDovXwu0Mf2kQuUoywD2kXb
	7u0nl5rPAT7T1qs4Q7TOLNLqkqyyHp0QyF7csAIM5aeJXgKeuxWG7mOUn2cXMCceC3aODBv9CXsXi
	FYX8t03jqd9OcDKPP82GRCpXKfW9lrlUkfJ9me985KI78Li+8zNr7edGjo0izgaadFYzBLO9nIbAw
	VaSzhzLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM02r-00000006wwi-02o6;
	Mon, 02 Jun 2025 07:57:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM022-00000006wse-1zUV
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 07:56:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM021-00015X-4d; Mon, 02 Jun 2025 09:56:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM020-001Pv0-36;
	Mon, 02 Jun 2025 09:56:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM020-003W3i-2t;
	Mon, 02 Jun 2025 09:56:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250528154508.639789-1-a.fatoum@pengutronix.de>
References: <20250528154508.639789-1-a.fatoum@pengutronix.de>
Message-Id: <174885098889.838192.2206279812248323341.b4-ty@pengutronix.de>
Date: Mon, 02 Jun 2025 09:56:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_005630_516566_A926A7C8 
X-CRM114-Status: UNSURE (   9.03  )
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
Subject: Re: [PATCH v2] net: phy: seed PRNG when PHY comes up and when
 generating MAC address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 28 May 2025 17:45:08 +0200, Ahmad Fatoum wrote:
> The new Xorshift* RNG is seeded only from the cycle counter at startup,
> which is much less entropy for the MAC address generation use case,
> which used the nanosecond timestamp at generation time before the switch
> to Xorshift*.
> 
> The nice thing about our new PRNG implementation is that we can call
> srand_xor multiple times to keep adding entropy, so let's do that after
> each PHY link up and prior to generating the MAC address.
> 
> [...]

Applied, thanks!

[1/1] net: phy: seed PRNG when PHY comes up and when generating MAC address
      https://git.pengutronix.de/cgit/barebox/commit/?id=a9f987772af7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



