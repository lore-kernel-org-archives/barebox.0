Delivery-date: Fri, 16 Feb 2024 13:00:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rawtJ-008WsU-39
	for lore@lore.pengutronix.de;
	Fri, 16 Feb 2024 13:00:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rawtJ-0005m2-Dj
	for lore@pengutronix.de; Fri, 16 Feb 2024 13:00:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MyCUHxqxJZxKfT+tz3S2mmsePoPBUtFe+44HefVrPpE=; b=fh+vDkTGRUKPqxkbqfpSN831oH
	6+COlyjkjpdhKdJVQwzD/sbLwC/JlwNqGvG12dDwxad7xYJb4vzOSE20W/4147gi6/OavyoRtssH9
	2d0F93pMnOHp7rhxVpku0DhaHFvwHdJNDPvMc5wKXd1c/QreLszn4mV9LYh3wbPK7Wa6SsmMsKPGu
	jUnmhYTmJWyK9/drMsqYZbwbkJ2GBLEr8zfghoSVKS4x+elIw1r/MxE3sY1t1tt9wjzhp8g4YYQQH
	cIvnxTMI85qRXZ2du+M8gLDFCQh3ygrnX4ENbgQAbXGLvho4BPaNmcEfIK7gOj5GyfSI+xMERAAzz
	EN9nR2gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawsl-00000002EL5-1Yuo;
	Fri, 16 Feb 2024 11:59:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawsi-00000002EKA-15Ny
	for barebox@lists.infradead.org;
	Fri, 16 Feb 2024 11:59:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rawsh-0005i4-2S; Fri, 16 Feb 2024 12:59:51 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rawsg-00149w-ML; Fri, 16 Feb 2024 12:59:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rawsg-005uXr-21;
	Fri, 16 Feb 2024 12:59:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: ske@pengutronix.de
In-Reply-To: <20240215103353.2799723-1-a.fatoum@pengutronix.de>
References: <20240215103353.2799723-1-a.fatoum@pengutronix.de>
Message-Id: <170808479062.1408984.10210208315888412124.b4-ty@pengutronix.de>
Date: Fri, 16 Feb 2024 12:59:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_035952_329309_1FF7E142 
X-CRM114-Status: GOOD (  11.28  )
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
Subject: Re: [PATCH 1/3] driver: make CONFIG_DEBUG_PROBES more useful for
 removal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 15 Feb 2024 11:33:51 +0100, Ahmad Fatoum wrote:
> When CONFIG_DEBUG_PROBES is enabled, barebox will print a message on
> every device probe and removal. Unfortunately, the removal prints are not
> very useful, because the removal happens in the bus remove function,
> which is often a no-op, but that's not known to driver core.
> 
> To make this a bit more useful, let's allow skipping bus remove
> functions like Linux does and only print that a remove is happening if
> either a bus or driver remove function is available.
> 
> [...]

Applied, thanks!

[1/3] driver: make CONFIG_DEBUG_PROBES more useful for removal
      https://git.pengutronix.de/cgit/barebox/commit/?id=4d515afe56eb (link may not be stable)
[2/3] drivers: drop simple bus remove in favor of common implementation
      https://git.pengutronix.de/cgit/barebox/commit/?id=e8ec515026fd (link may not be stable)
[3/3] firmware: arm_scmi: call device driver remove if defined
      https://git.pengutronix.de/cgit/barebox/commit/?id=59aab0bebb1b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



