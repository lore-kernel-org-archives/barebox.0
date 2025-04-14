Delivery-date: Mon, 14 Apr 2025 13:34:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4I4o-000cfh-2k
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 13:34:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4I4o-0000wX-AD
	for lore@pengutronix.de; Mon, 14 Apr 2025 13:34:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8GumwrRml4gFP3ziCbcPBT/De25MnAXNobyMVu9Hfus=; b=R0iCWIWZhgo6o7n2Frvpx+s/4S
	q3UOjq7rYHe8Oq61rjIglGtJih6COGPVBQZV8GdC+jA1jnkLS3hvWHP72yWBHJdalTtBuSHtZsBHV
	arbprgQy+w1xRbLrSmdtUJpHQbUciWgOa0NfMaE5EWlu/vyJcRo62ySKOLC0jZVqHmuguhn8vka1S
	43yEp3eL7JUbXwjs3Fq9AoS5rqgMAfOdGMiGCKhfvmR4DYKfEfxjY3pIBv0uOr63mOnQkMUjuuJNp
	yj2nE0vuMqEXdR2wA+ZqV+c4F1lKfdA2YjgGXJtoUoqVpNGzhm5BRzvqIJG2cUJWuD+PgUwU7sbuw
	AIzWXjBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4I4M-00000001mTA-0G9j;
	Mon, 14 Apr 2025 11:33:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4I4B-00000001mSD-2qUr
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 11:33:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4I4A-0000fj-Ak; Mon, 14 Apr 2025 13:33:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4I4A-000F1s-0T;
	Mon, 14 Apr 2025 13:33:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4I4A-001fjq-0F;
	Mon, 14 Apr 2025 13:33:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250414070524.2784496-1-a.fatoum@pengutronix.de>
References: <20250414070524.2784496-1-a.fatoum@pengutronix.de>
Message-Id: <174463041007.398202.8652539484206546465.b4-ty@pengutronix.de>
Date: Mon, 14 Apr 2025 13:33:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_043331_719877_7927F54C 
X-CRM114-Status: UNSURE (   7.91  )
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
Subject: Re: [PATCH 1/3] base: class: add convenience helpers for iteration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Apr 2025 09:05:22 +0200, Ahmad Fatoum wrote:
> Using list_for_each_entry with a last argument that is a member of a
> member gets unwieldy, so let's add macros for use in macro definitions
> for:
> 
>   - iterating through all container of devices
>   - getting the first device
> 
> [...]

Applied, thanks!

[1/3] base: class: add convenience helpers for iteration
      https://git.pengutronix.de/cgit/barebox/commit/?id=bb7c84e3d628 (link may not be stable)
[2/3] mux: port Linux multiplexer framework
      https://git.pengutronix.de/cgit/barebox/commit/?id=a7835063ee28 (link may not be stable)
[3/3] drivers: port Linux gpio-mux driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=d4c9654545cb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



