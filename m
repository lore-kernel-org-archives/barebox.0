Delivery-date: Tue, 22 Apr 2025 12:07:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7AXE-0040Mb-0Q
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 12:07:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7AXD-0005pC-Hx
	for lore@pengutronix.de; Tue, 22 Apr 2025 12:07:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nm8w22wwEJogg4oiYfsrO4Al4uO4eb5oet1eYsPvvyA=; b=UyhUAJP+fgupqcRuK1os7Kzrzu
	9fhrcnojtH60ZBlu5R1cQMratMLDxD05cF1b0m+LI685D2snCm/KL/7BV7Ec71H/bvNZQ6b9piOZV
	SztLG83VFN4CebmEi6mJHvbIXHDy1v4M+3qrwEf8BNqBpzM8yTgyN2/lKJeIkJKIC6hvh2j9UI4Jy
	SkPGh+86VxIaCjYGjbks88lEG8DAojyeIITMX+ZwcYhZZljTb2DOgN+HeLXxzUUtJiRX9ksDoQVXj
	qdWA2iOEVRqdz4FNwL+GvrQaZ/H8OSf0IOww0QNu6D6AHEulg4L/qi6la/hij1ZJ9KQtKpdnB5BPt
	51iWeJCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7AWl-00000006g6P-0qLg;
	Tue, 22 Apr 2025 10:06:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u79P9-00000006Rca-2vm6
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 08:55:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79P8-0006sS-5A; Tue, 22 Apr 2025 10:54:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79P7-001WQL-36;
	Tue, 22 Apr 2025 10:54:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79P7-00CcZk-2t;
	Tue, 22 Apr 2025 10:54:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250417065846.3562848-1-a.fatoum@pengutronix.de>
References: <20250417065846.3562848-1-a.fatoum@pengutronix.de>
Message-Id: <174531209789.3008207.15352608262545875829.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 10:54:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_015459_736037_DEB69547 
X-CRM114-Status: UNSURE (   6.46  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] lib: random: implement Xorshift* RNG
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 17 Apr 2025 08:58:43 +0200, Ahmad Fatoum wrote:
> Xorshift is simpler, faster and better than the LCG we are currently
> using. Add it in preparation alongside the LCG until consumers are
> migrated.
> 
> 

Applied, thanks!

[1/4] lib: random: implement Xorshift* RNG
      https://git.pengutronix.de/cgit/barebox/commit/?id=9b6a09d03eff (link may not be stable)
[2/4] clock: always seed Xorshift* from clocksource on startup
      https://git.pengutronix.de/cgit/barebox/commit/?id=3a96e4132ffa (link may not be stable)
[3/4] random: replace all rand/srand API with Xorshift
      https://git.pengutronix.de/cgit/barebox/commit/?id=d1411ecfb8f5 (link may not be stable)
[4/4] random: replace get_random_bytes with get_noncrypto_bytes
      https://git.pengutronix.de/cgit/barebox/commit/?id=80859bef3d5e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



