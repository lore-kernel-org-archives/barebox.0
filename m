Delivery-date: Wed, 13 Mar 2024 08:44:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkJIJ-0044vO-15
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 08:44:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkJII-0008EZ-NQ
	for lore@pengutronix.de; Wed, 13 Mar 2024 08:44:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hTWxhzArH6SIsEBSBrD6reNZUPZ3Y3n1nA3Yuai6GEA=; b=EKdXzd6gm6Vml/Jv/BNjK3yrvV
	qsmwf7x69YbDs56eVXXU1Ihsw6lCvdriJT2tTqt9hWWbgjF6ykJbs1Sf95I6jqeSRUQqhytYptfEm
	AHtqg/YJiDwmGUqkOJ8FIGH7qmEXP83WgS2VpXaIanaEkhzMZSP1cfMRVCLUMaG0HzQaMcIK1b1jh
	YoTh8tDPMRuW5IDDjtjQ36TbHQjC9ilhc6TLE4gLt0R9GviD5RApRMqpinmGyeR8+NsYrY+95iMRm
	Nnl26ftHnBZu1JZCbrSf1KKk89jGmrHjEJF2bdmVoaHMLoBLgsmdVudXOHEa301IuolFvnam0r8Nv
	7QiDY+zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkJHv-00000009ERg-1OIa;
	Wed, 13 Mar 2024 07:44:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkJHr-00000009ER4-40iP
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 07:44:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkJHq-0007x3-D9; Wed, 13 Mar 2024 08:44:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkJHq-0064TX-0k; Wed, 13 Mar 2024 08:44:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkJHp-0043RC-36;
	Wed, 13 Mar 2024 08:44:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20240308-v2024-02-0-topic-arasan-dma-support-v1-1-079e10b6ea88@pengutronix.de>
References: <20240308-v2024-02-0-topic-arasan-dma-support-v1-1-079e10b6ea88@pengutronix.de>
Message-Id: <171031586995.966505.2345822766444161656.b4-ty@pengutronix.de>
Date: Wed, 13 Mar 2024 08:44:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_004432_025777_71736845 
X-CRM114-Status: UNSURE (   5.14  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mci: arasan: add dma write support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 08 Mar 2024 11:49:59 +0100, Steffen Trumtrar wrote:
> Switch from PIO to DMA mode in send_cmd.
> 
> 

Applied, thanks!

[1/1] mci: arasan: add dma write support
      https://git.pengutronix.de/cgit/barebox/commit/?id=b80c0e1ec64c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



