Delivery-date: Tue, 05 Aug 2025 11:34:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3r-007FRZ-0l
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:34:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3q-0003Ey-6w
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:34:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PNI3GDYcvOLqBafzUe3pjD/58UeIMyvIxGyMd6JX8Ho=; b=B+XNXTMr3tGfALRtC0sjvRKkhN
	X3ScJ+nvOKz+yIPd3IZUn5/MlW21CfSboFbrmwiKmgTJByBciUFL/Kx57ZetJGsFnu6tClsNwf4jD
	lIZTQPiFoEtlXYjnirvTce0UJVBN/LWex0XT22KYEpHrpFUTCcULC7VAMsolhmJxXXyF1Ygsx8hT4
	sw1lTXZr1w6GRtv43OgXa+tTTqTUeQXCiGJBLzSdP/dtHq0n/sJhaTp8npPdRpXXceIjcs10Okiez
	XGEozKQUUwnq4f5kfdzlR14CWRqrvm0X7FAGaNIGxbXzzipMgtgxM9iV98EekgkxM9uFb1b7bY7DQ
	jY46qlbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujE3D-0000000CMf5-1VM2;
	Tue, 05 Aug 2025 09:33:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDj4-0000000CJx6-1moh
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 09:12:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDj3-0000P4-2v; Tue, 05 Aug 2025 11:12:53 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDj2-00C17Y-2v;
	Tue, 05 Aug 2025 11:12:52 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDj2-00EiHR-2k;
	Tue, 05 Aug 2025 11:12:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250710104949.1706109-1-a.fatoum@pengutronix.de>
References: <20250710104949.1706109-1-a.fatoum@pengutronix.de>
Message-Id: <175438517284.3506762.15384499372528121763.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 11:12:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_021254_473055_CAC95E53 
X-CRM114-Status: UNSURE (   6.14  )
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
Subject: Re: [PATCH] partition: fix kernel doc for region_identical
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 10 Jul 2025 12:49:49 +0200, Ahmad Fatoum wrote:
> The parameters in the comment are correct, but the heading wasn't.
> 
> 

Applied, thanks!

[1/1] partition: fix kernel doc for region_identical
      https://git.pengutronix.de/cgit/barebox/commit/?id=7afd9b64ee8a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



