Delivery-date: Mon, 28 Oct 2024 13:16:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5Of9-001qoI-2D
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 13:16:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5OfA-0007Cy-7C
	for lore@pengutronix.de; Mon, 28 Oct 2024 13:16:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ebsqhJ17y2AVqF4V2FxIBkvKWY2kh2nP+C5c4KZ5eGY=; b=o5FTum0nIBY8bgAG3ltOBEFoQ7
	rcbt1tXWub4UORmDrvwgJA+oa7hL31Y5gqdjaqJAcOLs4AWKX8esF/J3XkYzy+YEj4AfzLD/2f31n
	KpVcqP0Wn+cJWAhESJZig/T4dsqoM4VeFXn5gQNMzYKuSFv9Sp58NSu0//SS7oeLXVSANkP4iGigl
	YXgWL5BcZA9CZw+ry/VkWw72hkO4xoCnbx3zbwQvls7jN7LAiJEx4cqUVBzZUOJfxnlTF7/wMTgsf
	Vo5JQWFLHHQyVH+ExFQsjtxdNeojbJ5VbauNSsslTqSpONnUP140TYhIgl5BC9fZ6goNUgsOEV6OY
	RSskqSbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5OeY-0000000AhyV-2yKa;
	Mon, 28 Oct 2024 12:15:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Oax-0000000AhN5-3QO4
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 12:11:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t5Oar-0006gy-E9; Mon, 28 Oct 2024 13:11:33 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t5Oar-000qNP-0J;
	Mon, 28 Oct 2024 13:11:33 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t5Oar-000kDm-02;
	Mon, 28 Oct 2024 13:11:33 +0100
Date: Mon, 28 Oct 2024 13:11:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <Zx9_dHttbS4tZRpW@pengutronix.de>
References: <20241025-i2c-busnum-v1-0-332d9257eafe@pengutronix.de>
 <20241025-i2c-busnum-v1-1-332d9257eafe@pengutronix.de>
 <CAP1tNvR0tYRQVY63bUwB24gAP4-UWQvP1v=GWZs_GkD0vBUiNg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvR0tYRQVY63bUwB24gAP4-UWQvP1v=GWZs_GkD0vBUiNg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_051139_962289_B2A42AB6 
X-CRM114-Status: GOOD (  13.25  )
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
Subject: Re: [PATCH 1/3] i2c: set adapter.nr explicitly to -1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Oct 25, 2024 at 04:43:35PM +0300, Alexander Shiyan wrote:
> Hello.
> 
> Last time I didn't do it completely :)
> https://lore.barebox.org/barebox/20230714051510.2304-4-eagle.alexander923@gmail.com/

Oh, I wasn't aware of this anymore. I am feeling lucky, none of the
comments I made back then seems to apply to my own patchset ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


