Delivery-date: Tue, 19 May 2026 08:17:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPDlH-001P8m-2J
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 08:17:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPDlH-0003SO-5P
	for lore@pengutronix.de; Tue, 19 May 2026 08:17:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/AUDrRLvAWBU/7BC9+yS3K1jjnrv4bZJxdPWkmY2wn0=; b=qqAMuS8mkelnqzzfxIEYFC8itd
	mZURflYK4R7vVG+v2El0m9zFUafWL9fYzLl1DjXkk+I+bZwlE9xv7fRGGTaTA4A5Zcq9q3L9rqToa
	sXY5Zvbt089mfFc38xl1SMp6Hok5ViilvWwQCxUSJJ+G9+2f755i+x3udsmaFgFU0hhfbn8TE91b2
	FNk94OBGz95tmVMUiJI/RgrrRGQODmfUn9OBevBMZDISGErXTKgs99UpQRWYVui3uCpvj9Z6Jxv4J
	i9vTjLIP9StcP1SQ2uUcR1zobv3yUKjqytlcekn5aZNbwbmj0MZ4vx/5NLL9GO5vKvNrzgovgtmEq
	gtEmrTwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDkB-00000000IMo-3M1I;
	Tue, 19 May 2026 06:15:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDk8-00000000IMB-44UY
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 06:15:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPDk7-0003BW-Ck; Tue, 19 May 2026 08:15:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPDk6-000iT6-2V;
	Tue, 19 May 2026 08:15:51 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPDk7-00000002BiP-1Cjm;
	Tue, 19 May 2026 08:15:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260518183250.240134-1-s.hauer@pengutronix.de>
References: <20260518183250.240134-1-s.hauer@pengutronix.de>
Message-Id: <177917135128.521619.13903502459551535734.b4-ty@pengutronix.de>
Date: Tue, 19 May 2026 08:15:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_231553_015011_409A0213 
X-CRM114-Status: UNSURE (   5.56  )
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
Subject: Re: [PATCH v2 1/3] PBL: add common define for early malloc size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 18 May 2026 20:32:48 +0200, Sascha Hauer wrote:
> Current all architectures using early malloc in the PBL use a pool size
> of 128KiB. Add a common define for it.
> 
> 

Applied, thanks!

[1/3] PBL: add common define for early malloc size
      https://git.pengutronix.de/cgit/barebox/commit/?id=8350666275f7 (link may not be stable)
[2/3] pbl: cleanup early malloc
      https://git.pengutronix.de/cgit/barebox/commit/?id=82157ec02732 (link may not be stable)
[3/3] ARM: rockchip: initialize PBL malloc
      https://git.pengutronix.de/cgit/barebox/commit/?id=76b1f31275fe (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



