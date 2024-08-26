Delivery-date: Mon, 26 Aug 2024 13:09:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1siXbU-00DZ6x-1e
	for lore@lore.pengutronix.de;
	Mon, 26 Aug 2024 13:09:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1siXbT-0005DQ-VL
	for lore@pengutronix.de; Mon, 26 Aug 2024 13:09:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Nfcsa2vYiV+dPStPw7X/Sf5EILSBlwRILzsfDlDinZc=; b=JVDuuLAf1JlLcdRw00wDWJf96P
	wQKAgsUIe6PehSOx7lLD+akyXTt8BuQw4CvV+Y2SIsOHdL7FdB5DQMjgP71MqpkMsnb6J1wj6X6Ck
	BoYY43C4XkbKC08AR+OCx+Kk6ADlSfjf6F6I6G+gCl1MCR4OXrvxBsQFzf4vuazuJRegLBW70g9DP
	jynn+F4fMJhM7AnmzwIEIl7gBXv7+rZ783k8XrrTuNmlRfV8DmNtwGidUEF68N4tuMyA0LsVE2MXv
	Nb41d9hggbt8uMTuvWOmgNDktG+HFGLjOoY+jOyL2uaV1+2ybihMVvwuCho+VGtuEgls+k8+L5DL9
	zXqNDsTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siXau-000000075IT-3DFv;
	Mon, 26 Aug 2024 11:09:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siXam-000000075Fl-1qPm
	for barebox@lists.infradead.org;
	Mon, 26 Aug 2024 11:09:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1siXal-0004yv-4H; Mon, 26 Aug 2024 13:08:59 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1siXak-003AsC-Ne; Mon, 26 Aug 2024 13:08:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1siXak-004bCN-2B;
	Mon, 26 Aug 2024 13:08:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240824200304.2160266-1-a.fatoum@pengutronix.de>
References: <20240824200304.2160266-1-a.fatoum@pengutronix.de>
Message-Id: <172467053867.1096284.17222558574329982050.b4-ty@pengutronix.de>
Date: Mon, 26 Aug 2024 13:08:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_040900_952400_F8464E5A 
X-CRM114-Status: UNSURE (   5.64  )
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
Subject: Re: [PATCH] doc: bcm283x: Mention arm_64bit config.txt key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 24 Aug 2024 22:03:04 +0200, Ahmad Fatoum wrote:
> Guide users into the right direction by mentioning what config.txt
> key is needed to start barebox in 64-bit mode.
> 
> 

Applied, thanks!

[1/1] doc: bcm283x: Mention arm_64bit config.txt key
      https://git.pengutronix.de/cgit/barebox/commit/?id=910555ee0825 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



