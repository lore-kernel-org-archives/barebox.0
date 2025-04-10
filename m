Delivery-date: Thu, 10 Apr 2025 10:00:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2mqE-00AkSS-1D
	for lore@lore.pengutronix.de;
	Thu, 10 Apr 2025 10:00:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2mqD-0007Ww-RK
	for lore@pengutronix.de; Thu, 10 Apr 2025 10:00:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eMAVkNZW+rei986gAhpeCNzz2oUqNyMSRNtYYq941s4=; b=VI/sWk9AS8ZN1Kxn6CdJzorHNz
	dujNDY8C5Ru/dyjWAfKavXQwuT2vzZz1Oh/gceujvz86hX19KDu/YOVLqaCngIhPiKtPtuiEyYtm6
	hnr90Qd/70SGdUaPZfsnIJ5UCQv9JvqBiGZfcWyAd9RZvLARlTzQvjfqOFI3TVZCTlHxmz9QilziU
	NzSVCAezt/jRuNJLjMJpUmccAfQErsYNZ4uOsPQA249MStmOhNWbqYGS0gaq24YubB5EOQLdlKgMl
	pwjbe8VJtWWUQu7ZmWz0r3LV/Hke1AjsOX4WxWQVxG0MOPacrcVJdGIIQ8p9bOD8+/OYGk6vy83wx
	PhoJBQVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2mpk-00000009ec6-3apu;
	Thu, 10 Apr 2025 08:00:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2mGW-00000009XDP-2pr0
	for barebox@lists.infradead.org;
	Thu, 10 Apr 2025 07:24:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2mGV-0000su-5N; Thu, 10 Apr 2025 09:23:59 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2mGU-004EQ6-37;
	Thu, 10 Apr 2025 09:23:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u2mGU-008Lr6-2r;
	Thu, 10 Apr 2025 09:23:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250409083023.2116661-1-a.fatoum@pengutronix.de>
References: <20250409083023.2116661-1-a.fatoum@pengutronix.de>
Message-Id: <174426983888.1990489.15041164978572615138.b4-ty@pengutronix.de>
Date: Thu, 10 Apr 2025 09:23:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_002400_714144_D08B9D0A 
X-CRM114-Status: UNSURE (   6.80  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] bootm: have bootm_open_fit return -ENOSYS if support
 missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 09 Apr 2025 10:30:23 +0200, Ahmad Fatoum wrote:
> Otherwise, os_type will be determined unconditionally for the FIT image
> buffer. As the buffer has zero size, this leads to an os_type of
> filetype_unknown. The ARM32 support has an "ARM raw image" that matches
> against filetype_unknown leading eventually to a crash trying to execute
> the FIT image's FDT header.
> 
> 
> [...]

Applied, thanks!

[1/1] bootm: have bootm_open_fit return -ENOSYS if support missing
      https://git.pengutronix.de/cgit/barebox/commit/?id=d562630b4d5f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



