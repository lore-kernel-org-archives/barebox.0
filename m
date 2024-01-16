Delivery-date: Tue, 16 Jan 2024 07:54:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPdLe-001TlX-1X
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 07:54:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPdLf-00049v-73
	for lore@pengutronix.de; Tue, 16 Jan 2024 07:54:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O2L3REyzdcrT1DHUpqhz19bQ4cBveQsxoi+EiD0SyT4=; b=Q0Qjhg4zdGX4TSEoGpTJPjIGqX
	mU4tbaYSSDBee1q5gCdraLPMsQFOB4ZUvZXUqQwXAr5Mkpdx3nXYSU8G5Zw/3v5+LDvh27oMC08f6
	cBNOQSEkQ9AqBr4rq52zq7/LEm7FrRPzcqrqBbM+TDnmr+Sz40nMWFozl0ZX2QzRdUIgayWZYV4z8
	J9dTM4MMf92ePpwUrW7GMhDP9aj2R8dRgaS5PbhD1hVgMO15sCXT1534j4A2YFZUDDa4JIyleCb6G
	lNWLRCLmNrXzm091wNljATnqB0tKH0xtWK9c/Aes9vkBZUaNpKqGF5BCVoCe4YD0ATi6SjsmUwGAQ
	ze6NRB4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPdKi-00B9dl-0o;
	Tue, 16 Jan 2024 06:54:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPdKf-00B9dC-1e
	for barebox@lists.infradead.org;
	Tue, 16 Jan 2024 06:53:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rPdKe-00043T-8P; Tue, 16 Jan 2024 07:53:56 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rPdKd-000BIq-SP; Tue, 16 Jan 2024 07:53:55 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rPdKd-005O5F-2e;
	Tue, 16 Jan 2024 07:53:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240115155615.953954-1-s.hauer@pengutronix.de>
References: <20240115155615.953954-1-s.hauer@pengutronix.de>
Message-Id: <170538803581.1284156.1102491452028367403.b4-ty@pengutronix.de>
Date: Tue, 16 Jan 2024 07:53:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_225357_546971_A526C708 
X-CRM114-Status: UNSURE (   6.35  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] watchdog: imxulp: Fix timeout calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Jan 2024 16:56:14 +0100, Sascha Hauer wrote:
> On i.MX93 the 32k clock runs at 32768Hz. Together with the /256
> prescaler the watchdog timer advances 32768/256 = 128 ticks per
> second, not 125.
> 
> 

Applied, thanks!

[1/2] watchdog: imxulp: Fix timeout calculation
      https://git.pengutronix.de/cgit/barebox/commit/?id=96b145148467 (link may not be stable)
[2/2] watchdog: imxulp: Fix prescaler setting on i.MX7ulp
      https://git.pengutronix.de/cgit/barebox/commit/?id=519d1c00f3e5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



