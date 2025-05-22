Delivery-date: Thu, 22 May 2025 22:24:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uICT0-001eRW-2L
	for lore@lore.pengutronix.de;
	Thu, 22 May 2025 22:24:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uICT0-0002rz-8O
	for lore@pengutronix.de; Thu, 22 May 2025 22:24:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qBMWGefVWUQhdDpHSmGfRNjRfNkQ5McPb1sLnoJFexQ=; b=qCuurd6LxnjU68uSgTXNnMDkd2
	m/z9Ny19YjjM55/JiXQ9uSvEfqBsPb0PkqxD6LzyBAxuHqEJ8lDwAbPtpka3Hh7zuP34l5TpJ/QwO
	6/VudmOGf2f8VjTcP09u6cs72vA0Zm0pzY+3glJ/h1s3JMEcJZhLFyGOtpS5Gwp4/CekIDwIDS6j8
	59aMQcruIvNq16Lh61IjHH5P5MFTFnxckzM99pCBEic2BeIVH8sq1uQy8HLaxTuPPNZdX3CJsr+n6
	nJwlpa5WDvnIj1r1Pyzs7Y+PStfGERIvj6rgylb1ybFY98KFCaP6jYklsQlly1S+8uBrmK1XtEyYw
	yaZ1ODWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uICSa-000000027Si-3zjP;
	Thu, 22 May 2025 20:24:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uICSY-000000027SO-3P2P
	for barebox@lists.infradead.org;
	Thu, 22 May 2025 20:24:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uICSX-0002cF-4e; Thu, 22 May 2025 22:24:09 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uICSW-000n6y-33;
	Thu, 22 May 2025 22:24:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uICSW-002HrS-2p;
	Thu, 22 May 2025 22:24:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: johannes@gnu-linux.rocks, a.fatoum@pengutronix.de, 
 l.stach@pengutronix.de, m.tretter@pengutronix.de, 
 Michael Graichen <michael.graichen@hotmail.com>
Cc: barebox@lists.infradead.org
In-Reply-To: <VI1PR02MB44299AB6784FA5F3340F6CF9AB9CA@VI1PR02MB4429.eurprd02.prod.outlook.com>
References: <VI1PR02MB44299AB6784FA5F3340F6CF9AB9CA@VI1PR02MB4429.eurprd02.prod.outlook.com>
Message-Id: <174794544887.545269.2486517197902762517.b4-ty@pengutronix.de>
Date: Thu, 22 May 2025 22:24:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_132410_850022_6FB33219 
X-CRM114-Status: UNSURE (   5.77  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] add zynq-7000 i2c support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 19 May 2025 07:13:11 +0000, Michael Graichen wrote:
> This adds support to use the i2c bus on zynq-7000
> 
> 

Applied, thanks!

[1/1] add zynq-7000 i2c support
      https://git.pengutronix.de/cgit/barebox/commit/?id=434ec60834a6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



