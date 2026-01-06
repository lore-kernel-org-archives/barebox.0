Delivery-date: Tue, 06 Jan 2026 08:44:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1jx-001og7-0a
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 08:44:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1jw-0006Bo-Lt
	for lore@pengutronix.de; Tue, 06 Jan 2026 08:44:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1pOFKlSwtHi7jQLBGlrGsP7VeDfQl3/iVWQNqf9R1sI=; b=3NbAkMLZBXWQsN65s1dscAXvSS
	1rtoYqhWyLDz6S+L6i01AIbmVuxhUSHZ0K0XHeUyQRDpfnepbjxERQ++bim7vYrDXFa60Xtc2kNQ5
	B5i9AWh+1ZG5BKd5KbxAU78HmSdCEgr4jMuMEPnAmCtWnfLGwgybHr1cNW8L++dlyvqhIxZ3A9wHN
	KEHJrvftLai0fo+mRmgqjj+KheavDZIpBQ3OnB9mMRbZHsuUU/cq5g3M/Wyb24xQ5JqLqhvDfTMzc
	uX8egQ4eifbK2NwzhddvE6azL8HAYaxfHIjLujv/ZJUc7N6BnxUcLj9AT1+6yrZ00AXd+N8/4Z/0H
	oXAG3Lww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1jS-0000000CXj6-2obE;
	Tue, 06 Jan 2026 07:43:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1jP-0000000CXim-2f8a
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 07:43:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1jO-00067V-3M; Tue, 06 Jan 2026 08:43:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1jN-009JJq-2w;
	Tue, 06 Jan 2026 08:43:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1jN-000000088tU-3aHR;
	Tue, 06 Jan 2026 08:43:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260105082128.3248033-1-a.fatoum@barebox.org>
References: <20260105082128.3248033-1-a.fatoum@barebox.org>
Message-Id: <176768543385.1940801.5720363034015480933.b4-ty@pengutronix.de>
Date: Tue, 06 Jan 2026 08:43:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_234355_676652_0755B151 
X-CRM114-Status: UNSURE (   9.27  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] startup: attempt poweroff if no shell and nothing to
 do
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Jan 2026 09:21:14 +0100, Ahmad Fatoum wrote:
> For testing noshell configuration in virtual machines and sandbox,
> it's useful if the process would just exit instead of hanging
> indefinitely.
> 
> This is usually handled with panic(), which can be customized to
> poweroff or reset, but in this case a panic with CONFIG_PANIC_RESET=y
> would just lead to a reboot loop.
> 
> [...]

Applied, thanks!

[1/1] startup: attempt poweroff if no shell and nothing to do
      https://git.pengutronix.de/cgit/barebox/commit/?id=09663fb38ffd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



