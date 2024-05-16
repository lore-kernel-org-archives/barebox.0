Delivery-date: Thu, 16 May 2024 08:09:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7UJ1-00GrUi-1O
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 08:09:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7UJ0-0006aK-S4
	for lore@pengutronix.de; Thu, 16 May 2024 08:09:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ihIpVa8ayIBVD8xBGluBDkmI9IWKA66R57WXlF9mb8w=; b=x/Hr1NHm6V3b12xLqUzyDMEc1Q
	e3227TrjCtsNZsDudEc5bgba2SM3Ujelu21JL4UbfNlvio6LLf6Qa2NVT93MgLMzeMY0ek4KwZg5B
	J9TFPNsqtN+2td6+9iKbs4vQIw+tPRszUQ/kA7uiovEh/LLoc+lIttSLu7GMQfbJ6uEfQfxBaw3VY
	rTXmVahtAJQW7ew4U6/wfW5JhwI1SAzMC7mt/UOv68F+ov1j+tkzFSmX3F2ebZBb26zC5QQZVRMo0
	h5tYy9xLprfof6E+YNRGkJye6IARd0E/BKy4O1vQoNVlmsz8FEuYgp2E2EPHYl3/a2WEUR9ERd8Fb
	t9Uhpt0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7UIb-00000003pPo-1gpR;
	Thu, 16 May 2024 06:09:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7UIY-00000003pPK-02m3
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 06:09:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7UIW-0006Qq-Ax; Thu, 16 May 2024 08:09:00 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7UIV-001fIR-Us; Thu, 16 May 2024 08:08:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7UIV-00BSAk-2s;
	Thu, 16 May 2024 08:08:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240515111902.284612-1-a.fatoum@pengutronix.de>
References: <20240515111902.284612-1-a.fatoum@pengutronix.de>
Message-Id: <171583973988.2729881.5718788485800394239.b4-ty@pengutronix.de>
Date: Thu, 16 May 2024 08:08:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_230902_088161_8AC262FC 
X-CRM114-Status: UNSURE (   7.79  )
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
Subject: Re: [PATCH] Documentation: pstore: add some information about
 interfacing with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 May 2024 13:19:02 +0200, Ahmad Fatoum wrote:
> The help text erroneously states that CONFIG_FS_PSTORE_RAMOOPS_RO
> disables writing completely, but this is not correct: It merely stops
> barebox from zapping log content previously written by Linux.
> 
> The Kconfig help text is correct, so adjust the documentation to reflect
> that and while at it, add some more information about how to access
> pstore in Linux.
> 
> [...]

Applied, thanks!

[1/1] Documentation: pstore: add some information about interfacing with Linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=7deedc63739d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



