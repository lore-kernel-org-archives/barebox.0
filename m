Delivery-date: Mon, 01 Dec 2025 12:09:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1mg-006nWy-1N
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 12:09:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1mf-0004BW-TL
	for lore@pengutronix.de; Mon, 01 Dec 2025 12:09:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1XjwHO9jT46Zn0Rf7TdmjWmE/WHwkrHJ9w55fZWbOiI=; b=hEeCNtJLVIIfeSfV9PZ5PibHl/
	KLy9yIakxxW4BWaY6N+mDB+tG24yVDjZ4nth7ejsOykWRFGLI59SnAB64Ib1jiOQERlzBsiY3klSy
	85ghIenyD+MCkBcy4ulmlV6x/4wXmImQHjWYG/a6IkoSM56fN5+KStfCIYp/Qh7dJXr44j7Pxez8e
	/vBJ711Q3rPJsXzs5+jq6P5flDcLyRQo6vN0lxBbz8RGNinsp+/zBU3uoF8dWvVsJ+6hDj5VWzJvy
	USO1fOTF4kaNzL/b5qXQ05DGDWBLLeShxKFOWHXgJyl/amDEImCE76nsejzyw+6GybLpjEULeA5QA
	bSb8pTAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ1mJ-00000003Onr-0bKU;
	Mon, 01 Dec 2025 11:09:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ1mF-00000003OnL-3fnt
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 11:09:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ1mE-00044n-4C; Mon, 01 Dec 2025 12:09:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ1mD-003Qm2-33;
	Mon, 01 Dec 2025 12:09:05 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ1mD-000000012AC-3jpk;
	Mon, 01 Dec 2025 12:09:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251128184920.109552-1-a.fatoum@pengutronix.de>
References: <20251128184920.109552-1-a.fatoum@pengutronix.de>
Message-Id: <176458734588.246509.2441708505332498130.b4-ty@pengutronix.de>
Date: Mon, 01 Dec 2025 12:09:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_030907_940194_9BB40C11 
X-CRM114-Status: UNSURE (   6.23  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] Documentation: migration-guides: don't warn about
 migration-master
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Nov 2025 19:49:14 +0100, Ahmad Fatoum wrote:
> This file holds pending migration notes and is unreferenced, so mark it
> orphan to suppress the warning.
> 
> 

Applied, thanks!

[1/4] Documentation: migration-guides: don't warn about migration-master
      https://git.pengutronix.de/cgit/barebox/commit/?id=67181e72d855 (link may not be stable)
[2/4] Documentation: factor out build rules into stand-alone Makefile
      https://git.pengutronix.de/cgit/barebox/commit/?id=6360393099d6 (link may not be stable)
[3/4] ci: add workflow to check documentation build is warning free
      https://git.pengutronix.de/cgit/barebox/commit/?id=4a8d9ab1c500 (link may not be stable)
[4/4] ARM: Rockchip: document changing console baud rate
      https://git.pengutronix.de/cgit/barebox/commit/?id=f5312a751648 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



