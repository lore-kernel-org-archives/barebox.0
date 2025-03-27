Delivery-date: Thu, 27 Mar 2025 09:17:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txiQk-004n9e-28
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 09:17:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txiQk-00076w-4N
	for lore@pengutronix.de; Thu, 27 Mar 2025 09:17:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qg/ew4tDC/sBANP8CHPeCzExOJ+6V2n4n5VnAfdpJow=; b=4zBR1ZaGsgs2nI6o0osGqYaTEb
	0xsxdygkoVg4y53BITuMhxBRiqFJmFo/F33xdkSxnz4SYohT7IBXCIolOa0AlhWDTmQ9F6iHN354+
	JliuF5qqpt3FBkcUl+A7UYAcVtTtJq6wCRQXySu+YlxSaf3bOMLYWz3MZpl0HyfaNJ0heu1CSsFqp
	NVGaurl4fjXewUQ9SqMUcsK1RPhpvv7QIl8kisu9cnhQxeEssigQ+G/uHqQ6KlCiXiqDeRwyNtqUe
	uTfGIqGNT+aV93VmgCby69gWvptsaLgpaq49mrIlu0UQdzHQnrFYTyOqjFnHnZwC1GD0ypB+/GBxj
	Ox2sG5fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txiQI-0000000AQk0-2gWq;
	Thu, 27 Mar 2025 08:17:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txiN6-0000000AQD9-37fm
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 08:13:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txiN5-0006Kh-Bu; Thu, 27 Mar 2025 09:13:51 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txiN5-001tXy-0X;
	Thu, 27 Mar 2025 09:13:51 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txiN5-003Oxh-0J;
	Thu, 27 Mar 2025 09:13:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Jules Maselbas <jmaselbas@zdiv.net>
In-Reply-To: <20250325124740.4035964-1-a.fatoum@pengutronix.de>
References: <20250325124740.4035964-1-a.fatoum@pengutronix.de>
Message-Id: <174306323109.810869.3518539069422342683.b4-ty@pengutronix.de>
Date: Thu, 27 Mar 2025 09:13:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_011352_787448_74693E11 
X-CRM114-Status: UNSURE (   8.81  )
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
Subject: Re: [PATCH master 0/3] sandbox: enable building under musl
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 25 Mar 2025 13:47:37 +0100, Ahmad Fatoum wrote:
> Building sandbox itself as opposed to the target/host tools still fails
> with musl, due to some headers not being available.
> 
> This is fixed by this series.
> 
> Ahmad Fatoum (3):
>   sandbox: use POSIX header instead of Linux one
>   sandbox: don't build tap support code without CONFIG_DRIVER_NET_TAP
>   sandbox: os: tap: make it compile with musl
> 
> [...]

Applied, thanks!

[1/3] sandbox: use POSIX header instead of Linux one
      https://git.pengutronix.de/cgit/barebox/commit/?id=1426b121630e (link may not be stable)
[2/3] sandbox: don't build tap support code without CONFIG_DRIVER_NET_TAP
      https://git.pengutronix.de/cgit/barebox/commit/?id=97fcb63d9d67 (link may not be stable)
[3/3] sandbox: os: tap: make it compile with musl
      https://git.pengutronix.de/cgit/barebox/commit/?id=d9e696e5a5dd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



