Delivery-date: Fri, 08 Aug 2025 07:38:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ukFoL-008DrK-1q
	for lore@lore.pengutronix.de;
	Fri, 08 Aug 2025 07:38:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ukFoK-0002im-W0
	for lore@pengutronix.de; Fri, 08 Aug 2025 07:38:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XBkcMjYPocj1mvpDAhHTWT5QbLaQKHSRlnOM0ksxI4Q=; b=ntY24O23uQgpEpLciMoOm2KnE/
	ZEgAgct+Op6duif+wXz417+zzlpWoNbu2gAseNXh5xueK4uVgZ2jiiz0LySYExCyxVGfz+lAZtMN1
	RLKfLyGBKjOWgrzyBiPN1GhMSBHITPGUvUs3A8/pmvrFEPjFl50Hw87l4H3hm213xRjZj2YGVA2j/
	t21HRTGQwcWBlHOV5Hf3a6KFMAF90UEsd6R6ZvUqzEUETm8VWhErwa/HNszn5CI30YcbP+rzIVH1H
	oWmn3uUZNQYBcs+RLxT1khcGPFNgiubZdihkZVvQ9gPO8EskNmAE/y2JuMVQkMPeFq+NwVtHSm/E8
	csQvDUyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukFnf-000000022Yj-0yxK;
	Fri, 08 Aug 2025 05:37:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukFnc-000000022YK-1gPv
	for barebox@lists.infradead.org;
	Fri, 08 Aug 2025 05:37:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ukFna-0002cl-IH; Fri, 08 Aug 2025 07:37:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ukFna-00CUVK-1F;
	Fri, 08 Aug 2025 07:37:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ukFna-0053vt-10;
	Fri, 08 Aug 2025 07:37:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250807081942.250226-1-a.fatoum@pengutronix.de>
References: <20250807081942.250226-1-a.fatoum@pengutronix.de>
Message-Id: <175463147030.1206513.18397645794471970154.b4-ty@pengutronix.de>
Date: Fri, 08 Aug 2025 07:37:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_223752_443212_A539A4CA 
X-CRM114-Status: UNSURE (   6.71  )
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
Subject: Re: [PATCH v2 1/5] security: add new top-level menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 07 Aug 2025 10:19:38 +0200, Ahmad Fatoum wrote:
> Instead of distributing security-related options and code across lib/,
> common/ and crypto/, let's collect them in a new security/ top-level
> directory and give it its own top-level menu for visibility.
> 
> The new security/ exists alongside crypto/, where the latter is for algorithms
> and the former is for concrete implementations like JWT.
> 
> [...]

Applied, thanks!

[1/5] security: add new top-level menu
      https://git.pengutronix.de/cgit/barebox/commit/?id=854e27fed9f2 (link may not be stable)
[2/5] security: mark weaker passwords hashing algorithms insecure
      https://git.pengutronix.de/cgit/barebox/commit/?id=9170ec0423c0 (link may not be stable)
[3/5] commands: introduce new security command group
      https://git.pengutronix.de/cgit/barebox/commit/?id=9721a352c009 (link may not be stable)
[4/5] security: password: make PBKDF2 the default instead of MD5
      https://git.pengutronix.de/cgit/barebox/commit/?id=d663ac87055a (link may not be stable)
[5/5] commands: move login/passwd into security section
      https://git.pengutronix.de/cgit/barebox/commit/?id=5ba7720c6ee0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



