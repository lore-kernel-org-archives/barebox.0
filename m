Delivery-date: Fri, 31 Jan 2025 14:21:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdqy3-006l66-0f
	for lore@lore.pengutronix.de;
	Fri, 31 Jan 2025 14:21:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdqy3-0007Wp-C1
	for lore@pengutronix.de; Fri, 31 Jan 2025 14:21:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0bREhMp/WYL/VzZxlQQbBqj1Tu8LrE6yA+cXWXjYjWo=; b=4mEKNEnAuGqtEftH+L7slLN/8h
	IWPFoTkrJbi4Hz4hoeNkIX7rm+kD3hZrblDC3UgxMIt6BEsRkazW6s7AY2Pi/Mg99CKtyJPOvWulJ
	Ov+bRbmMrNROyjWF4XGcmUNJXCdYfMl9IESBCeP78LekJcYhQ6l0Jt/13vkJI+bbQd6BqnJlMKbIg
	aD0nyzO8NWzeVFlyJHXaj2ZM569VknZdCy460FUH64A1iaqDLSLeRj7GbNzO7ToWys0Bro0VnoCII
	/dLirMZZeln3K6A79n4YRoHNR/utFLv0EiMrrJK2yYMT6yRihYZBPtAjoXhIaZhmmoCH/DGehvW1Z
	RA76fr7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdqxe-0000000Ag0p-0rqy;
	Fri, 31 Jan 2025 13:21:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdqxb-0000000Ag0N-1KSy
	for barebox@lists.infradead.org;
	Fri, 31 Jan 2025 13:21:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tdqxa-0007Qg-6j; Fri, 31 Jan 2025 14:21:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tdqxa-002o0E-01;
	Fri, 31 Jan 2025 14:21:26 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tdqxZ-00HYm9-31;
	Fri, 31 Jan 2025 14:21:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250131082131.37538-1-eagle.alexander923@gmail.com>
References: <20250131082131.37538-1-eagle.alexander923@gmail.com>
Message-Id: <173832968593.4185240.9315213846778525407.b4-ty@pengutronix.de>
Date: Fri, 31 Jan 2025 14:21:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250131_052127_358990_1C7D6A40 
X-CRM114-Status: UNSURE (   4.77  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arch: treewide: Cleanup generated devicetree overlay
 objects
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 31 Jan 2025 11:21:31 +0300, Alexander Shiyan wrote:
> 


Applied, thanks!

[1/1] arch: treewide: Cleanup generated devicetree overlay objects
      https://git.pengutronix.de/cgit/barebox/commit/?id=cb10f3cb9478 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



