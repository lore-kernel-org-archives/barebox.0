Delivery-date: Mon, 08 Apr 2024 08:51:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtiqW-002H7g-05
	for lore@lore.pengutronix.de;
	Mon, 08 Apr 2024 08:51:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtiqV-0001G8-Gs
	for lore@pengutronix.de; Mon, 08 Apr 2024 08:51:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jzpDeAmebH3aOVhrRXKxYhVqNFTIenfIcYEXfskdHKA=; b=AgXDp5wBcoq1lwK2lbjXehkzv9
	1V17apsNOAmUwFQ+SAu5dVDyMJGPW0+TTpkIIXl9AFTYlAc81GWmOQh+Mf5xOCiCQxQCASEyUrAdd
	48MZyr3wlvMod2ivHbavI4xkG5mUGM/5WAB/zKFbwQnkubns/xH3sEEbCUQxQiiPdpxkmzz+jo8bU
	l25+2La38rW24HSzcgj0Y1rlJ4LVWowEkDbSADRdqU65ezRCDi8Ha/mgDgMOe+T77DgZfMHfjmDeU
	UfhpO3RomqUK8T6Mv8C5zyjo485LWG15tUuzmv0ZXFm8n2CCLbfYwEg76tgw+1VNxTZ/PwUz8+BUv
	7yiblH2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtipz-0000000EZe6-0wpl;
	Mon, 08 Apr 2024 06:50:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtipw-0000000EZde-07vJ
	for barebox@lists.infradead.org;
	Mon, 08 Apr 2024 06:50:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rtipu-00013r-BW; Mon, 08 Apr 2024 08:50:34 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rtipt-00B3lt-Va; Mon, 08 Apr 2024 08:50:33 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rtipt-00EdfF-2x;
	Mon, 08 Apr 2024 08:50:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240405101250.2523616-1-s.hauer@pengutronix.de>
References: <20240405101250.2523616-1-s.hauer@pengutronix.de>
Message-Id: <171255903391.3488988.8163158791085082083.b4-ty@pengutronix.de>
Date: Mon, 08 Apr 2024 08:50:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240407_235036_102215_42859C40 
X-CRM114-Status: UNSURE (   7.21  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: mecsbc: fixup /regulator-sd device tree node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 05 Apr 2024 12:12:50 +0200, Sascha Hauer wrote:
> The MECSBC prototype board has a bug which makes the 1.8V SD mode
> unusable. Add a fixup which sets the regulator-min-microvolt property of
> the SD regulator to 3.3V to prevent the Kernel from going into 1.8V.
> 
> 

Applied, thanks!

[1/1] arm: mecsbc: fixup /regulator-sd device tree node
      https://git.pengutronix.de/cgit/barebox/commit/?id=004911504554 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



