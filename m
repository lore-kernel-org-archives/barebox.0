Delivery-date: Tue, 24 Jun 2025 09:36:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTyCE-00AWyr-2k
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 09:36:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTyCE-0001Ml-9H
	for lore@pengutronix.de; Tue, 24 Jun 2025 09:35:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b9nFntaN8D3YDyj9gHHvyV9rReau6qATKQPJ50rvqzk=; b=c3xEa1GiIWPrMYkWRdWkTrEJFP
	c/Vl86wsNBSSYuud5fkqWXsWbK1pA9HA9mSpluzvE/AKs6co1E9Ka4Xepra6hDYd7vjusIzZSHxdP
	57d2v0am0eNmUqIB+XQoPxazhsDvhCTgo3lhmY5K8oJK8CtJ8ftzrllYYDIK3/ugzCu4Vxw755C4e
	V+QrXDX6JjTyBk6jFmJ0NXb0rnFP1q7V9zPHpZyCM6ssO/S83yjvaa2hsUdIsMiZLxX9N99GYG9ke
	HS15iIVrb3kRpfukkJ/UUah1xdACb85CfRepddt6OfMN0SdvB5OooMUIdbx8psyBL0/bgkYpIoyWH
	zGfs13nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTyBX-00000004sxU-2O5U;
	Tue, 24 Jun 2025 07:35:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTxwB-00000004r0v-2ilJ
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 07:19:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTxw9-0002dS-A2; Tue, 24 Jun 2025 09:19:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTxw9-0054h9-0P;
	Tue, 24 Jun 2025 09:19:21 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTxw9-0027QW-09;
	Tue, 24 Jun 2025 09:19:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Lars Schmidt <l.schmidt@pengutronix.de>
In-Reply-To: <20250623131306.2179862-1-a.fatoum@pengutronix.de>
References: <20250623131306.2179862-1-a.fatoum@pengutronix.de>
Message-Id: <175074956104.505107.1660435797846919378.b4-ty@pengutronix.de>
Date: Tue, 24 Jun 2025 09:19:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_001923_692223_13E8390B 
X-CRM114-Status: UNSURE (   7.80  )
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
Subject: Re: [PATCH] fixup! bootchooser: implement locking of attempts
 counter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 23 Jun 2025 15:13:06 +0200, Ahmad Fatoum wrote:
> We have two code paths with goto err that don't set ret beforehand with
> the expectation that the default -EINVAL will be used.
> 
> ret is now being reused though and thus the -EINVAL is clobbered. In the
> worst case, an error ends up with ERR_PTR(ret) == NULL crashing
> bootchooser -i when a state prefix is set, but no targets are defined.
> 
> [...]

Applied, thanks!

[1/1] fixup! bootchooser: implement locking of attempts counter
      https://git.pengutronix.de/cgit/barebox/commit/?id=77bd8dac6962 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



