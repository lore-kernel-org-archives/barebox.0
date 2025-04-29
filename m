Delivery-date: Tue, 29 Apr 2025 17:25:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9mpj-000XB4-0D
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 17:25:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9mpi-00037a-7n
	for lore@pengutronix.de; Tue, 29 Apr 2025 17:25:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r5JGAEEKCWzxIcw7Qwuw7zPKg3ytyrQoskcZmd6hHkI=; b=NDmBwcbfuLm96OAC24LV5K3E1v
	ksLdlJ3CBnbj3o/8BREBWPLhiUVQ0QalgxLWfRAKlM7qlpLidTRa5VAXsbdn99SvvmsC3WsLZFxw0
	VtwPbfTo89DU4Wug1W+s4tloSr3ryBZZfOMR4b/E7S2QQXZgT4fDg7wyBhnD6pkuze7pncvDowPEc
	EkMw1rUJPcEiQOLNc5Cj6cEuRo+nUt9DrblSl+d1P5O104mecjCGKM4VdqMuqvWA+qCoyb81pPEkz
	w8nbknxb9Wztk3A6a4CoSETIK78qhp+Gyf+16RdngBozB0aTyyyDPru6GAVEbQJ6gJNIbTnlnVVc8
	eBLEYagQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9mpH-0000000A73q-3S38;
	Tue, 29 Apr 2025 15:24:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9mMS-0000000A1rB-0pLw
	for barebox@bombadil.infradead.org;
	Tue, 29 Apr 2025 14:55:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=r5JGAEEKCWzxIcw7Qwuw7zPKg3ytyrQoskcZmd6hHkI=; b=JEYJh5SRe1RaV8Ri0+OgQZ58dz
	+tUlEhKRFjRaklgm7jmgqHsYRHMPDB1KXYe5ZlD64Y5cu6/TzDC63lG3pGXaK6/OtlZ3Fz/ZSOp+F
	o6BuvLI/NXoQM10HXE1JO12aCy8n98Rzb7XJZJ383ZFNpYIOBf0DgYV/xUDHavTQu20moqzG89ZaY
	bmwX5++tomExTOZs9zGmfJpabgEBHGsYQO5BnjvHikfn7xmpAXpk+DY6ImPvSZjae3F2Qj+HXmVfW
	XwYuHszGVJzdbeKkKNRK+yB6WsEpJMquj7YXCsHVH+3qbSUCeGxAT/jhs9j9ktN+fzMPW0rsTzZu/
	/MplTbew==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u9mMP-0000000DPwS-0mNd
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 14:55:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mMN-0000eH-W9; Tue, 29 Apr 2025 16:55:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mMN-000HMi-1o;
	Tue, 29 Apr 2025 16:54:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mMN-00D4Ti-1b;
	Tue, 29 Apr 2025 16:54:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
In-Reply-To: <20250426081415.3553913-1-a.fatoum@pengutronix.de>
References: <20250426081415.3553913-1-a.fatoum@pengutronix.de>
Message-Id: <174593849949.3115403.4823613518835619890.b4-ty@pengutronix.de>
Date: Tue, 29 Apr 2025 16:54:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_155501_355532_F6998A35 
X-CRM114-Status: UNSURE (   8.07  )
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
Subject: Re: [PATCH master] linux/iopoll: fix inverted condition in
 read_poll_timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 26 Apr 2025 10:14:15 +0200, Ahmad Fatoum wrote:
> If there is no timeout, we wait indefinitely and don't care for the
> initial time. A fixup to silence a warning because of multiplication in
> boolean context added an explicit comparison and this ended up omitting
> get_time_ns() in the wrong case.
> 
> Flip it to fix, among others, MDIO on RK3568.
> 
> [...]

Applied, thanks!

[1/1] linux/iopoll: fix inverted condition in read_poll_timeout
      https://git.pengutronix.de/cgit/barebox/commit/?id=dea0ad02bbd6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



