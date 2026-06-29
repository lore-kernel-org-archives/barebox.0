Delivery-date: Mon, 29 Jun 2026 09:33:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we6Uf-00B2db-1R
	for lore@lore.pengutronix.de;
	Mon, 29 Jun 2026 09:33:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we6Ue-0007ro-QV
	for lore@pengutronix.de; Mon, 29 Jun 2026 09:33:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CR4mJvru5D8b2vnJAnzS4YzaPTrlw866zPkvPmPdnP8=; b=IMQm5l8PgaTbN8FX68wI7Z4W79
	AKEgjr2Vy2dkgqWhM5tY1l9L4S+YXCIFTIVIFFU5PZevcPs5UhHNib0Gcwgy/1Y1BzDlfbL4aGNfP
	Gy1BaovDc+PXLV/GwWZQ4rqv8NfGuYpBH0uezvhBYsbW6/ROeKeDQu0qgbeX47Gn+ib/K6ED7E7RR
	9NbvRXF4LxdeKngVhMyo/jrI/0Wuh6jbWnG6+SDV/DUorI+3kVPwSTZkefPFYtvlybM4bv+xjH5o4
	86zgAcjfTFi28d6LxKr5aEMEDiVGs3egAQtIgz1XWYdr9v4nlPt+qQ2ze//7KpogqEIfocjk85Gr9
	6+XjhjFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we6T9-0000000DuSl-2oJI;
	Mon, 29 Jun 2026 07:31:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we6T8-0000000DuSE-0EAS
	for barebox@bombadil.infradead.org;
	Mon, 29 Jun 2026 07:31:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=CR4mJvru5D8b2vnJAnzS4YzaPTrlw866zPkvPmPdnP8=; b=JEUpVsVYHTDH5oV7HIDAb3/bem
	ZDN8hrFwFQA9YbrTb5HmtJPoj3U21B/8zRkV2f3zXQVWHkEICyAZRZHN3sCdbtsHniug0RpHRCN8B
	7RCdgdOnM1CqTj3GHPtquoxm6japXlRXbSbxftreR36Ydj3TTT2g73Z+V8qZkwyC0Ret2tTrBodoc
	L9h9PsXYifmD2v6MpY0/96few6Mdi5VN29vwCCm8PxQIlDeBsGitqx6NdtF9T4T6sJrUH6qnVDh5G
	s6jtf2kJNlZH4tVjl/KTZCGmN9xWsdYq8Z3liufmomNw6lR2wG4bt2lABYFlOocpwDD+6JfpfUuEm
	bfMIkRXw==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1we6T4-00000000jc9-1dG0
	for barebox@lists.infradead.org;
	Mon, 29 Jun 2026 07:31:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EEE6E2002FE;
	Mon, 29 Jun 2026 09:31:42 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1we6T0-005Cnn-2s;
	Mon, 29 Jun 2026 09:31:42 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1we6T0-00000000fAP-3UNe;
	Mon, 29 Jun 2026 09:31:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260627212534.3785131-1-a.fatoum@barebox.org>
References: <20260627212534.3785131-1-a.fatoum@barebox.org>
Message-Id: <178271830282.158238.14056108515020962548.b4-ty@pengutronix.de>
Date: Mon, 29 Jun 2026 09:31:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_083146_744757_C42854A8 
X-CRM114-Status: UNSURE (   5.94  )
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
Subject: Re: [PATCH master] efi: loader: require at least 128 KiB of stack
 space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 27 Jun 2026 23:25:33 +0200, Ahmad Fatoum wrote:
> rEFInd overflows the default 32K barebox stack when it is loaded as
> a second EFI payload after GRUB from the NixOS arm64 ISO.
> 
> UEFI requires at least 128K of stack space for calls into EFI
> applications. Have STACK_SIZE default to 128 KiB and enforce that it
> doesn't get smaller than that whenever EFI_LOADER is enabled.
> 
> [...]

Applied, thanks!

[1/1] efi: loader: require at least 128 KiB of stack space
      https://git.pengutronix.de/cgit/barebox/commit/?id=dcd77b9dca3f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



