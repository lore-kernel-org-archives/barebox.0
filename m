Delivery-date: Mon, 01 Jul 2024 12:10:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sODzA-000SvD-1c
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 12:10:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sODz9-0006ez-Us
	for lore@pengutronix.de; Mon, 01 Jul 2024 12:10:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XDGFrimqWd29H/F4pncwu4vLQjEgeECNOS8i3Hlp0Ss=; b=ZbviAvFspQVdRGhb2I6+MYWfq4
	TTwHV+88P5JhZA50DngTJr1NYm/g/JGFAt1egUlvsoIMMVXG/mVZ3vCn81AZ9e8ANHezdAJtxSFVM
	Htoz2a3nqrVfFNwqw2PBmOCrWqCsvg2LYHg2wTtNny2BaZxxOHvT92rGA8/I1nGwYcHTQCO++F+IN
	xAHr2x75MR/+ONoUqHhk4yywAzDZPluMtMkQGtHVvqV9BLQpxDn7k98fwUlBb8j+FkFhmaV4QyI0x
	kS+JeEcNSBb7hnPZPh7xNZVRaqlhaXzK1OmKnFrgjg9GRaFWMUNbRK5pM9T48VeEDcKhJ48V3BOAC
	+KUtQsFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODyj-00000002Ztf-1tuw;
	Mon, 01 Jul 2024 10:09:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODyf-00000002ZsY-2dro
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 10:09:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODye-0006aT-5Y; Mon, 01 Jul 2024 12:09:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODyd-006LUA-Op; Mon, 01 Jul 2024 12:09:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODyd-00CjyQ-2I;
	Mon, 01 Jul 2024 12:09:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240701071223.137695-1-a.fatoum@pengutronix.de>
References: <20240701071223.137695-1-a.fatoum@pengutronix.de>
Message-Id: <171982857970.3036538.15448261795673017460.b4-ty@pengutronix.de>
Date: Mon, 01 Jul 2024 12:09:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_030941_702268_0E5C027C 
X-CRM114-Status: UNSURE (   6.91  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] include: gfp: move flags into <linux/gfp.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Jul 2024 09:12:22 +0200, Ahmad Fatoum wrote:
> The GFP arguments are unused in barebox and are only used to reduce
> churn when porting kernel code. To make it easier to port code using
> them in headers, move them to <linux/gfp.h> like Linux does.
> 
> 

Applied, thanks!

[1/2] include: gfp: move flags into <linux/gfp.h>
      https://git.pengutronix.de/cgit/barebox/commit/?id=c8f11ea0b782 (link may not be stable)
[2/2] include: common.h: move barebox version/info declarations to new header
      https://git.pengutronix.de/cgit/barebox/commit/?id=d0465fc42387 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



