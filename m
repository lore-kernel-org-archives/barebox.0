Delivery-date: Fri, 29 May 2026 13:44:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSvdj-000Ad9-0F
	for lore@lore.pengutronix.de;
	Fri, 29 May 2026 13:44:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSvdi-0000ix-Gj
	for lore@pengutronix.de; Fri, 29 May 2026 13:44:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cdjwZiXjgRFMskWfaN2uINeF+vekeauwVoUcyJwulUc=; b=tS/lw/6zMFHsJgHliQPTzUTKWr
	G1yEAwS3AUPHreCV77af+oNky8skNJlNtRygU2gfy+Jk+UV0dx/mQHu4aCJjyxwCM77r4Gi87RQp6
	8hnICfhcFjFr8eaRH9Gb9/Z0nfZqWbGjnNg1gPJc2rqR/JSIF6buvuxKf7qJrg/N/2gNjOszEqe4Z
	Z92LMio1wvxqdNj4jnFbKd1QpDnwz42xEXO1xrHL0UyItqEJc+OjvlZ0bft0LgDQEeoibsfShDtfB
	bJJIBxvxZ9/+HZodr0cuw36MIIO8558skD+ZBtfu7TYCcXBTWFVqPaIWldjG2l8nKz14odDc+CSVF
	pEP/lURQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSvcQ-00000007Io1-1WD0;
	Fri, 29 May 2026 11:43:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSvcM-00000007Imc-2OO0
	for barebox@lists.infradead.org;
	Fri, 29 May 2026 11:43:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSvcI-0000Ph-Kp; Fri, 29 May 2026 13:43:06 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSvcI-0005Js-1v;
	Fri, 29 May 2026 13:43:06 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSvcI-0000000At1O-2COS;
	Fri, 29 May 2026 13:43:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260527-public-keys-v1-0-c87a1cc61d1b@pengutronix.de>
References: <20260527-public-keys-v1-0-c87a1cc61d1b@pengutronix.de>
Message-Id: <178005498652.2594741.10641923510099646920.b4-ty@pengutronix.de>
Date: Fri, 29 May 2026 13:43:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_044310_634596_DB2C13A0 
X-CRM114-Status: UNSURE (   7.74  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] public keys: rework keyrings as nested containers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 27 May 2026 12:54:40 +0200, Sascha Hauer wrote:
> So far a public key had a char *keyring meaning that a key can only be
> part of a single keyring. This series overcomes this, with it keys can
> be contained in multiple keyrings and keyrings can be part of other
> keyrings. To get there a new struct keyring_link is introduced which
> is instanciated per link and links a key/keyring to a keyring. The
> keys command is updated to reflect that, so an example output could
> be:
> 
> [...]

Applied, thanks!

[1/4] public keys: make error message more informative
      https://git.pengutronix.de/cgit/barebox/commit/?id=7c1e2e1a75e2 (link may not be stable)
[2/4] public keys: make key_name_hint optional
      https://git.pengutronix.de/cgit/barebox/commit/?id=7d7cd5b01e33 (link may not be stable)
[3/4] public keys: rework keyrings as nested containers
      https://git.pengutronix.de/cgit/barebox/commit/?id=499d868a876e (link may not be stable)
[4/4] public keys: allow keys to be members of multiple keyrings
      https://git.pengutronix.de/cgit/barebox/commit/?id=fac191dd0c97 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



