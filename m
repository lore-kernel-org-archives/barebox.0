Delivery-date: Mon, 15 Jun 2026 15:48:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ7fU-0069qH-2N
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 15:48:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ7fU-0007BO-5W
	for lore@pengutronix.de; Mon, 15 Jun 2026 15:48:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vBE5QlhPBfzSN2A0pU6B2GuQEta8HHsqzkUY/m8/uaA=; b=oGkLOEU1SxGgwzC9irKqY/dw/d
	kEhsH7+gJrnm5DAkYfiK/XCxRRa/dh2aLpdUH9qHYEz2JqC+ZHoQY+rKikR2QeUF4bEZSpjdlg3zN
	Yn6t25361an5US84fuRkPmKr3Fs/OEq/lWyAepz6q6wzgL1EXV6XP9EJvjoEC+wPb62phh2v9XJF4
	pbiabjXfqw0Dso6uxLHGm/ZIQ8FTenlokvjf3odeJgRX8wHb2wZkVK/9vQX9nfzg1RcORMY2PqQdU
	LKxEUN1xAA+iQle6JetXE4eFJEwbVQkeZq5OKlzROuz/Ys/cbXQWa1BAhsmLLK3IVD/pOANTn9uVN
	+TpUP57A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ7eN-0000000EKyo-43LT;
	Mon, 15 Jun 2026 13:46:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ7eL-0000000EKy6-2b72
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 13:46:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ7eJ-0006l7-At; Mon, 15 Jun 2026 15:46:47 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ7eJ-002sIM-0u;
	Mon, 15 Jun 2026 15:46:47 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ7eJ-0000000ABUO-0lej;
	Mon, 15 Jun 2026 15:46:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260615133738.1016589-1-a.fatoum@pengutronix.de>
References: <20260615133738.1016589-1-a.fatoum@pengutronix.de>
Message-Id: <178153120717.2427014.8437001224563564103.b4-ty@pengutronix.de>
Date: Mon, 15 Jun 2026 15:46:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_064649_660409_8B8630F2 
X-CRM114-Status: UNSURE (   6.35  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] efi: loader: avoid NULL image file paths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Jun 2026 15:37:37 +0200, Ahmad Fatoum wrote:
> Booting an EFI application directly from a raw block device creates
> a device path without a file path node. efi_dp_split_file_path()
> propagated this as a NULL file path, which was then exposed through
> the Loaded Image Protocol.
> 
> The EDK2 shell dereferences LoadedImage->FilePath while looking
> for startup.nsh and crashed barebox after the countdown.
> 
> [...]

Applied, thanks!

[1/1] efi: loader: avoid NULL image file paths
      https://git.pengutronix.de/cgit/barebox/commit/?id=b9e581c97389 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



