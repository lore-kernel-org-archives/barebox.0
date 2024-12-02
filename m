Delivery-date: Mon, 02 Dec 2024 12:10:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI4Jw-0033aj-2R
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 12:10:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI4Jw-0006iX-LO
	for lore@pengutronix.de; Mon, 02 Dec 2024 12:10:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g4nH41bQGEV4AdK6uGrWk74cLEPFxTwk7rkx7lsnHE8=; b=gUW9vFozJv6VI9SsatI36A/Xvl
	OFYvsnOP3Ky3DEINkR1/vushAT1pZxeE5vNhxQozYy6Wl4V29rMjHwcsHPEO9zk81Memon67NMXzk
	QH4n+7v6BR6c9miF4Aa5YASdMgwdsVTrFNECwDOUDJBgV2W9gNXbbbiF87iqoF3l7jd1m5Q960Ii1
	xO6Ft9uGvaGugV1z8SpFdbPkkkq9QdX580AQlSpqRKht98c6pGtODiWR8UqtUbzqRMZRbtFFGN4Q+
	MF+Uh0uEid2wnqdym9pxHHlXFVprk66fb5brT5tG4aRbh/0vIXEEoHafJ1OA5O74+CBvr2b83U8yt
	ydkmmBgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI4JY-00000005pJh-3luC;
	Mon, 02 Dec 2024 11:10:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI4Ia-00000005opX-1Ju7
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 11:09:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tI4IY-0006D0-R3; Mon, 02 Dec 2024 12:09:02 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tI4IX-001Hen-2p;
	Mon, 02 Dec 2024 12:09:02 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tI4IY-002EGN-1t;
	Mon, 02 Dec 2024 12:09:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241202081815.3475994-1-a.fatoum@pengutronix.de>
References: <20241202081815.3475994-1-a.fatoum@pengutronix.de>
Message-Id: <173313774258.531308.9162072749089963163.b4-ty@pengutronix.de>
Date: Mon, 02 Dec 2024 12:09:02 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_030904_397663_4ECCDDE2 
X-CRM114-Status: UNSURE (   6.99  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/5] malloc: add options to zero-initialize buffers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 02 Dec 2024 09:18:10 +0100, Ahmad Fatoum wrote:
> To further harden barebox against attackers, add options to zero
> registers on function exit, buffers on malloc and after free as well as
> local variables.
> 
> Additionally, TLSF already has sanity checks, which are promoted to
> panics with CONFIG_BUG_ON_DATA_CORRUPTION enabled.
> 
> [...]

Applied, thanks!

[1/5] dlmalloc: add aliases with dl as prefix
      https://git.pengutronix.de/cgit/barebox/commit/?id=730ac4ad403c (link may not be stable)
[2/5] hardening: support zeroing all malloc buffers by default
      https://git.pengutronix.de/cgit/barebox/commit/?id=0c573b180278 (link may not be stable)
[3/5] hardening: support initializing stack variables by default
      https://git.pengutronix.de/cgit/barebox/commit/?id=30edfb0f99f9 (link may not be stable)
[4/5] hardening: support register zeroing on function exit
      https://git.pengutronix.de/cgit/barebox/commit/?id=4e3aef3e116a (link may not be stable)
[5/5] tlsf: panic in asserts if CONFIG_BUG_ON_DATA_CORRUPTION=y
      https://git.pengutronix.de/cgit/barebox/commit/?id=4b2fd33bf2dd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



