Delivery-date: Fri, 26 Sep 2025 13:39:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v26my-001JZ0-0f
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 13:39:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v26mx-0000Z4-NK
	for lore@pengutronix.de; Fri, 26 Sep 2025 13:39:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jKUFD8IDuIvAwaqjnwSqbLpOkSpN9sP8d9hz+0FsEMQ=; b=ThZ2VJPoO0maOQ1xLP/oEMCCBD
	PoD5pUkWBfMugEHh+MpG6RrVncWDz8sM2CVbDp/hum7iJmOz9LElRdUJ2U/KT/R2T5O7F+jSju6oJ
	PUKRINeEgbqnSwKJsqHv/GNwNJP6iUBkf/OVQhuF+0PDBjSnAlRIuVIzRYKjEcK7hYuJgbN2RZqtV
	A38nJXY5nt39Vla0w0L+1q+KoEZbbDOMg5TZ7RdrKrs2n0Gw2MWhZNd+8izvlzCbTg1u1k3CU7+NT
	AaSjMvDZXzLUrHqgG89Fm82P44655CSWIJ8Tagm6jAOEv9mfsMc6Aa+Nqy18IWNOndKEfdleAcBY4
	CqwkmjLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v26mX-00000000qpo-1XBJ;
	Fri, 26 Sep 2025 11:38:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v26mU-00000000qnh-21JR
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 11:38:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v26mS-0000T7-R2; Fri, 26 Sep 2025 13:38:28 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v26mS-000aES-27;
	Fri, 26 Sep 2025 13:38:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v26mS-0000000D0xJ-2Ulv;
	Fri, 26 Sep 2025 13:38:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250926091027.1024322-1-a.fatoum@pengutronix.de>
References: <20250926091027.1024322-1-a.fatoum@pengutronix.de>
Message-Id: <175888670858.3101918.7379554746676014163.b4-ty@pengutronix.de>
Date: Fri, 26 Sep 2025 13:38:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_043830_524611_75C350A3 
X-CRM114-Status: UNSURE (   5.48  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] common: misc: reduce duplication in strerror
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 26 Sep 2025 11:10:03 +0200, Ahmad Fatoum wrote:
> We duplicate the fallback behavior and use an unnecessary intermediate
> str variable, when we could return directly.
> 
> 

Applied, thanks!

[1/2] common: misc: reduce duplication in strerror
      https://git.pengutronix.de/cgit/barebox/commit/?id=9fa7e97ed0e6 (link may not be stable)
[2/2] common: binfmt: replace generic ENOENT message with "Command not found"
      https://git.pengutronix.de/cgit/barebox/commit/?id=e4643fa5ffea (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



