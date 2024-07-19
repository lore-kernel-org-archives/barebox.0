Delivery-date: Fri, 19 Jul 2024 08:37:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUhEj-000koU-1W
	for lore@lore.pengutronix.de;
	Fri, 19 Jul 2024 08:37:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUhEi-0007JT-TY
	for lore@pengutronix.de; Fri, 19 Jul 2024 08:37:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g6N1tFNe0dXoXaJfeuw3AtmqcSBTdILfJDi5MwQtCaM=; b=SafuZBEqv83CzXw/AFICUCtybP
	8hChFuK6OQmHYPm/2l23myjsPVhryfJdZ6fzbJlK5rS4XBbpuLKs616oGwYiWkjNy5Qj1UWfNYOo9
	U3pyLnTMwFvPMkptQRNd2fZ+g/IF0uM0D+RYI9QUE+TQem1eCUvPbtGVCaxlEvxONzp76owLupSYG
	fG5UW0GhU1e9fkf20y+SkSFPUOZaT5HbeUEa2aQ8PlwJBNUwKS2pEOsO1gJY0e3WiLL0zSqK+zDxX
	Z9GN34FBRMVlMaQDaAJCuwbfYNDfKIczDPFwBKFb41W6SKxpc67kohV5yMFVO2EeavI4DHK4bjLU8
	4y5Ikhuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUhEG-00000001pOj-2opp;
	Fri, 19 Jul 2024 06:36:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUhDE-00000001pJv-3zkg
	for barebox@lists.infradead.org;
	Fri, 19 Jul 2024 06:36:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUhDD-0007Fm-Jp; Fri, 19 Jul 2024 08:35:27 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUhDD-000cfu-6d; Fri, 19 Jul 2024 08:35:27 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUhDD-002QnB-0R;
	Fri, 19 Jul 2024 08:35:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240716120330.1988495-1-a.fatoum@pengutronix.de>
References: <20240716120330.1988495-1-a.fatoum@pengutronix.de>
Message-Id: <172137092713.579587.18184176758545639205.b4-ty@pengutronix.de>
Date: Fri, 19 Jul 2024 08:35:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_233529_026511_D1D80EBE 
X-CRM114-Status: UNSURE (   6.83  )
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
Subject: Re: [PATCH 1/2] rtc: add stubs for when CONFIG_RTC_CLASS is
 disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Jul 2024 14:03:29 +0200, Ahmad Fatoum wrote:
> To allow using the RTC API in files that may optionally be
> compiled with RTC support disabled, add dummy stubs.
> 
> 

Applied, thanks!

[1/2] rtc: add stubs for when CONFIG_RTC_CLASS is disabled
      https://git.pengutronix.de/cgit/barebox/commit/?id=7355b2e392e3 (link may not be stable)
[2/2] rtc: return first RTC when rtc_lookup(NULL) is called
      https://git.pengutronix.de/cgit/barebox/commit/?id=5e1c582171c8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



