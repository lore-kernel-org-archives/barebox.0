Delivery-date: Wed, 03 Dec 2025 12:56:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQlTa-007V8e-17
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 12:56:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQlTZ-0007v1-Q5
	for lore@pengutronix.de; Wed, 03 Dec 2025 12:56:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ex/Voq4QT+XWhkGd1Np2MVSpXoWqPEwoL5uhgLw9Wus=; b=cRH6el5xNzwjZqHv5KpoNgX6rM
	7VpBKRrE8HfnCEKv/7gIupDlu75GVIcBkTxX00wrGX4NcMPgKh62xoVeOll5EOiKCP7hSNCU+05cz
	bDJN75xelIQtqXlv3KVGCFSkFwKmnpoqkd214Y1acw36FVtkd2qBt+rOb7M1btPrgaGVsEo3NTNRu
	BFUiGmT2FKeUkqgsyfruCrs79MZuNY3IyxKDBdinFBC3BVL8iff9Pt2iUgpo2dOd/+WGXJTpICP8G
	5iMzf9u9VYpKM8SbMgB5Ih8uH+v425UOpa5LvZfxIUkikZi9OmvqoOhyvQ0Zcv3zHgAnzu5ZWmWDy
	7Lg8oYaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQlSy-00000006WwY-1WcE;
	Wed, 03 Dec 2025 11:56:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQlSv-00000006Wvy-22vI
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 11:56:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQlSs-0007q9-60; Wed, 03 Dec 2025 12:56:10 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQlSr-003lpR-3D;
	Wed, 03 Dec 2025 12:56:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQlSr-0000000GbVM-3wB8;
	Wed, 03 Dec 2025 12:56:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251202-k3-deps-v1-0-68404d3b2c70@pengutronix.de>
References: <20251202-k3-deps-v1-0-68404d3b2c70@pengutronix.de>
Message-Id: <176476296993.3957310.10018421375362639664.b4-ty@pengutronix.de>
Date: Wed, 03 Dec 2025 12:56:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_035613_533943_E4DE4DB1 
X-CRM114-Status: GOOD (  12.80  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] ARM: k3: fix k3img dependencies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 02 Dec 2025 16:58:24 +0100, Sascha Hauer wrote:
> This series fixes a dependency problem in the K3 image generation. The
> k3img tool takes several files as input, but only the barebox image is
> actually a dependency, so when (only) one of the other files change the
> final image is not re-generated.
> 
> While at it we can make some input files SoC specific which means we no
> longer have to specify them per board, saving one line per board and
> file in Makefile.k3
> 
> [...]

Applied, thanks!

[1/4] ARM: K3: am62l: don't put sysfwdata into 1st stage image
      https://git.pengutronix.de/cgit/barebox/commit/?id=429f52b9f493 (link may not be stable)
[2/4] ARM: k3: make some firmware files SoC specific
      https://git.pengutronix.de/cgit/barebox/commit/?id=e7189c9722ab (link may not be stable)
[3/4] ARM: k3: am62l: Add dedicated config option for OP-TEE
      https://git.pengutronix.de/cgit/barebox/commit/?id=2711c4ca4fdc (link may not be stable)
[4/4] ARM: k3: am62l: fix dependencies on k3img input files
      https://git.pengutronix.de/cgit/barebox/commit/?id=f1739aa759f0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



