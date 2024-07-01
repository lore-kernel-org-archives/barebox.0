Delivery-date: Mon, 01 Jul 2024 12:24:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOECu-000TKj-2j
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 12:24:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOECu-0008CA-AT
	for lore@pengutronix.de; Mon, 01 Jul 2024 12:24:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xT7AuTAyz8Nxqo1jmidkS9ZtcQ5HyipFTt/7uEXmu+s=; b=PfnRRROQ0DSuJJoacBKCB/J5xD
	zEIMemvXiD+seciklHjIOY2ICNzZZ/Q0QcI7RwwBOonySa/oAsXD4NEXk8AVtGtWa4RISW92vtsQu
	fM7bZJLcS+85KUDZRbPX9DR8qM/1qpKklf4L9llP17m79Bm2kYHi2i1HZCMSPnrq02l+HyeiWGTW0
	AvMIJpGIWfm2IN8NvrQwHkdyvJubo2qrVY1+dDoOHEljaALIxIVVSCWOH9hBoKl6CNjzOGuPSCnp6
	Xp3NVlTuwZa/AkF7aJse8YV77R269191B+IUVzdcwEe3badMdOBrh2tupQg4iyhoWFkPogL0q45aH
	i78BsbAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOECU-00000002eXC-1wUr;
	Mon, 01 Jul 2024 10:23:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOECO-00000002eSz-1SoC
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 10:23:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOECN-00086m-0J; Mon, 01 Jul 2024 12:23:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOECM-006Lkk-K9; Mon, 01 Jul 2024 12:23:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOECM-00DwPe-1o;
	Mon, 01 Jul 2024 12:23:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240701070412.130627-1-a.fatoum@pengutronix.de>
References: <20240701070412.130627-1-a.fatoum@pengutronix.de>
Message-Id: <171982943055.3322677.13186341851976641774.b4-ty@pengutronix.de>
Date: Mon, 01 Jul 2024 12:23:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_032352_416512_B6917324 
X-CRM114-Status: UNSURE (   7.26  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] rtc: add PCF85063 RTC and NVMEM support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Jul 2024 09:04:12 +0200, Ahmad Fatoum wrote:
> Import the Linux v6.10-rc3 state of the RTC/NVMEM driver, so it can be
> used to check wall time in barebox.
> 
> 

Applied, thanks!

[1/1] rtc: add PCF85063 RTC and NVMEM support
      https://git.pengutronix.de/cgit/barebox/commit/?id=1fdd3c0c0658 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



