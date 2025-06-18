Delivery-date: Wed, 18 Jun 2025 12:04:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRpeo-008ZZr-00
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 12:04:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRpen-0002al-GE
	for lore@pengutronix.de; Wed, 18 Jun 2025 12:04:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DwmB/Ok+w+HtK5wwmAQlcBXkyNYHl0J6KaYUeZuNIZU=; b=r5wLhI43GeKxJwL+ONFf8mn2Es
	79Amp6ZTjTTXMf9q4zFhTc7xZxqKB1kGu4is5Z9UMqiC29HFw65eVkFYNvWNDmNryxPhJ/KXxWEMc
	AHmzFRTpsGhLQ6AsD/7m2Z/roWo4UqVeOY1Fn6h6mf+kI72R+OdNQOtt7ncqKf+eOyvm82QwnVQGj
	OylJwyWTNpe5FEvUnGd0H2jaZxYqiyYr4auj1ajMJlFgIgiqrA0BS/yTuhbfiMRZmXW/y0fZ1Uid9
	iF35h/mmC6MOt6ZnnbZT0231xjB29Te92DMDUGRzcypQKJGwQCmAxi2M1tZiQDGFbsBymIEKvaqPW
	Lpy11Z/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpeK-00000009hfR-1kwF;
	Wed, 18 Jun 2025 10:04:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpQG-00000009efw-1soz
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 09:49:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpQE-0006oY-UZ; Wed, 18 Jun 2025 11:49:34 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpQE-0047JT-13;
	Wed, 18 Jun 2025 11:49:34 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpQE-005U3K-0p;
	Wed, 18 Jun 2025 11:49:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Johannes Roith <johannes@gnu-linux.rocks>
Cc: barebox@lists.infradead.org, michael.graichen@hotmail.com, 
 a.fatoum@barebox.org, m.tretter@pengutronix.de
In-Reply-To: <20250612123512.38091-1-johannes@gnu-linux.rocks>
References: <20250612123512.38091-1-johannes@gnu-linux.rocks>
Message-Id: <175024017425.1306923.16961919794338362876.b4-ty@pengutronix.de>
Date: Wed, 18 Jun 2025 11:49:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_024936_490011_DA09A786 
X-CRM114-Status: UNSURE (   9.51  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] Added support for Zynq 7000 FPGA firmware loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Jun 2025 14:35:12 +0200, Johannes Roith wrote:
> This patch adds support for loading the FPGA firmware to the PL of the
> Zynq 7000 over barebox. It adds a new driver xilinx-fpga.c which uses
> the code of the former zynqmp-firmware.c driver but supports loading the
> PL on the Zynq 7000 and the ZynqMP SoC.
> 
> 

Applied, thanks!

[1/1] Added support for Zynq 7000 FPGA firmware loading
      https://git.pengutronix.de/cgit/barebox/commit/?id=2f4a47ef533a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



