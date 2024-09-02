Delivery-date: Mon, 02 Sep 2024 09:59:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sl1yX-000SEK-12
	for lore@lore.pengutronix.de;
	Mon, 02 Sep 2024 09:59:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sl1yW-0007nw-8C
	for lore@pengutronix.de; Mon, 02 Sep 2024 09:59:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WlkymlvoRVuAi0QUFuN5x8IU1fpkfmcUFt9GOcUmwZ0=; b=eP77NlDRd9Dtfdv0rLREaKp+jK
	DAbOZF+EJuFnOGmu2kMv34FKylc5Gm6DB6o9yHnP4SGmBSlcdT7cSo7jMtoVZnfQW6JHo1GU0gBVu
	63gAQO8PGJD7gGvHKuUBrVIon7BjotQBstOZwjwDnMwmonmiR/+eErrKcHG3rT4DYyS+BE3U/8pIR
	xZYemiLvOpWNDkkN70GCb9cV4TV4IoRBxhD3M9Wl6ERQgBbwsswSEko95AQTRIFiJtz8nFtjeoc/Z
	LZXUTom6qnt3Gvbkjp7f7rhuwIsUcj3t0a9denJmwxW41KVF+wwFiCvXZZmHKZN7+bg7F6HTXCb9j
	EflMfl0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl1xs-0000000DPGZ-1g9G;
	Mon, 02 Sep 2024 07:59:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl1xp-0000000DPFG-2XjR
	for barebox@lists.infradead.org;
	Mon, 02 Sep 2024 07:59:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sl1xm-0007QG-Uv; Mon, 02 Sep 2024 09:59:02 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sl1xm-004qrE-IE; Mon, 02 Sep 2024 09:59:02 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sl1xm-00Ah3g-1c;
	Mon, 02 Sep 2024 09:59:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
In-Reply-To: <20240828141015.3137381-1-bst@pengutronix.de>
References: <20240828141015.3137381-1-bst@pengutronix.de>
Message-Id: <172526394249.2548419.10081880330801940765.b4-ty@pengutronix.de>
Date: Mon, 02 Sep 2024 09:59:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_005905_677832_633C2552 
X-CRM114-Status: UNSURE (   5.41  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] partitions: dos: prefix hex sector numbers with 0x
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 28 Aug 2024 16:10:15 +0200, Bastian Krause wrote:
> The sector numbers are logged in hexadecimal format. This might not be
> immediately clear, so prefix the numbers with 0x.
> 
> 

Applied, thanks!

[1/1] partitions: dos: prefix hex sector numbers with 0x
      https://git.pengutronix.de/cgit/barebox/commit/?id=f9dc2964a51f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



