Delivery-date: Thu, 30 May 2024 15:27:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCfom-0004T9-2p
	for lore@lore.pengutronix.de;
	Thu, 30 May 2024 15:27:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCfom-0007gS-Ay
	for lore@pengutronix.de; Thu, 30 May 2024 15:27:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dack7SWY2BQBylJRktSl530wn15e4V8yYO2pa2adNTI=; b=a8dpg2nC3ndpyG1AIVXmtKQi04
	D6o85YzbP68x8n5igEksnYEig3WgyEgdG4Vq3OAA+e9Ap0WH14jGD1EjMamlWJzHLLgvwPl9TIFSG
	SpIjHYnJ23lWU0asx8zOcTNndgtzaYOJHVtXWL404JHCZRZ152tPChLU/fiO8iPKS2ib5J6e07EEP
	Q/eulpw9iCDJPL33pN7S1YYO+mbYeU1+cVFRQOiUHNuOjdUtZdMn5Uyqd48c+E+7KvHQ11akpqr01
	z+pxOR+4SavVrRB9Ddek2Y9nY9sn5iVb4nuy3Qv/Pyv/9B48eRsx9gSbIz5g+P1+58eUKZhgOYrZg
	+YE+dsyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCfoM-00000007MVx-2o0Z;
	Thu, 30 May 2024 13:27:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCfoI-00000007MQx-1U12
	for barebox@lists.infradead.org;
	Thu, 30 May 2024 13:27:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCfoF-0007ab-Lw; Thu, 30 May 2024 15:27:11 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCfoF-003bPQ-8e; Thu, 30 May 2024 15:27:11 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCfoF-0090HF-0f;
	Thu, 30 May 2024 15:27:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
In-Reply-To: <20240529093308.502072-1-o.rempel@pengutronix.de>
References: <20240529093308.502072-1-o.rempel@pengutronix.de>
Message-Id: <171707563120.2145862.6564473915314778647.b4-ty@pengutronix.de>
Date: Thu, 30 May 2024 15:27:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240530_062714_492735_092C3DFB 
X-CRM114-Status: UNSURE (   8.30  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1] of: add sanity check for machine compatible string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 29 May 2024 11:33:08 +0200, Oleksij Rempel wrote:
> Add a sanity check in of_get_machine_compatible to ensure we fall back
> to the default hostname "barebox" when the machine compatible string is
> empty. This prevents scenarios where no hostname is set, which can occur
> when starting an STM32 version of Barebox as a second stage on top of
> Barebox prior to commit 1da26bfb9da2 ("common: don't fixup empty serial/
> machine_compatible strings"). This fallback makes debugging easier in
> case someone faces a similar issue.
> 
> [...]

Applied, thanks!

[1/1] of: add sanity check for machine compatible string
      https://git.pengutronix.de/cgit/barebox/commit/?id=6edcb98c0dd5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



