Delivery-date: Tue, 16 Sep 2025 10:46:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyRK4-003d1B-15
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 10:46:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyRK3-0008Cq-PZ
	for lore@pengutronix.de; Tue, 16 Sep 2025 10:46:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mp84hYAgj1t2kcS4AfpeBkLyO3Si7VPibdH77E/Sfdc=; b=LJkUHAHCF45XdeZdV5OxzRFXux
	E0kXQ55/kQUjgZh+1ntQW02q5E8driYUP2d/kwuwcsilH1NKjfNlxMw0yLj7F0Cp6oZv/DfnoJdfK
	83+clj78F28e+kFFbd1HmYGfBMU5FOgLXlpdtfFJVHAkVAVSOOo3v3adnUKJXwDqwFXBvm5msBFi5
	5vilzudpqNnDXKqdU4x7gLhF8OVnvMr2ggZ8A9D+EOnWEkfu4zCPsesGsyGwe+8uv8s94U56FMTw5
	YH4e+pJRGuaEtuRHFc6sDVwvPnWsk3bF4OA3kWw3xYd8qBuhkGHdLWBDexBhh5BEjmwB6/UuWnFX/
	weoVhGxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyRJX-00000007FJu-3yIA;
	Tue, 16 Sep 2025 08:45:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyRJV-00000007FIV-1oAN
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 08:45:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyRJT-00087J-EU; Tue, 16 Sep 2025 10:45:23 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyRJT-001Yi5-0W;
	Tue, 16 Sep 2025 10:45:23 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyRJT-00000002wZm-0O0y;
	Tue, 16 Sep 2025 10:45:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Tobias Waldekranz <tobias@waldekranz.com>
In-Reply-To: <20250909131843.2260573-1-tobias@waldekranz.com>
References: <20250909131843.2260573-1-tobias@waldekranz.com>
Message-Id: <175801232308.701791.4170580706090249839.b4-ty@pengutronix.de>
Date: Tue, 16 Sep 2025 10:45:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_014525_474295_866A739D 
X-CRM114-Status: UNSURE (   8.96  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/7] dm: Initial work on a device mapper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 09 Sep 2025 15:18:33 +0200, Tobias Waldekranz wrote:
> Start work on adding a device mapper that is compatible with the
> corresponding subsystem in Linux.
> 
> v1:
> https://lore.kernel.org/barebox/20250828150637.2222474-1-tobias@waldekranz.com/
> 
> v1 -> v2:
> - Fix review comments from Ahmad (see individual commits)
> - Add (2/7): Add rasprintf(), to make scenarios where strings are
>   built up in multiple steps more ergonomic to work with.
> - Add (5/7): As a result of making sure that the DM selftests execute
>   in the CI suite, the qemu-malta build ran into a table size
>   overflow.
> 
> [...]

Applied, thanks!

[1/7] string: add strtok/strtokv
      https://git.pengutronix.de/cgit/barebox/commit/?id=30d9c8c534f8 (link may not be stable)
[2/7] vsprintf: Add rasprintf(): the reallocing string printf family
      https://git.pengutronix.de/cgit/barebox/commit/?id=5e81fb16e13c (link may not be stable)
[3/7] dm: Add initial device mapper infrastructure
      https://git.pengutronix.de/cgit/barebox/commit/?id=59b9c86685ad (link may not be stable)
[4/7] dm: linear: Add linear target
      https://git.pengutronix.de/cgit/barebox/commit/?id=4e5c3dd5cc9f (link may not be stable)
[5/7] MIPS: qemu-malta_defconfig: Use largest possible relocation table
      https://git.pengutronix.de/cgit/barebox/commit/?id=42226e38383a (link may not be stable)
[6/7] test: self: dm: Add test of linear target
      https://git.pengutronix.de/cgit/barebox/commit/?id=54f3f5e93473 (link may not be stable)
[7/7] commands: dmsetup: Basic command set for dm device management
      https://git.pengutronix.de/cgit/barebox/commit/?id=2069e48874e5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



