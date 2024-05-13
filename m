Delivery-date: Mon, 13 May 2024 11:31:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6S1n-00CNAg-1C
	for lore@lore.pengutronix.de;
	Mon, 13 May 2024 11:31:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6S1j-0008KM-5J
	for lore@pengutronix.de; Mon, 13 May 2024 11:31:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TGJnWUnujvk1rIy498QNI+nbKApQGwjnuM5ed1kxVzQ=; b=2lBIZeFmVPxkyfuM6FvlrMLMso
	PKEF4eXL4j8VzGEhT1EP2AFQkL42F6YuajMzL32anX5YYgdT+wZfEvo9h14fuLHPevqF1U+uk9QKP
	rxmtwfDNwNlagggZ2pBxGOTWA5Z9gv9OanOJyur+UUvJ43GWwHzZv46PCrjYbyg+bgEATnsIHzHhx
	Q0JfCBs9Hfy70enQUY/4AYtfyQcFzHvJf9PVePoaO98vnmqaq0vqkFC9yaj7fCAmc3l9C0ZODk2jx
	2lZOOWYQ0uBaK7hjgq/Wb8TopxJEaUNIaoyK0Y2mcHZZirfM6Q08+scIgKsYZv2tqiQc+tKudZJwx
	GuyOrKaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6S16-0000000COqO-2SdT;
	Mon, 13 May 2024 09:30:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6S12-0000000COpX-2dbq
	for barebox@lists.infradead.org;
	Mon, 13 May 2024 09:30:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s6S11-0008CY-0b; Mon, 13 May 2024 11:30:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s6S10-0018vO-KR; Mon, 13 May 2024 11:30:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s6S10-00Evc1-1q;
	Mon, 13 May 2024 11:30:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240415053430.370061-1-a.fatoum@pengutronix.de>
References: <20240415053430.370061-1-a.fatoum@pengutronix.de>
Message-Id: <171559263856.3558040.82399139400446645.b4-ty@pengutronix.de>
Date: Mon, 13 May 2024 11:30:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_023040_721531_33C58705 
X-CRM114-Status: UNSURE (   6.21  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: gadget: ums: add support for optional partition
 flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Apr 2024 07:34:30 +0200, Ahmad Fatoum wrote:
> File lists for fastboot support a 'o' flag to silently skip files that
> don't exist at bind time. Add support for the same for USB mass storage
> gadgets as well.
> 
> 

Applied, thanks!

[1/1] usb: gadget: ums: add support for optional partition flag
      https://git.pengutronix.de/cgit/barebox/commit/?id=2487ca3fba71 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



