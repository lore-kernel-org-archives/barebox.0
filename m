Delivery-date: Tue, 19 May 2026 08:27:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPDvG-001PGJ-0s
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 08:27:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPDvF-0004q5-Mt
	for lore@pengutronix.de; Tue, 19 May 2026 08:27:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QV6beUkZ5yO1iGFMQlHxOE8nx/GAFtynORupa6V2R/I=; b=O6VjoSWRQhrg+/fc2mm1sHQc7I
	j+W/5hTAHVAl9Op0dspQGPhcV2oLGIWY4Wox29CwJOkujhDb1Itajl1hVmvvc7Jj7Td1hFBhOeE3U
	cODRMl3pW0jVPQwU3xC4e+RpWkRVqxehSGu/1tkSBaD3apa/0AK6epC8Bb01cZX0fSehiK8v/o+a8
	0pdgvjC4G51brvNOc7z3S9/V3Lqu6MVQwOm7YRjqW7tsppQ0hSjgZfQ9Q44/n6BPZGY/0Ifr9GIOj
	Do7Jcx7tOVHHBVNVbqal38b/tOGCw6WjAOTQOS7/ZhtyrqTs57aYKpVM1y75UHOyCWjp61fuJhgz2
	YVZZIRdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDtw-00000000KCk-05p3;
	Tue, 19 May 2026 06:26:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDts-00000000KBu-1nh4
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 06:25:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPDtq-0004ZA-SH; Tue, 19 May 2026 08:25:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPDtq-000iTw-0p;
	Tue, 19 May 2026 08:25:54 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPDtq-00000002DE2-3BGh;
	Tue, 19 May 2026 08:25:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Fabian Pfitzner <f.pfitzner@pengutronix.de>
In-Reply-To: <20260518-fpf-fast-auth-v1-1-eb795aedf999@pengutronix.de>
References: <20260518-fpf-fast-auth-v1-1-eb795aedf999@pengutronix.de>
Message-Id: <177917195475.527481.14895130451042682264.b4-ty@pengutronix.de>
Date: Tue, 19 May 2026 08:25:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_232557_738747_714B9992 
X-CRM114-Status: UNSURE (   9.32  )
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
Subject: Re: [PATCH] ARM: i.MX: add support for fast authentication
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 18 May 2026 14:55:48 +0200, Fabian Pfitzner wrote:
> Integrate support for fast authentication on i.MX8 SoCs.
> Fast authentication is only supported for HAB version >= 4.1.2
> 
> >From the NXP manual it says:
> 
> "It provides the option to use the SRK to verify the CSF data and Image data directly,
> instead of using the CSF and IMG keys.
> This reduces the number of key pair authentications that must occur during the ROM/HAB boot stage.
> The typical boot time for an image smaller than 1MB can be reduced from 25 ms to 12 ms."
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX: add support for fast authentication
      https://git.pengutronix.de/cgit/barebox/commit/?id=086d01264d9a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



