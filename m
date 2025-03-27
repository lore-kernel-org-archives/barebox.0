Delivery-date: Thu, 27 Mar 2025 10:17:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txjMp-004oiZ-0t
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 10:17:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txjMo-0002so-OA
	for lore@pengutronix.de; Thu, 27 Mar 2025 10:17:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wUYIM5wK/TzNhU7PKPgP/f5YyJQI7PuVofslpIbiYWg=; b=xRlGiBBWxKHz1lzpGEOJ/PclEG
	DgXNjLv9UmffUwJVIb8E21rBRgfToQiFi+05adYk9RuUTnLYXkSdePeKGcDp6or/M4wdbVg9Zpjry
	qwQ2OXsIWyOCOur8fd6rnAJFnCTeZlws4nEKFSM4dtB40pbdnvJQkpeqm75a65B3+QEUpsJh3F5fb
	NCTHSpWco+CGaFiqnxZVV7reei0F3aptBL3FE1f29dxli6MjOlPfywMKZSEFComeHZ0Fj1DetxHUZ
	i9+5ZcL/cBtURCXIjVO9JwVX/EOcmhtLeZPpVlD6BXjcXw+iCBcqb+0cGRshfJ+8skFyUxTVOpfZQ
	+oslYd3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txjMN-0000000AY9P-3Dsr;
	Thu, 27 Mar 2025 09:17:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txjMK-0000000AY8f-2P1I
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 09:17:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txjMJ-0002hY-1R; Thu, 27 Mar 2025 10:17:07 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txjMI-001u7S-2j;
	Thu, 27 Mar 2025 10:17:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txjMI-003pO9-2X;
	Thu, 27 Mar 2025 10:17:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250326170010.670379-1-a.fatoum@pengutronix.de>
References: <20250326170010.670379-1-a.fatoum@pengutronix.de>
Message-Id: <174306702678.912310.16756791800065727032.b4-ty@pengutronix.de>
Date: Thu, 27 Mar 2025 10:17:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_021708_612445_A32E5BD8 
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] fs: squashfs: drop unused struct squashfs_dir
 definition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 26 Mar 2025 18:00:08 +0100, Ahmad Fatoum wrote:
> The definition is at the end of the file too late to be used and indeed
> it's used nowhere, so drop it.
> 
> 

Applied, thanks!

[1/3] fs: squashfs: drop unused struct squashfs_dir definition
      https://git.pengutronix.de/cgit/barebox/commit/?id=7261a61d1c33 (link may not be stable)
[2/3] common: elf: drop unused arch notes stubs
      https://git.pengutronix.de/cgit/barebox/commit/?id=765b9fe03e3c (link may not be stable)
[3/3] driver: drop unused dev_open/close_default stubs
      https://git.pengutronix.de/cgit/barebox/commit/?id=b33f6518b4ee (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



