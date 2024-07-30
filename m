Delivery-date: Tue, 30 Jul 2024 09:54:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYhgW-004Ob7-1d
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 09:54:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYhgV-0001yd-Sy
	for lore@pengutronix.de; Tue, 30 Jul 2024 09:54:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A1Sj+DjWRahMFYcqe1s9aUDQHCFZ6Aw7qrEhujmzq1I=; b=vVX5eVierlitrIfX9ylt05tgSu
	s4DQHb4GIqnCDI+whCWpPcwiRouiDAKrSKeMMkvFcTjN7jHXflX6sKwFOmHq5ho0OsJDcMe4qxEZu
	0gPwfy52tXmk108kbtJ7qoB+yVu5l4q4jVh3ihI/xSKeWKceE/GMdidmU+Gs6AnrPwkei6wl/yXem
	CCGx74DheYDr99LBHu6e9NwhOWepDN6u49ywclhT0aSBN6AzDUT1DAy3b4w/oqvbfjwy+GXV2AYDt
	6zKzFryxQsoF6QWCTJwf5qH/4oe/0tA81CZcfeWwJzWKc8zwmVUM6eWMjAVHpRUVgtpzWdW+jLDKR
	G9P3l7mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhg5-0000000E7Vc-2odb;
	Tue, 30 Jul 2024 07:53:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhg2-0000000E7Us-2pFh
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 07:53:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhg1-0001tU-3f; Tue, 30 Jul 2024 09:53:45 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhg0-003Edx-N2; Tue, 30 Jul 2024 09:53:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhg0-004Ro0-25;
	Tue, 30 Jul 2024 09:53:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: has@pengutronix.de
In-Reply-To: <20240729143347.1566660-2-a.fatoum@pengutronix.de>
References: <20240729143347.1566660-1-a.fatoum@pengutronix.de>
 <20240729143347.1566660-2-a.fatoum@pengutronix.de>
Message-Id: <172232602464.1060132.5715068098755342078.b4-ty@pengutronix.de>
Date: Tue, 30 Jul 2024 09:53:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_005346_742864_B2C7045D 
X-CRM114-Status: UNSURE (   8.14  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH 2/2] ARM: i.MX8MP: tqma8mpxl: match board code
 against SoM compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 29 Jul 2024 16:33:47 +0200, Ahmad Fatoum wrote:
> The board code has nothing baseboard-specific: It just registers the
> barebox update handler and activates the environment on the bootsource,
> both of which are applicable to any boards using the same SoM.
> 
> Therefore, let's replace the board matches with a match on the SoM.
> 
> 
> [...]

Applied, thanks!

[2/2] ARM: i.MX8MP: tqma8mpxl: match board code against SoM compatible
      https://git.pengutronix.de/cgit/barebox/commit/?id=9f3f4af8cf56 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



