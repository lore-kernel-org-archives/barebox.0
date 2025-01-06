Delivery-date: Mon, 06 Jan 2025 14:26:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUn8A-00HVJW-2s
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 14:26:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUn8A-0002Jg-Sm
	for lore@pengutronix.de; Mon, 06 Jan 2025 14:26:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=unNkptuDhQzOPiWcIsb6QjH72x0vzmWgle8BEMYkALE=; b=qLsqM08D6LpDMlDDoNX15DvT8O
	A+jslyESlzigHpONiwRn6hifj8hYOsaKGNVQpD84VMYmJ26LObY5t5rJFw+bR3LWj+g9lOBhJRRN1
	W2weU2rM47E0D9jWR5WSc8W9bpLct6dShb/6Ft79o7g3wD2ZYiaLyQBfx7ulmN2UC3arXLCs6aft4
	wH/AM+u2GSKvo9LuVZZBEckWFtJcm9tuA5pi6KFEN6VXwNQlFfM6lUzkyyVfBoZVzO7hoSU3fRyV7
	GJ9OSW5U6kZbh8WCg0LMr0ZKIJkQSVfufTGd+9Wouz3sgzLRJt32zmQs9zHAgPxkDfDhq/CsK2pNF
	GhNXqiJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUn7m-00000001OwM-0gQt;
	Mon, 06 Jan 2025 13:26:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUn7i-00000001OuH-1VZC
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 13:26:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUn7g-00028g-R9; Mon, 06 Jan 2025 14:26:24 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUn7f-007Awc-2q;
	Mon, 06 Jan 2025 14:26:24 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUn7g-00BMiy-1u;
	Mon, 06 Jan 2025 14:26:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250106091927.3435620-1-a.fatoum@pengutronix.de>
References: <20250106091927.3435620-1-a.fatoum@pengutronix.de>
Message-Id: <173616998459.2708862.1348454848109958765.b4-ty@pengutronix.de>
Date: Mon, 06 Jan 2025 14:26:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_052626_398354_2F77D7DE 
X-CRM114-Status: GOOD (  10.10  )
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
Subject: Re: [PATCH] test: pytest: add support for --dump-dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 06 Jan 2025 10:19:27 +0100, Ahmad Fatoum wrote:
> barebox built for some targets like the ARM virt machine doesn't yet
> include a device tree and instead depends on previous stage firmware
> running in QEMU (or QEMU itself) passing along the device tree that
> QEMU assembles internally.
> 
> For debugging and to make it easier to use barebox in setups, where
> a device tree needs to be provided explicitly, add a --dump-dtb option.
> 
> [...]

Applied, thanks!

[1/1] test: pytest: add support for --dump-dtb
      https://git.pengutronix.de/cgit/barebox/commit/?id=73e219e6e1b0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



