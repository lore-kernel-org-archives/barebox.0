Delivery-date: Mon, 26 May 2025 15:44:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJY7y-000XIH-1r
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 15:44:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJY7y-0005t6-28
	for lore@pengutronix.de; Mon, 26 May 2025 15:44:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KHY8zuSDtNkFW+yssHEQ+IOsbHuGmiCwkUDaXL/pDqw=; b=qsymLVyMVFNHeuIU9jKP6h14Le
	NOKr3WBjjjXyKSgpc3Lkw325cGnSMDm1XisLiZ+MOiji9yY9hWEGtq8HsL6KK+XV01eqEzb5oxQYA
	ZxufTnbCFDsi5Xov1+tWNATWHp58bzTciAxoJsc/o6IUIQyR9RqjDd0+xCiVKLHmbu9iqb169lHta
	T3QlCuCBYZdGuxJqwjwuhU0LSXQVpuhPilXTuuVVD05jCoRFBcqC5bSnFxnjHDEQQrqDTsm2VYody
	2rqeI8km3VCCvmbFTs0tLoA4bYkPDaFdijJzkX+lrP/Fxx6oBLtrFa7BtHAJhRZ9gfVBz44faYtJ1
	HVjfkABw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJY7E-00000008uvL-1s8i;
	Mon, 26 May 2025 13:43:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJY7A-00000008uua-0lLc
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 13:43:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJY77-0005Xj-Bc; Mon, 26 May 2025 15:43:37 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJY77-000G79-0Y;
	Mon, 26 May 2025 15:43:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJY77-00307O-0I;
	Mon, 26 May 2025 15:43:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250526100627.3202658-1-a.fatoum@pengutronix.de>
References: <20250526100627.3202658-1-a.fatoum@pengutronix.de>
Message-Id: <174826701708.715398.5240387313799141628.b4-ty@pengutronix.de>
Date: Mon, 26 May 2025 15:43:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_064340_223898_DB78E735 
X-CRM114-Status: UNSURE (   8.40  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: devicetree: mention when symbols are
 required in base DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 26 May 2025 12:06:27 +0200, Ahmad Fatoum wrote:
> The barebox error message:
> 
>   ERROR: of_resolver: __symbols__ missing from base devicetree
> 
> can be a bit cryptic if unfamiliar with how overlays work internally.
> 
> Let's mention the error message in the documentation, so it turns up in
> a search and add some extra information.
> 
> [...]

Applied, thanks!

[1/1] Documentation: devicetree: mention when symbols are required in base DT
      https://git.pengutronix.de/cgit/barebox/commit/?id=977d7e7a448e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



