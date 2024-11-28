Delivery-date: Thu, 28 Nov 2024 08:44:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGZCs-001Mmp-1c
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 08:44:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGZCs-0007Ps-Gj
	for lore@pengutronix.de; Thu, 28 Nov 2024 08:44:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s2GbVT//mBgl0+aZE2u5uDh/Jr8lQsixui3QnmjF9L8=; b=ql2jhvGPhXfWgvxG1OQl6nI6s4
	nQD6fehV38NVuEdYJ0LLsDu2vEhtP5KeDOauA1/X6Y3zkqiHPbuFdyV2bCCvceta7tNwXPXFDaSqG
	Aw/s8TsL6HWlJl8/zYfze7AUOWI98WDKCgjVVIJgk3wixTgwELBDvZ90wgwCiQW/celq7yJSYfwmR
	2I4euovRnum/wQteIQXxjfYbOWOF5Mo478wXXCxl1iF33SEsLt4qObktw08LIqyOQ7Wiu6Vd/8u74
	nCqpSrOeLIbwl6TA/efC/wJCHax5WYnHmC9DfuHXDyJ2dOwXnfCPxO20OCR9L6f5Y80IixHI49fAy
	L/Zo4lMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGZCV-0000000EuOf-2yOx;
	Thu, 28 Nov 2024 07:44:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGZCT-0000000EuOG-1Oos
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 07:44:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGZCR-0007Iy-Vz; Thu, 28 Nov 2024 08:44:32 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGZCR-000Zgc-07;
	Thu, 28 Nov 2024 08:44:31 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGZCR-00FNBQ-2O;
	Thu, 28 Nov 2024 08:44:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241126151340.3620283-1-a.fatoum@pengutronix.de>
References: <20241126151340.3620283-1-a.fatoum@pengutronix.de>
Message-Id: <173277987173.3664007.4940351117755299578.b4-ty@pengutronix.de>
Date: Thu, 28 Nov 2024 08:44:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_234433_371574_38011E81 
X-CRM114-Status: UNSURE (   6.41  )
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
Subject: Re: [PATCH] common: misc: use isalnum macro instead of open-coding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 26 Nov 2024 16:13:40 +0100, Ahmad Fatoum wrote:
> We sacrifice 256 bytes in barebox proper for a lookup table that is used
> to optimize isalpha, isalnum and friends.
> 
> Let's make use of it by using isalnum instead of open-coding.
> 
> 

Applied, thanks!

[1/1] common: misc: use isalnum macro instead of open-coding
      https://git.pengutronix.de/cgit/barebox/commit/?id=643497d2b40a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



