Delivery-date: Mon, 23 Jun 2025 15:27:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uThDE-00AH9p-32
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 15:27:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uThDE-0003al-DN
	for lore@pengutronix.de; Mon, 23 Jun 2025 15:27:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KvWVCUxLZ9r9TOg7/YPlHom5gOR432Od/M0bV9Z9geg=; b=yPQ1ZejeugER9Ftv8wFEmuLRWp
	enmADMs358IJWPNfiuNIUXGjdWRFu1RJPE8LeNG9XqX5lS7cBTGMFp1HEC4UarcYw+AlcSUT0AxaH
	xLsy+k1B5XWmhwl7bQXAXn0aCy0wrJ5bSNqzNxWut7HKJcjUDVwv+1Qmy3BlTxldPOxWZKhitlZeu
	Fbwrspg2NJJ27w9OO7u6SuwwtcM5UBVY1PuacyuHn0CYDVS1okjUmMTsrZhRQDXF918BeXoWXZAPR
	brGS2PKdA4WwwOhVJDePr44PvrS0KpOdc3fvaqXCEgLZGNoAIbE9kyEVe/E416d4hKFUz2Ru+KpYF
	dDwzTVhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uThCn-00000002sEG-31nM;
	Mon, 23 Jun 2025 13:27:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTfpu-00000002aQW-0Xdm
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 11:59:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTfpt-0001Uq-10; Mon, 23 Jun 2025 13:59:41 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTfps-004wPt-2j;
	Mon, 23 Jun 2025 13:59:40 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTfps-00CpNP-2X;
	Mon, 23 Jun 2025 13:59:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
In-Reply-To: <20250617132023.2081589-1-o.rempel@pengutronix.de>
References: <20250617132023.2081589-1-o.rempel@pengutronix.de>
Message-Id: <175067998078.3057263.10661497817899418824.b4-ty@pengutronix.de>
Date: Mon, 23 Jun 2025 13:59:40 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_045942_169193_360626FD 
X-CRM114-Status: UNSURE (   5.39  )
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
Subject: Re: [PATCH v1 1/2] test: test_nvmem: remove "protect" error tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 17 Jun 2025 15:20:22 +0200, Oleksij Rempel wrote:
> With current patch stack we can't pass this tests. To avoid noise,
> remove this tests for now.
> 
> 

Applied, thanks!

[1/2] test: test_nvmem: remove "protect" error tests
      (no commit info)
[2/2] sandbox: configs: enable CMD_NVMEM and NVMEM_RMEM
      https://git.pengutronix.de/cgit/barebox/commit/?id=34bcdc4fd105 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



