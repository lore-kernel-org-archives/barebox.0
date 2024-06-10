Delivery-date: Mon, 10 Jun 2024 15:24:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGf0d-003hyb-01
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 15:24:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGf0c-0004rx-EX
	for lore@pengutronix.de; Mon, 10 Jun 2024 15:24:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fmCFvH1UA63oDySllQGA/+x171QoQ3LMPSMJ5g6qrYw=; b=gBI08i8jo+kq6+Evx5uXgHD9v+
	2xbU5BRRML9hxLrtTUx7xAS5ZQlCFgWIfWowYe2R/XBKcNzxi2CpyXKTP7LPQDdm6O4BLKefKHYNn
	wzDUn+NQcdB8BxjoDGwXBcI+2mFtFbGozvge57hVo3acUZGwPgB8c2nfzivJZa3ibCaFXn3fy5toj
	9OYCh0Qrn0EMXDYtTWfySRxcwdgZJr/KJW2QyzBJM82MzCG9hJpz9LGy8OT+aUMd9W2yBibUtmYF9
	1oDtX+H+htUIT+NdQoPWSzEdufaAKNp7cpckWU8ZXDexeUMEG+igvSsS6qPX2Xf1N1d+XhQFTvqeP
	92mtc0iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGf0C-00000005AGq-0WBt;
	Mon, 10 Jun 2024 13:24:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGf06-00000005AEn-2nua
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 13:23:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGf05-0004ka-GB; Mon, 10 Jun 2024 15:23:53 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGf05-001JXE-3l; Mon, 10 Jun 2024 15:23:53 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGf05-00DlPB-0B;
	Mon, 10 Jun 2024 15:23:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240528201214.1467597-1-s.hauer@pengutronix.de>
References: <20240528201214.1467597-1-s.hauer@pengutronix.de>
Message-Id: <171802583305.3280167.2006185123523122797.b4-ty@pengutronix.de>
Date: Mon, 10 Jun 2024 15:23:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_062355_196502_1ACA1B90 
X-CRM114-Status: UNSURE (   7.45  )
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
Subject: Re: [PATCH 1/3] clk: imx27: sync with kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 28 May 2024 22:12:12 +0200, Sascha Hauer wrote:
> This updates the i.MX27 clk driver to the one from Linux. This
> essentially replaces our physbase based clk matching with device tree
> based clk matching. The driver is nearly unchanged, only some clocks
> that are unused in barebox are dropped.
> 
> 

Applied, thanks!

[1/3] clk: imx27: sync with kernel
      https://git.pengutronix.de/cgit/barebox/commit/?id=c54441527a79 (link may not be stable)
[2/3] ARM: Phytec-phyCARD-imx27: switch to deep probe
      https://git.pengutronix.de/cgit/barebox/commit/?id=d5fe730dbf79 (link may not be stable)
[3/3] ARM: Phytec-phyCARD-imx27: register USB from device tree
      https://git.pengutronix.de/cgit/barebox/commit/?id=e89a77540dcb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



