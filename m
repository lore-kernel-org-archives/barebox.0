Delivery-date: Tue, 07 May 2024 09:32:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4FJ4-000TXT-3C
	for lore@lore.pengutronix.de;
	Tue, 07 May 2024 09:32:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4FJ0-0002XA-S3
	for lore@pengutronix.de; Tue, 07 May 2024 09:32:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YZ7m0LpaGJmhPlGC1AQPT2MwnnlXqyD2PiFA1WYOGF0=; b=5F8JD6xuUsxtUxNWpXl6K2Ge4d
	e9FfyE9eMAMIG6spLIt3Ue3vKBtBkdK8mobQyz1GwUMltGtHYU0ZC1x1VZJKAHNX87aO9KF0ECbLQ
	oogglTF9naoZskxaA28INzI1/eMa5h2/w+yp03EbW2cIn1CC0Uz1caClkuTLOMH7Ut6rS6bq0xHrF
	OEymh8rIizVumCrByt9M/4h8yRLWuffZiE1wIga/Pqg+fh4hkZ1nTKyyWFvFEqPk8V0ow3hFLtkXT
	PoljEfjrZbA5bTqVp+DLhWIuDtK3+Wp5tTw+N3ebw9WkO/Y2dLU1Wfh4anwG1OrECMQ9dWXkYtKIU
	N57CN1bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4FID-00000009zVi-3qWf;
	Tue, 07 May 2024 07:31:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4FIA-00000009zUU-2RBt
	for barebox@lists.infradead.org;
	Tue, 07 May 2024 07:31:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s4FI7-0002D8-SQ; Tue, 07 May 2024 09:31:11 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s4FI7-0003O1-G4; Tue, 07 May 2024 09:31:11 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s4FI7-003oRf-1P;
	Tue, 07 May 2024 09:31:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240503101509.3489624-1-s.hauer@pengutronix.de>
References: <20240503101509.3489624-1-s.hauer@pengutronix.de>
Message-Id: <171506707142.908862.2243857396552005759.b4-ty@pengutronix.de>
Date: Tue, 07 May 2024 09:31:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_003114_651288_554C68CC 
X-CRM114-Status: UNSURE (   8.66  )
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
Subject: Re: [PATCH] mtd: nand: mxc_nand: clear NAND_BBT_CREATE flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 03 May 2024 12:15:09 +0200, Sascha Hauer wrote:
> On i.MX NAND the factory bad block markers are not at the place the NAND
> core expects them to be, so the core also can't properly generate a bad
> block table. Clear the NAND_BBT_CREATE flag to prevent the core from
> doing so. This preserves the behaviour we had previously with the
> barebox driver which was lost when we replaced it with the Kernel
> driver.
> 
> [...]

Applied, thanks!

[1/1] mtd: nand: mxc_nand: clear NAND_BBT_CREATE flag
      https://git.pengutronix.de/cgit/barebox/commit/?id=f4cc035245c6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



