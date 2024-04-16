Delivery-date: Tue, 16 Apr 2024 15:39:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwj1k-003Qr7-20
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 15:39:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwj1g-0004ps-GQ
	for lore@pengutronix.de; Tue, 16 Apr 2024 15:39:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=imZ2KPctV3SLSmaZf63txpH0GZPWn6Iy2+8R/8eex/k=; b=PwK3j0xxtrtU3hF5kmtRkzw5ii
	bWI6qwAtY0VO7wGkhYFRtfBa56FeS/JOmKlijWq7QW6fcqQbvYFC0SJfYDQmBLk1oF2ylRphbngFN
	nVVxcjKoH7x44HHBwFOKkKhilu1g3w3NJ8dMMgqSWIML2wB0WAzfN5LHprhqn+6r2C4JtdsnWhmAR
	/55cKbO9NuZhHxEiYrzdv7P3u0bNp6I+/se8ODWiXTgJx3ZqeGnV6XcYmjWnPVSQXGQ8CgMO1sQJF
	Pl/9OgTidDR06+RhlJI9P+U7xfFN9auEcgNx2tUkDGGXgIas1rJu0Xm1AkMp2JQ1mzpYZttSmxBSi
	qUufcwGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwj1B-0000000CM6M-3YAK;
	Tue, 16 Apr 2024 13:38:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwj14-0000000CM5l-0BOz
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 13:38:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwj12-0003kN-Rk; Tue, 16 Apr 2024 15:38:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwj12-00CcUL-AB; Tue, 16 Apr 2024 15:38:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwj12-008WeZ-0p;
	Tue, 16 Apr 2024 15:38:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Jonas Richardsen <jonasrichardsen@emlix.com>
In-Reply-To: <20240415122757.327312-1-jonasrichardsen@emlix.com>
References: <69c9a97e-80e8-40e9-89c7-b9479f9dfd01@pengutronix.de>
 <20240415122757.327312-1-jonasrichardsen@emlix.com>
Message-Id: <171327470825.2032048.4263920005460022049.b4-ty@pengutronix.de>
Date: Tue, 16 Apr 2024 15:38:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_063830_391161_3FD963D8 
X-CRM114-Status: UNSURE (   9.06  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] of: do not copy properties if they already exist in
 the destination
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Apr 2024 14:26:04 +0200, Jonas Richardsen wrote:
> Currently `of_copy_property` copies the given property even if a property
> with the same name already exists on the destination node.
> This leads to kernel warnings about duplicate properties:
> ```
> [    0.014063] Duplicate name in chosen, renamed to "stdout-path#1"
> [    0.014093] Duplicate name in chosen, renamed to "bootargs#1"
> [    0.014119] Duplicate name in chosen, renamed to "phandle#1"
> [    0.014197] Duplicate name in reserved-memory, renamed to "#address-cells#1"
> [    0.014226] Duplicate name in reserved-memory, renamed to "#size-cells#1"
> [    0.014252] Duplicate name in reserved-memory, renamed to "ranges#1"
> [    0.014278] Duplicate name in reserved-memory, renamed to "phandle#1"
> ```
> Therefore, the function was changed to return an error if the property
> already exists in the destination.
> The change does not cause any regressions, because the only usage of
> this function occurs within `arch/arm/boards/raspberry-pi/rpi-common.c`
> where the original behaviour of the function is obviously unintended.
> 
> [...]

Applied, thanks!

[1/1] of: do not copy properties if they already exist in the destination
      https://git.pengutronix.de/cgit/barebox/commit/?id=364a1831678d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



