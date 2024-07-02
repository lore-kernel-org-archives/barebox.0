Delivery-date: Tue, 02 Jul 2024 08:35:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOX6o-000lDC-2V
	for lore@lore.pengutronix.de;
	Tue, 02 Jul 2024 08:35:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOX6o-0001Yy-84
	for lore@pengutronix.de; Tue, 02 Jul 2024 08:35:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zd0vTYW2ryfP2s74TIi640n/HO1P1+S92bj4lksLZ54=; b=gx7b5ixOP5XxphMmz8+KsDZQo0
	0LLfl+m2WiMr6HS/y0g8QxFrtfpr+XMCr8ntOz6v8WHMfjQje9uTwNDkqSoemNMlfnyFxRB8DFN9i
	KfVUdbhGE88eKHxiyeBNrYpY5bfepmMotAiolZA3hob9azD5kInOselan98Dt1x54m63saiY/L+Hs
	yonSDRQnkgi2m6QTTVwoYNUiWhkMh66Ha0KmFMXqHjXsJdzZimG1Y1INYPpmFfLLH+pfL1i0RnqeT
	Qc+LieQ0qtO1cY1s3dDLLNmCv2SeEIN7jf7toFFnFcu0FyvaQg/kH5QWu4t+V97IjNF83mCaH1eSJ
	w771uMeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOX6P-00000005iuu-2SLu;
	Tue, 02 Jul 2024 06:34:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOX6M-00000005iuU-23r0
	for barebox@lists.infradead.org;
	Tue, 02 Jul 2024 06:34:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOX6L-0001WH-AK; Tue, 02 Jul 2024 08:34:53 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOX6K-006Y5N-Ty; Tue, 02 Jul 2024 08:34:52 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOX6K-00Ey35-2m;
	Tue, 02 Jul 2024 08:34:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20240702050025.2059-1-eagle.alexander923@gmail.com>
References: <20240702050025.2059-1-eagle.alexander923@gmail.com>
Message-Id: <171990209285.3567301.15939460162911047548.b4-ty@pengutronix.de>
Date: Tue, 02 Jul 2024 08:34:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_233454_563559_32F6EDCC 
X-CRM114-Status: UNSURE (   5.29  )
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
Subject: Re: [PATCH] commands: cpuinfo: Add Cortex-A55 information
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 02 Jul 2024 08:00:25 +0300, Alexander Shiyan wrote:
> Additionally, the indentation of spaces has been replaced by tabs.
> 
> 

Applied, thanks!

[1/1] commands: cpuinfo: Add Cortex-A55 information
      https://git.pengutronix.de/cgit/barebox/commit/?id=0ec1a2bcf2db (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



