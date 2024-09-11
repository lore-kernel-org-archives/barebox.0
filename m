Delivery-date: Wed, 11 Sep 2024 10:36:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIq5-003QOm-1A
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 10:36:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIq4-0006dS-0K
	for lore@pengutronix.de; Wed, 11 Sep 2024 10:36:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vkn1bWIkRkw+614sUp9jrQ6WQh6GnerJ3K8U/swKU64=; b=C3t4xqbHNOkIca8PMfY+3hhERR
	oJ6wS1bT/trL3n9o4kphRYo36Vz12wm+/78qlxordso76x9ij/6hxp+z06V3pP6f0cquu//hMjUPU
	99q4GbPYyt/Lgx1aOOJMjyUkfz1PJD7wCGsMaoFLNc6GAAT6v7WNGIWECYfJBAL99P4AcDkH9W3TX
	4cuTIn1epMwmQpulmeVPIdr3DmXzXp4wfNzGADAbu3CK49B0slpJoaeH7teki/Ufv9iz7o9k9nbRk
	6X9IliyGZ9nSIzwyYcT5zbPiZOVfTY81/ugdig93C04jUDuE/rmTS5RAZVQHrclodl2K1p/b6V3Ya
	qkDhe3ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIpd-00000008g2F-3gM3;
	Wed, 11 Sep 2024 08:36:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIjY-00000008eir-3hRd
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 08:29:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIjX-0003fE-BW; Wed, 11 Sep 2024 10:29:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIjW-0075pq-V0; Wed, 11 Sep 2024 10:29:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIjW-001g0S-2v;
	Wed, 11 Sep 2024 10:29:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240911081747.1523613-1-a.fatoum@pengutronix.de>
References: <20240911081747.1523613-1-a.fatoum@pengutronix.de>
Message-Id: <172604339090.399789.15463967305998583483.b4-ty@pengutronix.de>
Date: Wed, 11 Sep 2024 10:29:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_012952_980228_0C720883 
X-CRM114-Status: UNSURE (   7.15  )
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
Subject: Re: [PATCH 1/3] ARM: rpi: turn fixup message into debug messages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 11 Sep 2024 10:17:45 +0200, Ahmad Fatoum wrote:
> When network booted, these properties may be missing and informing the
> user about it arguably just clutters the log.
> 
> Thus bump down the log level to debug.
> 
> 

Applied, thanks!

[1/3] ARM: rpi: turn fixup message into debug messages
      https://git.pengutronix.de/cgit/barebox/commit/?id=514157b1ae5b (link may not be stable)
[2/3] ARM: rpi: always add built-in env
      https://git.pengutronix.de/cgit/barebox/commit/?id=7f8daea2da40 (link may not be stable)
[3/3] ARM: rpi: return correct error code when failing to read revision
      https://git.pengutronix.de/cgit/barebox/commit/?id=314ef77d68ba (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



