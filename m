Delivery-date: Mon, 03 Nov 2025 09:57:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFqNd-00EnZZ-0N
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 09:57:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFqNc-0002Ta-KM
	for lore@pengutronix.de; Mon, 03 Nov 2025 09:57:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7WEAYm1/DugkDOs6HLM8xNvk53RoVfXMUsfPvAvSCtg=; b=1tpKptnSWwUSsfwq9so6d02AGc
	kaybWxV7XGM1ygyH6PTXOiv/7/A2dCm0mHGzbsRXG9gPpohPJTwZFuSFD3JUkTZjfyefIxVdZThcA
	9+zsXHaNUwN06713LKKIYlmh+yv5UraHo72+D3WkbefI0ssY24nVUOvRci8Rm6Mx8vj023zNx1sE/
	+n+LdL5vWPN0qFfQIEbX8Nkk1LRzZ73sxuU9iDrTgusIxFxwOPUiBIwlakVHLbJGhXuE88fceoWtz
	HKfGthy5wN1iir4WVFZ10a1lDD+DFER9mvL/DAQKRg5AjW4t5+ggXLIuj8S2M4H6MzIwHD/xjZqJ/
	AvewpB7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFqNH-00000009TXz-1KFu;
	Mon, 03 Nov 2025 08:57:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFqNE-00000009TXB-3NMY
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 08:57:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFqND-0002NX-Cc; Mon, 03 Nov 2025 09:57:11 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFqND-006pVI-0f;
	Mon, 03 Nov 2025 09:57:11 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFqND-0000000HNpP-2UuO;
	Mon, 03 Nov 2025 09:57:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251027143454.1278153-1-s.hauer@pengutronix.de>
References: <20251027143454.1278153-1-s.hauer@pengutronix.de>
Message-Id: <176216023114.4143114.17369179127656278598.b4-ty@pengutronix.de>
Date: Mon, 03 Nov 2025 09:57:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_005712_847266_91EE38D1 
X-CRM114-Status: UNSURE (   7.60  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: multi_v8_defconfig: enable more rockchip stuff
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 27 Oct 2025 15:34:54 +0100, Sascha Hauer wrote:
> Enable the Rockchip PCI driver along with some PCI ethernet driver for
> different Radxa boards. Also enable the Rockchip SPI driver needed to
> access the PMIC on the Radxa-Rock5t.
> 
> 

Applied, thanks!

[1/1] ARM: multi_v8_defconfig: enable more rockchip stuff
      https://git.pengutronix.de/cgit/barebox/commit/?id=26851753141b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



