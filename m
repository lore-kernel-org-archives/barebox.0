Delivery-date: Mon, 17 Mar 2025 09:49:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6AC-000Xwl-0N
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 09:49:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6A9-0007ol-30
	for lore@pengutronix.de; Mon, 17 Mar 2025 09:49:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V/5o91M4xZy2LKpzyA3CzTueMWc6uSOqioFXsLl+pSI=; b=OYraVh6X3a9RVnp7r3zgkRbJgj
	JQM1ih7E4BLz48VavLdWPaue5wg7EOQvfFsyK2m91T1jiMXMBofaGdAIk4IN4zrIb9kvl4nzOkcGK
	taE0zTO+Jf+vLRB9hCuGEBvP3VOYsVvzEVPeywD2vAcnFYU3R+FZUWJ6AWDRLJx03ZrbFHdMxEpkr
	ps4D3wRyl+7vY50mMLSfChbU2GLrmBdBJQcWsGMDAyrZkK1ZWPIHivvg2Pj/E90+ySqaa9FDXGYeK
	+mdQtLHHaRQxkIOmodL/cJ8GSur/8pRYnn9qlW6ziv3VvO0Fd5cOGvfNyKo5CUHI+bojNSQaGMLjH
	vysU1aug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu69X-00000001nrN-2h89;
	Mon, 17 Mar 2025 08:48:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu644-00000001mnq-0hQA
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 08:43:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu643-0006QW-0k; Mon, 17 Mar 2025 09:43:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu642-000DNf-1K;
	Mon, 17 Mar 2025 09:43:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu642-00H2ZL-2T;
	Mon, 17 Mar 2025 09:43:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@zdiv.net>
In-Reply-To: <20250314152437.25675-1-jmaselbas@zdiv.net>
References: <20250314152437.25675-1-jmaselbas@zdiv.net>
Message-Id: <174220099476.4061406.12703222009405718514.b4-ty@pengutronix.de>
Date: Mon, 17 Mar 2025 09:43:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_014316_209239_822BA454 
X-CRM114-Status: UNSURE (   9.55  )
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
Subject: Re: [PATCH] regulator: fan53555: suppress warning about
 uninitialized variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 14 Mar 2025 16:24:37 +0100, Jules Maselbas wrote:
> In function 'fan53555_device_setup', a call to 'regmap_update_bits' is
> made with the mode_mask variable potentially uninitialized.
> 
> This can be the case if di->vendor is FAN53526_VENDOR_FAIRCHILD and
> di->sleep_vsel_id is not handled by the case (neither FAN53555_VSEL_ID_0 nor FAN53555_VSEL_ID_1).
> I am not sure how likely it is to happen.
> 
> [...]

Applied, thanks!

[1/1] regulator: fan53555: suppress warning about uninitialized variable
      https://git.pengutronix.de/cgit/barebox/commit/?id=55d10d7aa06f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



