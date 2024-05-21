Delivery-date: Tue, 21 May 2024 12:53:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9N7O-00C853-1C
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 12:53:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9N7N-0006r3-5r
	for lore@pengutronix.de; Tue, 21 May 2024 12:53:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+xh84yBwHMLLra3BwEAIwA1an7h0JTDhuZhu+ye833c=; b=kMSsRpKCMJjLarBTKV2K5J5U1q
	EUxwv2bl+eValwZ+nzbkvt97oNySNtQ9ngB7Q9/odSEkEHGAcs7eH0D13hqz7zGzhUEgTbzGH32XN
	I1BFGLyBtN6+ps4QOWyzruBtclaQ+m8STo8q9a1I4urtBJdPv4fnYkgzrFwxxdYuL43+22X5BNe00
	hLv4z13q+RRCTjo8cKraBdA9v+1Sb3Ii+q87ETFgPOiuD/pfoJSez1XwZ3XdJ1vtAMQ0Xc6Hbfa9v
	DfOfHq/LP8Acr9MTDzoxJoFY193MASsV0KFYo6aiBDWP45236SwtSmTtLnh1VwVkjXTM3YlYyiNz0
	exJMkmjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9N70-0000000HBJO-2EMk;
	Tue, 21 May 2024 10:52:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9N6x-0000000HBIc-31hZ
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 10:52:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9N6w-0006cL-Ca; Tue, 21 May 2024 12:52:50 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9N6w-002NUo-03; Tue, 21 May 2024 12:52:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9N6v-008KYr-31;
	Tue, 21 May 2024 12:52:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240517062151.3301660-1-a.fatoum@pengutronix.de>
References: <20240517062151.3301660-1-a.fatoum@pengutronix.de>
Message-Id: <171628876993.1985606.3103663620456933663.b4-ty@pengutronix.de>
Date: Tue, 21 May 2024 12:52:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_035251_802369_8D8FFC94 
X-CRM114-Status: UNSURE (   7.97  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: hide DEFAULT_COMPRESSION menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 17 May 2024 08:21:51 +0200, Ahmad Fatoum wrote:
> CONFIG_DEFAULT_COMPRESSION_* refers to the compression done for
> in-barebox binaries and is not useful when barebox proper as a whole is
> compressed as in that case, we would have compression applied twice.
> 
> For this reason, DEFAULT_COMPRESSION_NONE is the only possible choice in
> a PBL-enabled build. Having the choice with only one option is confusing
> though, so let's hide the prompt.
> 
> [...]

Applied, thanks!

[1/1] common: hide DEFAULT_COMPRESSION menu
      https://git.pengutronix.de/cgit/barebox/commit/?id=f661c703ff46 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



