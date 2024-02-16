Delivery-date: Fri, 16 Feb 2024 13:02:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rawvH-008Wy6-25
	for lore@lore.pengutronix.de;
	Fri, 16 Feb 2024 13:02:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rawvG-00060Z-DT
	for lore@pengutronix.de; Fri, 16 Feb 2024 13:02:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uQOY6m+0Jd9r5gIqXsf1CuFnn6OaLCY16ipudXmY52M=; b=G6aQgOozh5ImH81NslPT6WNAsw
	QsAs7a3lgyb1GLQrGXWStkISI46l9wxjF5NSvBI+rTbvYrmprikYguNHP37xspmut2yKRBx5fg6La
	t/s5Ij/0KWVdlt6+jc51wPESkmboVhjju1dpZBvsNPr13Ux+LtARB6dGEXFO9unJzZyHtm3guOWNU
	k/uJ0OjWoufedN/zvuAIC4RAt9TA0jr0/xQUdJ65AGOhWmCTu4RXBK86P4KJ65qDRV54pnbCHruth
	JuFPxaSGnu11I3tzIL+Cp80hmU0Ecq7KFfLoXj/PPw5W/YAdNDuBk05tlPKNp6lpiWW3XlfYr5pJJ
	krEVbzKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawuj-00000002Eg3-1Bd7;
	Fri, 16 Feb 2024 12:01:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawuf-00000002Eeu-3fhp
	for barebox@lists.infradead.org;
	Fri, 16 Feb 2024 12:01:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rawue-0005uW-6A; Fri, 16 Feb 2024 13:01:52 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rawud-0014AF-PA; Fri, 16 Feb 2024 13:01:51 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rawud-005uch-28;
	Fri, 16 Feb 2024 13:01:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Pierre-Olivier Huard <pierre-olivier.huard@rtone.fr>
Cc: sebastien.bourdelin@rtone.fr, a.fatoum@pengutronix.de, 
 oss-contrib@rtone.fr
In-Reply-To: <20240215120139.23881-1-pierre-olivier.huard@rtone.fr>
References: <20240215120139.23881-1-pierre-olivier.huard@rtone.fr>
Message-Id: <170808491164.1409280.5799579567118026049.b4-ty@pengutronix.de>
Date: Fri, 16 Feb 2024 13:01:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_040153_956786_0B0A82F6 
X-CRM114-Status: UNSURE (   6.72  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/1] mci: bcm2835: support 8bit bus width
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 15 Feb 2024 13:01:39 +0100, Pierre-Olivier Huard wrote:
> Using Raspberry Pi CM4s target generate a warning:
> 
> WARNING: bcm2835_mci fe340000.mmc@7e340000.of: Unsupported width received: 3
> mmc0: mci_send_ext_csd failed with -5
> 
> Adding the support of 8 bits bus width resolve the issue.
> 
> [...]

Applied, thanks!

[1/1] mci: bcm2835: support 8bit bus width
      https://git.pengutronix.de/cgit/barebox/commit/?id=21cdaeab3cf3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



