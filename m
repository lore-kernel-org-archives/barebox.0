Delivery-date: Mon, 01 Jul 2024 12:10:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sODza-000Svm-0a
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 12:10:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sODzZ-0006k4-LT
	for lore@pengutronix.de; Mon, 01 Jul 2024 12:10:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MImS0h4XC06MzD9NxDrROnwKcv4W478U3ylXilJ/s88=; b=IGkzD4+B6AVfQqKWwkPuE6Jsl6
	ArMsglrDTiKKtwxF1ehDplSes9OV2/gdoEt/dZp7X8NPjFDofpEMmrFHTgnJ0zoOr8LjXlMdUExH6
	u4TupnfIGJEFCXunQ+npk0Rwq5/Skf5XW+GazYd6m4TNlZPMcjjl0TGFIx5l70uWh9AW3rHaCSfXe
	xrPCO3hsm4L6BXdteZ/UyIt4jFfug9IpWheGIsXYS3qk7zxK6J8SuMK6G9UUnaOeq4u5Uw7mm3U3W
	AZZ4sBxP8Z9wMVMEsM/XsJDd9SipmV7LnQ45O3+XGpFzQr6HMhDgnwkviFE1OwZfL64UThpeLFyrC
	b/6j9pPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODzB-00000002a1e-0etk;
	Mon, 01 Jul 2024 10:10:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODz7-00000002a0e-3PcA
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 10:10:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODz6-0006eT-Dr; Mon, 01 Jul 2024 12:10:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODz6-006LUF-0w; Mon, 01 Jul 2024 12:10:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODz5-00CmDz-37;
	Mon, 01 Jul 2024 12:10:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240701070724.134251-1-a.fatoum@pengutronix.de>
References: <20240701070724.134251-1-a.fatoum@pengutronix.de>
Message-Id: <171982860796.3044723.15304860272778512356.b4-ty@pengutronix.de>
Date: Mon, 01 Jul 2024 12:10:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_031009_888522_65463E37 
X-CRM114-Status: UNSURE (   6.80  )
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
Subject: Re: [PATCH] mci: core: drop unused parameter members from struct
 mci
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Jul 2024 09:07:24 +0200, Ahmad Fatoum wrote:
> We actually never check the device parameter points again in the MCI
> core, so we don' need to keep them in struct mci.
> 
> 

Applied, thanks!

[1/1] mci: core: drop unused parameter members from struct mci
      https://git.pengutronix.de/cgit/barebox/commit/?id=88d699393148 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



