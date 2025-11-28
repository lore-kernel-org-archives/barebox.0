Delivery-date: Fri, 28 Nov 2025 08:09:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOsbo-005ha3-0h
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 08:09:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOsbn-0003ER-MX
	for lore@pengutronix.de; Fri, 28 Nov 2025 08:09:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A9fIZnsUspPF4wqbCyAj6GOBlirvIXZ6IztMA9XSSAk=; b=DzX+i5pd6k/b3zB2k+mvjqEQlq
	1SA0i2oll65I5YThlfPb+CQaDRLteacO3c1uJR8wI1spRsYvrL2Li/0Cd6jmM52DnUwTdRwUh37ZG
	sqVMqWruke0cETNvnr8j6RUaT/7gvpOCsdq15ZkxqIO06Os7CGa/Z1b5bYEEkK4HtALP74ie0SoHs
	vwu9ntXrL0cvUlHNPnSZIAwbYnqQxqEWYxXVQlaZks1AzunTUVA/hO4OPLFKpiuVnWUwoeNJyiVHa
	nqgRyy/4iu2y33HZeeB5qz/MR8E67wjnlzK0BAFMKXU6nl+tq1LQLCRJhsM1c7YJLWU7YEC6hNeqC
	RFP16k0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOsb0-000000004dv-10Q9;
	Fri, 28 Nov 2025 07:08:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOsax-000000004dB-2ttM
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 07:08:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOsau-000383-8F; Fri, 28 Nov 2025 08:08:40 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOsat-002uxO-2y;
	Fri, 28 Nov 2025 08:08:39 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOsau-00000009Phj-1EYK;
	Fri, 28 Nov 2025 08:08:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
In-Reply-To: <20251127124140.2229718-1-a.fatoum@pengutronix.de>
References: <20251127124140.2229718-1-a.fatoum@pengutronix.de>
Message-Id: <176431371984.2243748.10286536854911186997.b4-ty@pengutronix.de>
Date: Fri, 28 Nov 2025 08:08:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_230843_740360_F47EBE18 
X-CRM114-Status: UNSURE (   8.12  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] environment: prefer non-removable over removable
 devices for autoprobe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 27 Nov 2025 13:41:34 +0100, Ahmad Fatoum wrote:
> On systems with only 1-2 MiB of boot flash, it can be sensible to locate
> the barebox environment outside of the boot medium.
> 
> In that case, it's sensible to give preference to non-removable devices,
> so e.g. an eMMC is used instead of the SD-Card when booting from
> neither, so adapt the scoring accordingly.
> 
> [...]

Applied, thanks!

[1/1] environment: prefer non-removable over removable devices for autoprobe
      https://git.pengutronix.de/cgit/barebox/commit/?id=7a94d2b0e9f2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



