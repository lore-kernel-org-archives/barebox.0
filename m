Delivery-date: Fri, 23 Jan 2026 09:46:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjCoQ-004QLd-26
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 09:46:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjCoP-0006uu-NC
	for lore@pengutronix.de; Fri, 23 Jan 2026 09:46:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eLJnwVnu7lwSMkt+atzUBTECjIbsmx0bwxVHQQEtxA0=; b=WY6hkIA4/qDPTr3lEKTwBcpB4C
	my+yqKBO/8XRzB4W4G2rDrILkU08EhvbyQNWRBZxcN2Bhu7Ayh9SbDHUgjoDTbWeZf/UO7jvjAoQx
	H3E4WQyROSxCDeamiNtTk7ajxAxHg84CpWdEFLLVrKSpszUITUpcLvjAYrggy5PBZ6n1f5RnuNfaz
	hq4CQarSSi/XHNFd7KeH17DTC72sXKlWe85oZPdenEQDIvrHu54WFhm/E7wvPvwK2kWAkS5QYundC
	8SpkLI3on40tGXwKpUHFmAr3Ocq8fgf4OBqnlr5yvQqqMuKobM2WBlW7/o37cLAi94ssGg9LT59QC
	+a/brnrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjCo2-00000008V9U-08NQ;
	Fri, 23 Jan 2026 08:46:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjCnx-00000008V91-1lyD
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 08:46:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjCnv-0006lU-DD; Fri, 23 Jan 2026 09:46:07 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjCnv-0023ys-2q;
	Fri, 23 Jan 2026 09:46:07 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjCnv-0000000GHKp-0dcH;
	Fri, 23 Jan 2026 09:46:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260120122240.623440-1-a.fatoum@pengutronix.de>
References: <20260120122240.623440-1-a.fatoum@pengutronix.de>
Message-Id: <176915796715.3879704.5278937810946928876.b4-ty@pengutronix.de>
Date: Fri, 23 Jan 2026 09:46:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_004609_490861_92181A2B 
X-CRM114-Status: UNSURE (   6.01  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: configs: multi: enable CONFIG_BOOT_OVERRIDE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 20 Jan 2026 13:22:36 +0100, Ahmad Fatoum wrote:
> The override mechanism is becoming an increasingly useful development
> aid, so enable it in the multi defconfigs.
> 
> 

Applied, thanks!

[1/1] ARM: configs: multi: enable CONFIG_BOOT_OVERRIDE
      https://git.pengutronix.de/cgit/barebox/commit/?id=291820d8d755 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



