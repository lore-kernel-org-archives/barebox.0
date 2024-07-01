Delivery-date: Mon, 01 Jul 2024 14:36:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGGd-000VCZ-05
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 14:36:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGGc-0002aT-FM
	for lore@pengutronix.de; Mon, 01 Jul 2024 14:36:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HsO7ZNpOzSePEzgbcKfV97cwkqaZrAFM+oksJNtEY/c=; b=AZ7JVBcUHUmBtNzT3pHvF5luH9
	s+T7eeDOpPYZNrQgeSsNIh39o8D/7s2qcrEyBYQNCiMIkWl+owp29Ryl/aw6PQ9pXDc9wLkDRhniG
	q8EafbLO6vZ7iblues2pKCHf9nURcA2FOxMX/+tkNy1j8vanRVicjJfd1iR66ZrXpu6HvgNQ215cD
	o+MRcT2DiHxWm9TaFBqgY2PuCurc61fHvsUungD/zEKeYdX6rPdw8uRa4SRp5UC8OD4UxYtHR9KB0
	EELY9FuZTRHNaTND4HrwYMQ5lklsj+EfNngtyW3g1FnrFXMgY3TDXanykrdcBm+lcQR6BYEFJjsFs
	fg/Ad9XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGGA-00000003Fif-0yHk;
	Mon, 01 Jul 2024 12:35:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOFrN-000000033z4-0Hun
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 12:10:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOFrL-0000qI-5N; Mon, 01 Jul 2024 14:10:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOFrK-006Mvj-P9; Mon, 01 Jul 2024 14:10:14 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOFrK-006C8a-2J;
	Mon, 01 Jul 2024 14:10:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240620125548.464201-1-a.fatoum@pengutronix.de>
References: <20240620125548.464201-1-a.fatoum@pengutronix.de>
Message-Id: <171983581471.1476488.13607473776158563590.b4-ty@pengutronix.de>
Date: Mon, 01 Jul 2024 14:10:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_051017_148110_552854C5 
X-CRM114-Status: UNSURE (   7.45  )
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
Subject: Re: [PATCH 1/2] fixup! base: add class device support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 20 Jun 2024 14:55:47 +0200, Ahmad Fatoum wrote:
> base: class: fix class_remove_device to not corrupt the class list
> 
> class_remove_device is supposed to remove the device from the class, not
> remove the class from its devices.
> 
> 

Applied, thanks!

[1/2] fixup! base: add class device support
      https://git.pengutronix.de/cgit/barebox/commit/?id=f43bff7f39fd (link may not be stable)
[2/2] fixup! net: register eth class
      https://git.pengutronix.de/cgit/barebox/commit/?id=f4f7d0e3257c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



