Delivery-date: Wed, 13 Mar 2024 11:50:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMC6-004H1Z-2K
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 11:50:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMC6-0003yB-4g
	for lore@pengutronix.de; Wed, 13 Mar 2024 11:50:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GJ120uqHb2U1pfj9+EhU6U1gSFG3ramZnmsm7kp34wk=; b=F757izkAA8jg3PzeGEm2JVoFc2
	c08nRjL/mGT0mmdW++Kiqe8fGUDJJ4j5Ina1DuUgJHUZ4SfEa+7qUnIaqfJUU5ZzRO2PK0yOJLTnt
	J1R0pKtw9hbNPpS0foJQSnH3xyLIh5BncnU2R6uls5qqhrjxkn7m/BG0dQaRKxKYYaSAuHzhI95++
	c47YjR+udrk7xtHQESMPdQincZk20HyP9SWhnYz48VTS53RIz/UZia0BsLbJRoSD079MGn2TKPzhO
	39cCifVtkvCfSdrw1XttO4Oa3bw/wTsUTRab8Uq8nUXFTlp3ELeUiEWYVS1vAjcLzrPkpudA0zcs+
	nH2tl1ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMBY-00000009jTp-2weO;
	Wed, 13 Mar 2024 10:50:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMBU-00000009jTL-44N7
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 10:50:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkMBS-0003Rs-SZ; Wed, 13 Mar 2024 11:50:06 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkMBS-0065zD-GC; Wed, 13 Mar 2024 11:50:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkMBS-005XVg-1Q;
	Wed, 13 Mar 2024 11:50:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240313092633.3339320-1-a.fatoum@pengutronix.de>
References: <20240313092633.3339320-1-a.fatoum@pengutronix.de>
Message-Id: <171032700643.1320361.12078968624698038490.b4-ty@pengutronix.de>
Date: Wed, 13 Mar 2024 11:50:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_035009_068886_48876D6A 
X-CRM114-Status: UNSURE (   8.34  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] common: console_common: handle NULL dev
 gracefully in dev_printf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 Mar 2024 10:26:33 +0100, Ahmad Fatoum wrote:
> dev_name(NULL) returns NULL, which snprintf can handle, but dev->driver
> used beforehand would derference the NULL pointer without checking.
> 
> Fix this by checking that dev is !NULL before dereferencing.
> This still leads to an ugly <NULL>: prefix, when a NULL dev is used, so
> it can be fixed, but without the crash, which might be difficult to
> pinpoint if the print happens early.
> 
> [...]

Applied, thanks!

[1/1] common: console_common: handle NULL dev gracefully in dev_printf
      https://git.pengutronix.de/cgit/barebox/commit/?id=d20abb491654 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



