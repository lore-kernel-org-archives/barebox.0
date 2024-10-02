Delivery-date: Wed, 02 Oct 2024 14:06:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svy7I-005Mdl-0J
	for lore@lore.pengutronix.de;
	Wed, 02 Oct 2024 14:06:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svy7I-0002Qn-Kt
	for lore@pengutronix.de; Wed, 02 Oct 2024 14:06:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WdNQiN268U7RuhTUcbp9nfMb570b4BGUuLfo/mLK2U0=; b=0gcmbicwgf0yODrfdrJnr8ZYCM
	Fm0VWwpdNdIGtQO1hMOIO4qZ6PYBmAXqatYQccozHLbUW0ncU5WiO9etq+dfYeDT786F9mN7mVRhX
	8XRuFBKg/yN3UpnPdRzxoV31qqtg16nVo2ovxN9S1ICA1KHkIboXmvx2icRcw3NcUzJ56TUkaF4Cr
	oZKEajkEMnwzxK5rQm5jfiaGQEbVzDAKB0KLsDaEkFkbcStD6FjGMo2bR+yMEsj794qfJv5CteNHM
	i81AAj4G0+S2BX7h0cHTRE7n80/GP6f9YTS6WMSqoRaSgfZOM8ei8oDm6wBSrtQiBSZTd/6Y4BxAG
	QPDpRH+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svy6s-00000005mhQ-1Yb3;
	Wed, 02 Oct 2024 12:05:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svy1x-00000005lI8-2FuB
	for barebox@lists.infradead.org;
	Wed, 02 Oct 2024 12:00:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svy1w-0001SX-65; Wed, 02 Oct 2024 14:00:32 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svy1v-0036LY-Pc; Wed, 02 Oct 2024 14:00:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svy1v-00930u-2P;
	Wed, 02 Oct 2024 14:00:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241001191956.2765504-1-a.fatoum@pengutronix.de>
References: <20241001191956.2765504-1-a.fatoum@pengutronix.de>
Message-Id: <172787043174.2155874.6915594486230898748.b4-ty@pengutronix.de>
Date: Wed, 02 Oct 2024 14:00:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_050033_606166_749A8D4F 
X-CRM114-Status: UNSURE (   5.27  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] video: mipi-dbi: reword Kconfig prompt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 01 Oct 2024 21:19:56 +0200, Ahmad Fatoum wrote:
> We don't (yet? ;) have a Direct Rendering Manager subsystem as in Linux,
> so let's rename the option to avoid confusion.
> 
> 

Applied, thanks!

[1/1] video: mipi-dbi: reword Kconfig prompt
      https://git.pengutronix.de/cgit/barebox/commit/?id=f62ba2277676 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



