Delivery-date: Wed, 11 Sep 2024 10:36:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIq8-003QQ9-19
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 10:36:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIq7-0006fs-9S
	for lore@pengutronix.de; Wed, 11 Sep 2024 10:36:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZJAhUxjdUVEOP/IvWbnnTroeT7JkECwF6d7CkgYFlNI=; b=Qfe1EhaGSUYgdOuvKmRKfhBrMY
	V5Zdmv0AXHqKt13IVM1KzRZJP7bNhenk5xoB7m57PRNnXuXAQZDmp2b74c1H1M1SuVyfoIyVBVgsF
	rAaJDdLgSamc7mS6yWqH9EyL6m8ID5lFR6zvvwO0VtbfNhmFFOP/C6qEoQoiMg08jEEzryBlHeylM
	xE0B4xS/2rKeTsRN1Sz0CsCGOXCu+eZq0N6DA13xNT29USBdMUs0A0DYmkshkLcmyMKug9kTKAudJ
	M9bOPQqQMGNuW7MWycXilVBcJtBaL1QUd0FSu0j6jm1SPRxBUhuVpp5tr1V0+UDK1I5hd4r8GBJ3q
	aJM5jNDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIpd-00000008g1m-10dX;
	Wed, 11 Sep 2024 08:36:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIiB-00000008eLp-2cPj
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 08:28:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIi8-00034X-L1; Wed, 11 Sep 2024 10:28:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIi8-0075pb-7h; Wed, 11 Sep 2024 10:28:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIi8-001fVC-0Z;
	Wed, 11 Sep 2024 10:28:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240910085146.37240-1-a.fatoum@pengutronix.de>
References: <20240910085146.37240-1-a.fatoum@pengutronix.de>
Message-Id: <172604330417.397851.4718186560669986899.b4-ty@pengutronix.de>
Date: Wed, 11 Sep 2024 10:28:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_012827_717194_90C06564 
X-CRM114-Status: UNSURE (   7.20  )
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
Subject: Re: [PATCH master] Kbuild: update gen_compile_commands.py
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 10 Sep 2024 10:51:46 +0200, Ahmad Fatoum wrote:
> With python 3.12, we now get following warning when running the script:
> 
>     SyntaxWarning: invalid escape sequence '\#'
> 
> This and other minor issues have been fixed upstream since we first
> imported the script, so let's sync and import the content of following
> Linux v6.11-rc6 commits:
> 
> [...]

Applied, thanks!

[1/1] Kbuild: update gen_compile_commands.py
      https://git.pengutronix.de/cgit/barebox/commit/?id=898776bbecd1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



