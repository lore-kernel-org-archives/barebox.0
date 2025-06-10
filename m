Delivery-date: Tue, 10 Jun 2025 19:55:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP3CY-005sRB-0D
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 19:55:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP3CX-0000St-Hg
	for lore@pengutronix.de; Tue, 10 Jun 2025 19:55:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vic+J146QUUNlYTlVojDpwqEdwrUaBSYyWZ8JSit6PI=; b=D8neoirub5tg1mrSPmTxsmu5pn
	MVi11QM+E0PzRJ5n0cwJnbxh8THmfPDLQr9gbV3/5UV7ZcIu2ini57fyk6KfYQilXDfE+4i6FaSNW
	BTmyE1sESWAGUa72klTg/FnvPZvPzN30fh5WINTcz7gcuE6Li+uDxK+qYhAZBcNkdVPtMeelgZQZp
	3l4k1g7ZQFR0HSJXWCjSFODTERd4RU0/QbYqF/ZIjizyYSHfby9vZeiD60GXK0Jcfnw3BxrajwXKq
	PkhSF18VyzoFnSO5KfUUnUI6zV4U/9vKX/2xLuyC5Raa7ULQQ6dSOMIo9U7X5mwn+UCq3eQpM72A6
	DB9n53lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP3Bs-00000007hw0-0IOh;
	Tue, 10 Jun 2025 17:55:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP0Tk-00000007DHf-1qdi
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 15:01:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uP0Ti-0002i0-HN; Tue, 10 Jun 2025 17:01:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uP0Ti-002nFn-18;
	Tue, 10 Jun 2025 17:01:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uP0Ti-0079mu-0p;
	Tue, 10 Jun 2025 17:01:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250610121910.1911393-1-a.fatoum@pengutronix.de>
References: <20250610121910.1911393-1-a.fatoum@pengutronix.de>
Message-Id: <174956769024.1705452.13081060951784748138.b4-ty@pengutronix.de>
Date: Tue, 10 Jun 2025 17:01:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_080132_480698_85F20B82 
X-CRM114-Status: UNSURE (   9.01  )
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
Subject: Re: [PATCH] fixup! of: partition: do not try to translate offset
 as OF address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 10 Jun 2025 14:19:10 +0200, Ahmad Fatoum wrote:
> base: resource: fix build with OF support disabled
> 
> With OF disabled, we end up with of_add_child_device defined twice.
> Move the definition into of/platform.c to fix this. This is the better
> place anyway, because it allocates a platform device.
> 
> For some reason, we compile of/platform.c even for CONFIG_OFDEVICE disabled,
> but CONFIG_OFTREE enabled, so we need to tweak the #ifdef accordingly.
> 
> [...]

Applied, thanks!

[1/1] fixup! of: partition: do not try to translate offset as OF address
      https://git.pengutronix.de/cgit/barebox/commit/?id=109c81f143b4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



