Delivery-date: Mon, 02 Jun 2025 14:35:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM4Ne-002xcM-2x
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 14:35:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM4Ne-0005Xw-D7
	for lore@pengutronix.de; Mon, 02 Jun 2025 14:35:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hAAzcPd31N4pUxpOShqT+r9P6a0rwALjjaOAH7m7fFE=; b=AZ/k1vBzOWbwPKtXLicaSL2MDO
	hiFU6ogdBKUpqvQiayr3pcNf7v6vsLzblvIEM4sMc0dOP9p8/tzMx1xbrVhvBDr+rF9bFpqK0amzM
	07mBl/ThnZEyuISE07a/4bEjP9/WgmAnlCL3Fn9h2M5cMg8VxG3PJGRqOsjnoGislwIhtCWH4ONSH
	8Gtk8hRyDd6yXaWbVc1G2rqobSr/VefmgGK7qUfPYV0AlWQ7CPBjGxl5pvplLdin4ta7N8OBJMqua
	jWSaBBG7WQUg4j7aAqXdkrV+Wd46OAr2YGOtVE1aJYK97IZeKXe4/94GIX8DBameyQbd9rZCfkjUo
	k3pRXPHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM4NG-00000007NGy-1nNB;
	Mon, 02 Jun 2025 12:34:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM4Iy-00000007MpQ-2jHS
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 12:30:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM4Ix-0003fn-Dt; Mon, 02 Jun 2025 14:30:15 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM4Ix-001S9w-0m;
	Mon, 02 Jun 2025 14:30:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM4Ix-004GGy-0Z;
	Mon, 02 Jun 2025 14:30:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250602-cdev-part-fixes-v1-0-814d9aa195ed@pengutronix.de>
References: <20250602-cdev-part-fixes-v1-0-814d9aa195ed@pengutronix.de>
Message-Id: <174886741517.1015787.10040359069867169399.b4-ty@pengutronix.de>
Date: Mon, 02 Jun 2025 14:30:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_053016_698414_222FF628 
X-CRM114-Status: UNSURE (   8.39  )
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
Subject: Re: [PATCH 0/2] cdev partition fix
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 02 Jun 2025 10:51:30 +0200, Sascha Hauer wrote:
> cdev partitions are cdevs themselves, but they are handled internally in
> the devfs-core. cdev partitions should not be passed as context pointers
> to the cdev ops though, because the drivers might do a container_of() on
> them to retrieve their driver data. Pass the original cdev the driver
> has registered as context to the ops
> 
> 
> [...]

Applied, thanks!

[1/2] cdev: pass master cdev to cdev ops
      https://git.pengutronix.de/cgit/barebox/commit/?id=08e276fbe412 (link may not be stable)
[2/2] nvmem: Drop now unnecessary partition quirk
      https://git.pengutronix.de/cgit/barebox/commit/?id=df7bfd5b4fe4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



