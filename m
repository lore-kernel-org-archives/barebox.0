Delivery-date: Thu, 27 Mar 2025 10:24:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txjTr-004onH-14
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 10:24:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txjTq-0004Vn-Pf
	for lore@pengutronix.de; Thu, 27 Mar 2025 10:24:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rb08A1fzb6Zft9OOxqY0scgVxf6sLvHG4TGvIJj1nf8=; b=aa7SIHUFqr/PPEQFYKI2P6eURJ
	oSAwUkzM2pl+EZmiUYBfhar7Uiq8mJBxrKHgHKyVr3J4TODnPhhFAAsSGdPAyuVzHTALhSUt/NMuF
	m8DzqbsFDNdsN3JuCacNezCp98Zb3GJZhrGd78H5gLyJks4WPp82gHAdQSZ7l0zsH259p9XfVtdrn
	2AV0XmiwUlQvfHgUEEpTK4+hzfyVcuqbXW5y9RLy1lxCL45auWRgxX89erMAGUQ79/Aa7ml9+bMnp
	caPbG8SOZUSQuesuKWTodHH07XZcZ5wsJtOL1s8N78QqFJ4qXOwS5PPi0Ar1E1PQhMj1pt/F8490+
	Gi9QvtyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txjTN-0000000AZ0a-2G5F;
	Thu, 27 Mar 2025 09:24:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txjTL-0000000AZ0A-1XQZ
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 09:24:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txjTJ-0004Nj-SX; Thu, 27 Mar 2025 10:24:21 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txjTJ-001u8w-2F;
	Thu, 27 Mar 2025 10:24:21 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txjTJ-004Qxp-21;
	Thu, 27 Mar 2025 10:24:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Jules Maselbas <jmaselbas@zdiv.net>, jre@pengutronix.de
In-Reply-To: <20250326075919.3448789-1-a.fatoum@pengutronix.de>
References: <20250326075919.3448789-1-a.fatoum@pengutronix.de>
Message-Id: <174306746162.1056706.7758893365524562090.b4-ty@pengutronix.de>
Date: Thu, 27 Mar 2025 10:24:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_022423_408840_35A9AA18 
X-CRM114-Status: UNSURE (   8.90  )
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
Subject: Re: [PATCH 0/6] ci: run tests and static analysis on allyesconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 26 Mar 2025 08:59:13 +0100, Ahmad Fatoum wrote:
> With a one-liner fix remaining[1], sandbox now builds allyesconfig sans
> SDL/libftdi to completion. Let's seize the opportunity and add it to CI,
> so we easily detect breakage around allyesconfig in future.
> 
> This series also switches the recently added Coverity and CodeQL Github
> Actions to use allyesconfig to extend coverage to non-sandbox related
> drivers as well.
> 
> [...]

Applied, thanks!

[1/6] sandbox: use CROSS_PKG_CONFIG when compiling sandbox arch code
      https://git.pengutronix.de/cgit/barebox/commit/?id=1026d6df3db8 (link may not be stable)
[2/6] sandbox: hide sdl/libftdi symbols if libraries not found
      https://git.pengutronix.de/cgit/barebox/commit/?id=3763b996fac0 (link may not be stable)
[3/6] MAKEALL: fix check_pipe_status usage
      https://git.pengutronix.de/cgit/barebox/commit/?id=b88a1d166575 (link may not be stable)
[4/6] MAKEALL: remove use of alias in script
      https://git.pengutronix.de/cgit/barebox/commit/?id=61f240e31659 (link may not be stable)
[5/6] ci: pytest: run test suite on sandbox allyesconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=18bf3d40253c (link may not be stable)
[6/6] ci: run static analysis on allyesconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=a886cc803dfa (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



