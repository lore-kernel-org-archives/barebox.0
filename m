Delivery-date: Fri, 16 Jan 2026 08:16:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vge3s-001sVx-3C
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 08:16:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vge3s-0006G6-1C
	for lore@pengutronix.de; Fri, 16 Jan 2026 08:16:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ma+lYkjGFel2oJdRMp6da08CzM2aaOtBwVKRgLZP9sQ=; b=vPRnR53R0WgZSgYidwOrwJXmw+
	NYms6DI2dswmSt4qs/Y+XSTRprxpmZoLApoS6etTzjPCz4vlGshA/efq6JOZoRnuga8fLJU03J5jZ
	Z7BAY/XT1RV/iY8XkGuS2TCTl1AkTabKdL+Xem/in9Y86JtveS+JkAFWdvqnck02GvMed9LQSfF1q
	Y+QZb+ElOOWtJZAlwJe1MJma9Jw5EfRUO8Pm8Qhot+8eHEisXnRGX8qCSEMyRcZkzQSCZLbwFuCYV
	DBhe3zGBTxMgFXbLk8xRZMrHObB5lAJ+8K0f6MflSZQNT4GDTSdFR4d9cGnnvMmC/l1PUKGsX5noL
	Al5/jnNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vge3T-0000000DgZa-0Sxm;
	Fri, 16 Jan 2026 07:15:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vge3R-0000000DgZD-0Ze1
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 07:15:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vge3P-0006Bc-G1; Fri, 16 Jan 2026 08:15:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vge3P-000set-39;
	Fri, 16 Jan 2026 08:15:31 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vge3P-00000005OXq-12sB;
	Fri, 16 Jan 2026 08:15:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260114101245.109763-1-a.fatoum@pengutronix.de>
References: <20260114101245.109763-1-a.fatoum@pengutronix.de>
Message-Id: <176854773124.1285973.9371417166800235060.b4-ty@pengutronix.de>
Date: Fri, 16 Jan 2026 08:15:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_231533_204098_7C8CE149 
X-CRM114-Status: UNSURE (   8.66  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] openrisc: bump reserved size to 1M
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 14 Jan 2026 11:12:20 +0100, Ahmad Fatoum wrote:
> The macro used to be 256K back in 2011, and was bumped to 512K in 2014.
> Now 11 years later, the image is about to grow beyond it.
> 
> As this limit seems to be arbitrary anyway, just double it again to 1M.
> 
> If a smaller size is indeed needed, it should be enforced over
> BAREBOX_MAX_IMAGE_SIZE instead. For QEMU and testing in CI, 1M is fine
> though and we need not bother with keeping generic_defconfig small.
> 
> [...]

Applied, thanks!

[1/1] openrisc: bump reserved size to 1M
      https://git.pengutronix.de/cgit/barebox/commit/?id=cf33f360e60f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



