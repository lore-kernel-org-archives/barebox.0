Delivery-date: Fri, 23 Feb 2024 08:36:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rdQ6i-002dh6-2Y
	for lore@lore.pengutronix.de;
	Fri, 23 Feb 2024 08:36:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rdQ6i-0001JW-9M
	for lore@pengutronix.de; Fri, 23 Feb 2024 08:36:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tc5W+zPjMdjzsOEP8lqSYrYu11jFWkY1HfgQ6pIY8Pg=; b=dXB1nRDdzri/3uU5WEiYa5pGMc
	txKxzuzKQmDmQEluvFxY8hvQL+Ung7pEq5Pz9eSFHB2aKiW+HCBkpHU+HoJ1YvNu+HfyrQA4lonJK
	ihugUdvuTrjugnL96rvLp37wgyruLh3rG1xR6xbhEwWFErkzBBtmJhnk6upQ9Dn8OD4iuw+pkUIGr
	BUpksosOsbwZ+aU7BwBQMP7BpkA7/sLOhZHWAzT9Jf1uzEm0H5qv+1FzFcj6dQVGkOiAjO6IeGL0v
	yhQUqhtd9qauzidKkeiaii6ipJgRZ+4XlAGPAcxvy1UCcoOLG7mnhrBP7kwEaZnNxp+ymlBEqnhrS
	6VGnLztw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdQ5Z-00000008JXv-12Ni;
	Fri, 23 Feb 2024 07:35:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdQ2e-00000008J2y-1n6s
	for barebox@lists.infradead.org;
	Fri, 23 Feb 2024 07:34:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdQ2V-0000oL-9l; Fri, 23 Feb 2024 08:32:11 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdQ2U-002NfE-SU; Fri, 23 Feb 2024 08:32:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdQ2U-001F8f-2e;
	Fri, 23 Feb 2024 08:32:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240220122004.3725540-1-a.fatoum@pengutronix.de>
References: <20240220122004.3725540-1-a.fatoum@pengutronix.de>
Message-Id: <170867353082.296344.449760918913075076.b4-ty@pengutronix.de>
Date: Fri, 23 Feb 2024 08:32:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_233220_611827_AF8F8B36 
X-CRM114-Status: UNSURE (   7.39  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: phytec-som-imx6: use strdup instead of
 basprintf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 20 Feb 2024 13:20:04 +0100, Ahmad Fatoum wrote:
> Using basprintf to duplicate a string violates memory safety if
> default_environment_path were to contain a format specifier.
> 
> clangd warns about this, so fix this by using strdup instead.
> 
> 

Applied, thanks!

[1/1] ARM: i.MX: phytec-som-imx6: use strdup instead of basprintf
      https://git.pengutronix.de/cgit/barebox/commit/?id=e29607037621 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



