Delivery-date: Tue, 18 Jun 2024 08:14:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJS70-007zdy-2h
	for lore@lore.pengutronix.de;
	Tue, 18 Jun 2024 08:14:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJS70-00082k-9F
	for lore@pengutronix.de; Tue, 18 Jun 2024 08:14:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FKQjMxsUfZGtRWw/Tzi3UmIFSP1TiXDP4RhkuIdGrHM=; b=Deyi1W5OUQByLDfnbsHxQmIkCJ
	o6PpJ139hwkxBniVIfLToFY8DbMMNw+LbErPAlqG9Qc0wlUYcWD71A4Ttp4/wSCwlxthkmJUy91lf
	olDK8PT64whMMFN7TrpSwGTIQ7+h6HXVCbC9xkmkwAokKtl1nFtQST6pqbmG6GiPpp4yuO0rqQRKl
	E+iVrUVXfqFXngnwSXUmQCZpAsylnxAvCbdeGRxIBuOiMINoV0cPEHHN7W2aQeQAHeRU+7lZszod3
	pAWxIk/GBQUzvw9fAtEQrfmJDA6OdM3V6MHCEdYvsGTcyrfeIIQ50NyBZjKdNDcuvx7acBE/NLdIX
	f6arejQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJS6M-0000000DkwZ-2PUX;
	Tue, 18 Jun 2024 06:13:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJS6F-0000000Dkvh-3uZJ
	for barebox@lists.infradead.org;
	Tue, 18 Jun 2024 06:13:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJS6D-0007vz-Ui; Tue, 18 Jun 2024 08:13:45 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJS6D-0039rm-IC; Tue, 18 Jun 2024 08:13:45 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJS6D-00G2XX-1c;
	Tue, 18 Jun 2024 08:13:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240614133603.2452891-1-s.hauer@pengutronix.de>
References: <20240614133603.2452891-1-s.hauer@pengutronix.de>
Message-Id: <171869122549.3822978.7856249240200139957.b4-ty@pengutronix.de>
Date: Tue, 18 Jun 2024 08:13:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_231348_098856_8270DB2B 
X-CRM114-Status: UNSURE (   7.31  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/3] mtd: nand: trim down NAND layer a bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 14 Jun 2024 15:36:00 +0200, Sascha Hauer wrote:
> The NAND layer has become bigger with the last update causing size
> constrained configs like am335x_mlo_defconfig to fail because the binary
> gets too big.  Squeeze some bytes out of the binary space for such
> configs by disabling some unneeded features.
> 
> Sascha Hauer (3):
>   mtd: nand: Kconfig: whitespace cleanups
>   mtd: nand: make exec_op optional
>   mtd: nand: make interleaved placement optional
> 
> [...]

Applied, thanks!

[1/3] mtd: nand: Kconfig: whitespace cleanups
      https://git.pengutronix.de/cgit/barebox/commit/?id=eb6429a2b87b (link may not be stable)
[2/3] mtd: nand: make exec_op optional
      https://git.pengutronix.de/cgit/barebox/commit/?id=0958c15cebd7 (link may not be stable)
[3/3] mtd: nand: make interleaved placement optional
      https://git.pengutronix.de/cgit/barebox/commit/?id=d1fe68f1b010 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



