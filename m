Delivery-date: Mon, 15 Dec 2025 10:10:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4bP-00BgeA-1K
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 10:10:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4bO-0006Vg-Rm
	for lore@pengutronix.de; Mon, 15 Dec 2025 10:10:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nRPyxZBVCr9T/OMZBIR1Z1fb3hRzqFKWqMeDSyR3qwQ=; b=XtqoTMaGpLV4Mt7TZAYjVZR9M3
	gsRGhEmBbi8xnJFiGmq+zHaksB2yvyRW1VYuCFhFXaEtxkEMEsrcCjnrJzoSCENeMnrlJMSUyGnj3
	TBYNMpw9XnGbnTQd66FF0xhv0r7yagkXVk/VMoZ5oTMNQiFURYtgGGpCilPZ9RJB59qBrLcR1pl+y
	ZeDrnld29tRMUliQhefE6Xvsl/RnnJyglGElvg1ebasoVpexRDdub1SWSIE2zJHbucXDlIAlnZYku
	tFynh1C6Zu3OFZc0Dvvyb8r8Ih6kh2zoJbnemWcSjF9EklHh/qLWpQavRwXTvYSARx4jo1M/0kZhC
	9fQO37oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4av-00000003L7a-0GGQ;
	Mon, 15 Dec 2025 09:10:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4as-00000003L7E-0xSA
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 09:10:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4aq-0006Ng-Ir; Mon, 15 Dec 2025 10:10:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4aq-005kuh-1H;
	Mon, 15 Dec 2025 10:10:12 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4aq-000000017bQ-1Oy2;
	Mon, 15 Dec 2025 10:10:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251215083829.2386659-1-a.fatoum@pengutronix.de>
References: <20251215083829.2386659-1-a.fatoum@pengutronix.de>
Message-Id: <176578981233.267435.3547579411240421500.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 10:10:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_011014_310271_59951B6F 
X-CRM114-Status: UNSURE (   6.79  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] filetype: move is_dos_exe into header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Dec 2025 09:38:28 +0100, Ahmad Fatoum wrote:
> The MZ magic can occur together with other magic signatures as well,
> e.g. in x86 bzImages or in EFI-stubbed ARM/RISC-V kernel images.
> 
> Move the check into a header to allow it to be used e.g. from boot entry
> providers.
> 
> 
> [...]

Applied, thanks!

[1/1] filetype: move is_dos_exe into header
      https://git.pengutronix.de/cgit/barebox/commit/?id=79afef8e1da9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



