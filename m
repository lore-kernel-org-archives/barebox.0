Delivery-date: Thu, 05 Jun 2025 08:56:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN4WB-003vHB-1a
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 08:56:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN4WA-0005Qe-Vw
	for lore@pengutronix.de; Thu, 05 Jun 2025 08:56:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KYik62pZcZ24a8vDNfHaxF6GWDjjuhoSaytEPQ4lx38=; b=OsaDpdh1c6zWce9wpJeNnQvEhc
	Tz3HUr4YNyBgtEIhRSlsJ2T0X8kCugGE3Rm1SHXbtZmHp057FtD3QnBxuCxE92nLzwqMm5NG8jwV9
	AkitcdYftXKRfgifIWKqRj9gNDXfK5fwWNAIbQlZGQytBBLl67pp8wRTZkIsCQshbfN6BA8pKB4um
	j6cxLhc+iC9Z/IThEoDR4Hv+evTz9/zeiaa7jGadxKLsqvljqkGlXMwbIF7NNx+UJ5OTS3JVTXX0H
	mJqTi3cOkQ7j3t06bt5H+K8p5mJsir2geUxmKRsq+Qxm5QjiD2fCD5KY/QIAw0geRBBrRxf1YeQxe
	oPYuYMVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN4VT-0000000EtCd-3VNo;
	Thu, 05 Jun 2025 06:55:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN4VP-0000000EtBs-0cOg
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 06:55:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN4VN-0004ys-Nh; Thu, 05 Jun 2025 08:55:13 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN4VN-001uhv-1k;
	Thu, 05 Jun 2025 08:55:13 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN4VN-001din-1W;
	Thu, 05 Jun 2025 08:55:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Fabian Pflug <fpg@pengutronix.de>
In-Reply-To: <20250603105914.3068724-1-a.fatoum@pengutronix.de>
References: <20250603105914.3068724-1-a.fatoum@pengutronix.de>
Message-Id: <174910651346.391004.11283985917994508206.b4-ty@pengutronix.de>
Date: Thu, 05 Jun 2025 08:55:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_235515_194966_48E77B74 
X-CRM114-Status: UNSURE (   5.41  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: optee: improve documentation of options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 03 Jun 2025 12:59:14 +0200, Ahmad Fatoum wrote:
> CONFIG_OPTEE_SIZE and CONFIG_OPTEE_SHM_SIZE have a correspondence to OP-TEE
> build config options, so point that out in the help text.
> 
> 

Applied, thanks!

[1/1] common: optee: improve documentation of options
      https://git.pengutronix.de/cgit/barebox/commit/?id=e542b1115575 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



