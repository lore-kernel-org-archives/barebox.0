Delivery-date: Mon, 13 Apr 2026 16:35:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCINZ-00BkOs-2U
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 16:35:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCINZ-0000Qy-8o
	for lore@pengutronix.de; Mon, 13 Apr 2026 16:35:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZTYyvSOdq9xIVJ4sheYlbKDfHu3pkL8oTIMadBjCGU8=; b=iK7Nur9jU3J3W5dwL6A1+AHJRE
	XStMLyJ5XizlI8a/4Moc06tNS+OzbmtHlYkGUbkrhy7rRuYhAW8QKA4cyDig/zpWIG2mCPQSe4srW
	osz/ShYk/IyUcZ3wUP5sTCa42NEaDD+g97PvSg4JzmcXRxcLzJ4PH9hoHrpzfw9iZbhJve86OndOc
	PO30PxzpkegSKl6wNm8ktO2V9pLjW6/rqMeXon+YU2HCN+3zoKCqt4aeC50L1e77D5BSxGOiy8NbP
	UEWSZe9vheOV9q4lD2EazB5a/nWgN/Zb7cbCl03Js8uEzPjUMFWsji6kL17f55+vgGdEL8Ez80yFc
	GPI9HcuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCIN2-0000000FsCh-2FLc;
	Mon, 13 Apr 2026 14:34:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCIMz-0000000FsC6-2QGP
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 14:34:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIMy-0000FY-3p; Mon, 13 Apr 2026 16:34:32 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIMx-005Bkb-2x;
	Mon, 13 Apr 2026 16:34:31 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIMx-0000000Eyjx-3a9k;
	Mon, 13 Apr 2026 16:34:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260320135653.3603064-1-s.hauer@pengutronix.de>
References: <20260320135653.3603064-1-s.hauer@pengutronix.de>
Message-Id: <177609087185.3570044.16437307862760587056.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 16:34:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_073433_628710_6C5271FE 
X-CRM114-Status: UNSURE (   7.23  )
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
Subject: Re: [PATCH] mci: register class device before card detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 20 Mar 2026 14:56:53 +0100, Sascha Hauer wrote:
> mci_card_probe() notifies OP-TEE about the presence of a RPMB device
> which in turn tries to read from it. The OP-TEE request will end up
> in mci_get_rpmb_dev() which iterates over MMC class devices in order
> to find the correct one. Call class_add_device() earlier to make sure
> the new device is available at that time.
> 
> 
> [...]

Applied, thanks!

[1/1] mci: register class device before card detection
      https://git.pengutronix.de/cgit/barebox/commit/?id=df83048c4a74 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



