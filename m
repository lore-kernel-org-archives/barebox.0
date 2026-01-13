Delivery-date: Tue, 13 Jan 2026 12:08:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfcGT-000rKO-19
	for lore@lore.pengutronix.de;
	Tue, 13 Jan 2026 12:08:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfcGS-0003GB-Dt
	for lore@pengutronix.de; Tue, 13 Jan 2026 12:08:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A1YeeicpTrP8k6eGtcctnAIORDTQvsF2jOtBMsWI/aY=; b=JhIVr89e+nJijVHo36l4yp0U/W
	buxcaTKj2pEfO4Y67V4+l9ZWtyZlohWCuX0CJcLxIh5eHTmOlTUepxAn+M8ziNZTBuPKpu1CzkEDB
	gINVEdFczY9G8E1w11fmviH8TAjX/+5yMQFGES+uImxgi5kfw/hD09jvkyz+skbpC5gbVRJDrImTh
	S6XCSOsixpCUVkjiXYtLWCHIDmYpC7YsQVvF0a76lLcBB3C+qyq3E8IZvUv1fV+IfuvKfEA7Yi3WZ
	zq2PXeOSr7K4HqIv3zLZkty9Na82yYy3KMSIuLz1SixOjpUizySEOJXaegxnElQkCyTgtW0fS8lag
	f+WrTQqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcG5-00000006zZh-05Jy;
	Tue, 13 Jan 2026 11:08:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcG1-00000006zZM-2x6B
	for barebox@lists.infradead.org;
	Tue, 13 Jan 2026 11:08:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcG0-00038J-2O; Tue, 13 Jan 2026 12:08:16 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcG0-000PeO-1l;
	Tue, 13 Jan 2026 12:08:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcFz-00000006Igr-3P6N;
	Tue, 13 Jan 2026 12:08:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20260109-driveerrata-v1-1-feacda1cd078@pengutronix.de>
References: <20260109-driveerrata-v1-1-feacda1cd078@pengutronix.de>
Message-Id: <176830249580.1501608.4209985518418637720.b4-ty@pengutronix.de>
Date: Tue, 13 Jan 2026 12:08:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_030817_745571_22A38A5F 
X-CRM114-Status: UNSURE (   7.01  )
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
Subject: Re: [PATCH] common: tlv: drop unused field void *driverata
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 09 Jan 2026 10:31:14 +0100, Jonas Rebmann wrote:
> The "driverata" field in tlv_decoder is a mystery. It is not and never
> has been used. Drop the field assuming it has been introduced by
> mistake.
> 
> 

Applied, thanks!

[1/1] common: tlv: drop unused field void *driverata
      https://git.pengutronix.de/cgit/barebox/commit/?id=bb1379d40ebe (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



