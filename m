Delivery-date: Wed, 17 Jan 2024 08:18:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQ0Bk-003Lb5-1u
	for lore@lore.pengutronix.de;
	Wed, 17 Jan 2024 08:18:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQ0Bl-00041d-Ag
	for lore@pengutronix.de; Wed, 17 Jan 2024 08:18:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=//IMMrvt2/dwEsxeE50Q1Wr90D0EWwDyPLcH7YttpR0=; b=noX7T4Kwhqy5qS3aceHoJhcOB1
	ytQSGBzYrSbV5gnfZx8DQUbsk/wJ/5+wpgGKMyBUnUAs5RhpTjcyVZMEFFbFXDV+TqUYnIYcEasEg
	5D+IczH8pLh66egp4GBgJeF/VztjToME6W+zFM1FrvM7ehjR3aWlAAeh2orom2hiKC24hgQHbUrUt
	WHxRfXuoJIGDDVhvyhUunA4I4ia5tv/hmDyW0Yq9s+DKVMQl0HUMXMCWWse0OVojLROy39EvVY4SK
	jcSrsVvyA3w6TaLX+w0BrTXCF1If5szXTYRIZe30nrhTMbVo6pPFqABTLKYi5JP74o+98steRhpWg
	RD+XZnpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ0Al-00Ef75-2H;
	Wed, 17 Jan 2024 07:17:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ0Ai-00Ef6J-0e
	for barebox@lists.infradead.org;
	Wed, 17 Jan 2024 07:17:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQ0Ag-0003vV-Qi; Wed, 17 Jan 2024 08:17:10 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQ0Ag-000PjZ-EQ; Wed, 17 Jan 2024 08:17:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQ0Ag-009dt0-1E;
	Wed, 17 Jan 2024 08:17:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20240116091020.2971875-1-s.hauer@pengutronix.de>
References: <20240116091020.2971875-1-s.hauer@pengutronix.de>
Message-Id: <170547583037.2298270.5937875875401837244.b4-ty@pengutronix.de>
Date: Wed, 17 Jan 2024 08:17:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_231712_235769_34489406 
X-CRM114-Status: UNSURE (   8.18  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] firmware: fix external firmware dependencies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Jan 2024 10:10:20 +0100, Sascha Hauer wrote:
> A pbl is not rebuilt when the firmware file specified in fw-external-y
> changes.
> 
> $(patsubst %.gen.o,$(obj)/%.extgen.pbl.o, $(pbl-y)) is executed before
> pbl-y actually contains the contents of fw-external-y. Also we want to
> do the subsitution only for the external firmware files, not for pbl-y.
> 
> [...]

Applied, thanks!

[1/1] firmware: fix external firmware dependencies
      https://git.pengutronix.de/cgit/barebox/commit/?id=f053db526549 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



