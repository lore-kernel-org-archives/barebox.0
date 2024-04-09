Delivery-date: Tue, 09 Apr 2024 15:05:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruBAS-004Vek-0C
	for lore@lore.pengutronix.de;
	Tue, 09 Apr 2024 15:05:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruBAR-0000TG-I1
	for lore@pengutronix.de; Tue, 09 Apr 2024 15:05:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UeIgXkb7YB13fu2QdrErTdh3xJmg4iY9FMDp9G3uNOc=; b=e8NI+WiLTJTihzfNuP3/rzYIvD
	mvqBLBbTpc5OgRyz+OWehXfJ59Q0bzI6oL5HwpF241ICSClWT6jsYUbnpgt8gO35iwpnxIhMd9m8P
	z6ZAwK0sDg1ZwOnmJkx6k0cdWJkweVKTycpX2MwJJUzZx0MFf9iCEZ1+Ap6ReCSEse5a0cLOzOgPK
	6eLO5n2NifL7nmwy92eTX3YldM9KuUcP9c5OAkXbQhPLPMp7SznueBJCgGHxHkq6estMiRZA3/091
	w3yT9GmYkObAHZEvWwySOVlKxzeMX4BTTnsDCRIvU2osiQdKDefcwsxXTVKqJDiUR/nRSnpW01rs0
	yo0k450g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruB9m-000000023BH-1vXK;
	Tue, 09 Apr 2024 13:04:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruB9i-00000002395-3Evh
	for barebox@lists.infradead.org;
	Tue, 09 Apr 2024 13:04:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ruB9b-0000E2-9X; Tue, 09 Apr 2024 15:04:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ruB9a-00BJBn-T9; Tue, 09 Apr 2024 15:04:46 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ruB9a-0014kL-2g;
	Tue, 09 Apr 2024 15:04:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20240409-v2024-03-0-topic-arasan-fixes-v1-1-abdd8501b311@pengutronix.de>
References: <20240409-v2024-03-0-topic-arasan-fixes-v1-1-abdd8501b311@pengutronix.de>
Message-Id: <171266788682.256404.15966381236812837711.b4-ty@pengutronix.de>
Date: Tue, 09 Apr 2024 15:04:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_060454_846910_8A1293D8 
X-CRM114-Status: UNSURE (   5.95  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: arasan: rework register_sdclk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 09 Apr 2024 07:57:20 +0200, Steffen Trumtrar wrote:
> Instead of guarding this at compile time, always call register_sdclk
> with the correct clk_ops, like in linux.
> 
> Currently only ZynqMP and default arasan ops are supported.
> 
> 

Applied, thanks!

[1/1] mci: arasan: rework register_sdclk
      https://git.pengutronix.de/cgit/barebox/commit/?id=70791fb7f1aa (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



