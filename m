Delivery-date: Thu, 04 Sep 2025 10:56:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu5lu-007yeb-0L
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 10:56:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu5ls-00041F-UC
	for lore@pengutronix.de; Thu, 04 Sep 2025 10:56:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9/gQo+DegqHoatKElo0QpRDR3AbXsvMcbM8XNoWjZx8=; b=1oqScUeu6yXTtTX/XWYC44snH+
	b2MJFS+RvzctmGhmj8+05VbBgucoAWPsFMAyzKUg7sRkIx6BG6bp/hCefUcAHQvkL/u5HTJ6zQvPG
	sj+2fQ4Va18SNl0L0WL7yktn2NRUO11r1bbOS19UUxMBxbLFgndPQ/VFHUloizseV142NJvu3LgSb
	AlIexKlKz7sIgeKwcqJvbSBq293rZ/qFJEo+/kz414YEjjmhPYk4cxvyXVNxn+Sn1tuhlkqPL6eMt
	76mRyoLAx9zL0LWgq2gnIx2xGUzZjraSe4Sbaq4Bya16JjaBYNtHlKop0x/e15pjxwYrKVVRQYGaU
	6ktgs4BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu5lR-0000000ANqU-30Kq;
	Thu, 04 Sep 2025 08:56:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu53d-0000000A6wm-2Nsr
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 08:11:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uu53c-0007M4-DT; Thu, 04 Sep 2025 10:11:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uu53c-003hDw-0j;
	Thu, 04 Sep 2025 10:11:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uu53c-0000000DHCT-0hgj;
	Thu, 04 Sep 2025 10:11:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: anis chali <chalianis1@gmail.com>
In-Reply-To: <20250904055336.3136705-1-s.hauer@pengutronix.de>
References: <20250904055336.3136705-1-s.hauer@pengutronix.de>
Message-Id: <175697346016.3164312.17077249245446502614.b4-ty@pengutronix.de>
Date: Thu, 04 Sep 2025 10:11:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_011101_609908_E0CF55D5 
X-CRM114-Status: UNSURE (   7.53  )
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
Subject: Re: [PATCH] FIT: let fit_has_image() return bool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 04 Sep 2025 07:53:36 +0200, Sascha Hauer wrote:
> The return value of fit_has_image() is treated as bool by most callers.
> It could return an error code though which by the callers would be
> evaluated to true. Change the return type to bool and return false
> instead of an error code to meet the callers expectations.
> 
> 

Applied, thanks!

[1/1] FIT: let fit_has_image() return bool
      https://git.pengutronix.de/cgit/barebox/commit/?id=403d8a3b6acf (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



