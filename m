Delivery-date: Tue, 13 Jan 2026 12:05:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfcDR-000rHg-2o
	for lore@lore.pengutronix.de;
	Tue, 13 Jan 2026 12:05:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfcDQ-0002Ue-TS
	for lore@pengutronix.de; Tue, 13 Jan 2026 12:05:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G2X7H8FeF8So7JHbRnzAt3MwKeuB4w+sy6y36AycdX4=; b=oXI232xSFsPcYtpbkUNFCEfZx1
	K/FVOpoQAaO32v7DM0c/0HbgeTW78YPVM1ZXmVb7Y8nhkJtSdViRCATQecuEbK6chS/NLp3JffE+K
	NwqyyYzZJLfp/UTcIZM7I1QxM/PTJcYKN9xDMV/QD8HxtbcRAXgxXyHn94hIfbF3WR0GyR3MlDJ+N
	8a32Yd/xeMtVPKyjP8m9OzsfwSXqzqMIo11yv7iHKWhL1DZoJpnlpLe3S7EfI1UVrd7CD9/vdCc0n
	NHctfwDwuYFjzjh9+xwYy2nmU1p2CRMswYFgM8PkUMVQWbXxWxuWZYdFlcbyu86bjnyDix3Zp4p4E
	cNVvKAIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcD0-00000006zFI-44dU;
	Tue, 13 Jan 2026 11:05:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcCy-00000006zDw-2FbE
	for barebox@lists.infradead.org;
	Tue, 13 Jan 2026 11:05:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcCw-0002IK-Nq; Tue, 13 Jan 2026 12:05:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcCx-000PRr-0i;
	Tue, 13 Jan 2026 12:05:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcCw-00000005jst-22Z8;
	Tue, 13 Jan 2026 12:05:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260112085137.2950183-1-a.fatoum@barebox.org>
References: <20260112085137.2950183-1-a.fatoum@barebox.org>
Message-Id: <176830230648.1367936.16937142469125904579.b4-ty@pengutronix.de>
Date: Tue, 13 Jan 2026 12:05:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_030509_463367_A7BC1260 
X-CRM114-Status: UNSURE (   7.14  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: test: implement test -s for non-zero size
 check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 12 Jan 2026 09:51:37 +0100, Ahmad Fatoum wrote:
> While we have a lot of [ flags already and even some for bash [[,
> -s to check if the size is non-zero has so far been missing.
> 
> Add it.
> 
> 

Applied, thanks!

[1/1] commands: test: implement test -s for non-zero size check
      https://git.pengutronix.de/cgit/barebox/commit/?id=7181c8c26287 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



