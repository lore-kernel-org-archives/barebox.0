Delivery-date: Mon, 25 Aug 2025 11:36:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqTd6-004JiN-2q
	for lore@lore.pengutronix.de;
	Mon, 25 Aug 2025 11:36:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqTd5-00022Z-OJ
	for lore@pengutronix.de; Mon, 25 Aug 2025 11:36:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GON9CSWseMtQ/dYUoahnc7C6r9Ui8xaCbB2aMzOvssc=; b=hyoY3D8/CKXYcjB6gV4UQD/Sep
	RbTTOOlOUEDAZy93tlYzKkM0afjZCWPZ4GMEW/i8IJrIRkP1g1UMPVHiY9QqoHT1vDDuSfnCWg+zn
	9c8WRIddytKL3v3vqn62WQVVzw8psR//RmIIRGDUoTo8i54/Hc50WFj2x3hQxFOeP3D+RWgC/tYvV
	Qf2BibhJlpMGaa4bnA39OgU+ajTIv76ZzTXMxHUgefqURvHpEBFnksUCXFKU7XK5uTp0y59iNpEXu
	tUa4rSbvNURG8cTPn4SvEfjWG3P/WRajT30hXW0KbJLdCnBKiYORlR+7/QFS5go2BIYAHrQ7X4/xi
	P3lpAurg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqTcY-00000007VuY-2WQq;
	Mon, 25 Aug 2025 09:36:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqSvP-00000007OUZ-2SH3
	for barebox@lists.infradead.org;
	Mon, 25 Aug 2025 08:51:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqSvO-0004sd-76; Mon, 25 Aug 2025 10:51:34 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqSvO-0022S3-07;
	Mon, 25 Aug 2025 10:51:34 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqSvN-000000033Pf-46Zq;
	Mon, 25 Aug 2025 10:51:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250821205942.1435683-1-a.fatoum@pengutronix.de>
References: <20250821205942.1435683-1-a.fatoum@pengutronix.de>
Message-Id: <175611189397.728088.13420744401777743825.b4-ty@pengutronix.de>
Date: Mon, 25 Aug 2025 10:51:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_015135_628979_DF6D5FB3 
X-CRM114-Status: UNSURE (   8.31  )
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
Subject: Re: [PATCH 1/3] fuzz: add test harness for fuzzing nul-terminated
 strings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 21 Aug 2025 22:59:40 +0200, Ahmad Fatoum wrote:
> Many APIs expect NUL terminated strings, for example the JSON Web Token
> decoding functions.
> 
> Add a helper to make it easy to fuzz such functions. As we are
> allocating anew anyway, we pass along the buffer mutably as well as the
> original size, so the harness is useful for a wider range of API.
> 
> [...]

Applied, thanks!

[1/3] fuzz: add test harness for fuzzing nul-terminated strings
      https://git.pengutronix.de/cgit/barebox/commit/?id=0f8eb3328336 (link may not be stable)
[2/3] test: self: jwt: add dedicated option for development_rsa2048.pem
      https://git.pengutronix.de/cgit/barebox/commit/?id=06058eff1fa8 (link may not be stable)
[3/3] security: jwt: add simple fuzzer
      https://git.pengutronix.de/cgit/barebox/commit/?id=d98b79159dad (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



