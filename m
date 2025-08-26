Delivery-date: Tue, 26 Aug 2025 07:09:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqlvm-004bg8-0d
	for lore@lore.pengutronix.de;
	Tue, 26 Aug 2025 07:09:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqlvl-0000mh-2q
	for lore@pengutronix.de; Tue, 26 Aug 2025 07:09:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5cXe4YY4wfvvLOfhjMeW38KSxHRy7dXubS7KuqPK3I0=; b=wtaL8vytxkz14olj9s++MU5PbE
	21O15DDhI7vavmWq/yYgS8UHbqYPpnUiHl+UZfXZV2aQyfIGS8wMvk3wdwYsdV5bllDq8t3x5Esqz
	pah4QFog1PPt9HDY2Yys37XKNookbeMSn6tGe9mJh7zbMPK2Re9S2sp0gA2tysAlPpifpHCQraW/T
	Ro7hbiPP80C4wQtWbRB0IhjoZvNQcgqJOckJM6DiQBsDrdOxp+iZscL/X1ROOffTgo0PYUlM/sGHy
	iMfrWs0FgNJvIN55enlhEIsWTXQWJxTf05l5g2Nv9esvGKdPR7tLAdbNPrhGgefXAB6zoo+OrShrU
	vy3ZdLQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqlvM-0000000AYTE-22Ev;
	Tue, 26 Aug 2025 05:08:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqlvJ-0000000AYSq-2KrU
	for barebox@lists.infradead.org;
	Tue, 26 Aug 2025 05:08:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqlvI-0000br-Cl; Tue, 26 Aug 2025 07:08:44 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqlvI-002AzO-0e;
	Tue, 26 Aug 2025 07:08:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqlvI-0000000CiCG-0cwx;
	Tue, 26 Aug 2025 07:08:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250825151143.3629734-1-s.hauer@pengutronix.de>
References: <20250825151143.3629734-1-s.hauer@pengutronix.de>
Message-Id: <175618492414.3029807.6312185678435634272.b4-ty@pengutronix.de>
Date: Tue, 26 Aug 2025 07:08:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_220845_602094_D4DF3316 
X-CRM114-Status: UNSURE (   7.76  )
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
Subject: Re: [PATCH] logo: work around broken inkscape in Debian Trixie
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 25 Aug 2025 17:11:42 +0200, Sascha Hauer wrote:
> This works around a broken inkscape in Debian Trixie. With
> Inkscape 1.4 (e7c3feb100, 2024-10-09). When executing multiple inkscape
> instances in parallel it often fails with:
> 
> terminate called after throwing an instance of 'Gio::DBus::Error'
> 
> This is described in [1] and this patch utilizes a workaround from this
> thread.
> 
> [...]

Applied, thanks!

[1/1] logo: work around broken inkscape in Debian Trixie
      https://git.pengutronix.de/cgit/barebox/commit/?id=7b684858a83a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



