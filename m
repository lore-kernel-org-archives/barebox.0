Delivery-date: Mon, 25 Aug 2025 11:36:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqTd5-004Ji0-0L
	for lore@lore.pengutronix.de;
	Mon, 25 Aug 2025 11:36:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqTd3-00021q-W5
	for lore@pengutronix.de; Mon, 25 Aug 2025 11:36:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z65PiFwXtv815p398wY8W0FSLwLCRMFfx8qsQW6h7d0=; b=TpFyDNxkNsf+7Q9ar7ohAv7prJ
	Ce3UROwOXIpTfqmVs5EDFfeP13bhv4Ep+I1biRRrT+igWjfqRcF+7f7VIHid/HId+YS0BsgwV4Q0I
	1uzRib9s3Exbjz0Ob3HHO8ozs7kPQtHXerICn9PT4RQkNHxVruETo2bNRXMknL7rmCM5e67NuS7Cw
	akELbtOVMFslX3AQgx2EjIb0PaLlPOpGbKe+Yecv/VRykgBp6Nwuoqksn7jCDOLVV6w4miH5Okdc8
	2ivxYzTrY7nYRexOtL1As45Fqt5vUSGiSLBg/hOsD2cTXvIBg+QHZ6WGAs7g4wjD6UPcv9l87o6Hn
	+rgNpPGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqTcb-00000007Vx8-2Le0;
	Mon, 25 Aug 2025 09:36:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqSzE-00000007PZv-1fTn
	for barebox@lists.infradead.org;
	Mon, 25 Aug 2025 08:55:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqSzD-0005Iy-9a; Mon, 25 Aug 2025 10:55:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqSzC-0022SV-3A;
	Mon, 25 Aug 2025 10:55:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqSzC-000000033xR-3rqO;
	Mon, 25 Aug 2025 10:55:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, David Jander <david@protonic.nl>
In-Reply-To: <20250813070149.855341-1-david@protonic.nl>
References: <20250813070149.855341-1-david@protonic.nl>
Message-Id: <175611213091.730182.16393055528938868147.b4-ty@pengutronix.de>
Date: Mon, 25 Aug 2025 10:55:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_015532_452196_FB2187A2 
X-CRM114-Status: UNSURE (   7.82  )
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
Subject: Re: [PATCH] arm: boards: Add support for Protonic PRTPUK board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 Aug 2025 09:01:49 +0200, David Jander wrote:
> PRTPUK is a credit-card sized ISOBUS virtual terminal, based on the
> Rockchip RK3576 SoC, that features a CAN interface and a 100/1000Base-T1
> interface for HS-ISOBUS (HSI), as well as a USB-C port for connecting to a
> touch-screen monitor.
> 
> 

Applied, thanks!

[1/1] arm: boards: Add support for Protonic PRTPUK board
      https://git.pengutronix.de/cgit/barebox/commit/?id=f6464bb752ba (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



