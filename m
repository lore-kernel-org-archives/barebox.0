Delivery-date: Wed, 10 Dec 2025 08:10:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTEL7-009pL3-1f
	for lore@lore.pengutronix.de;
	Wed, 10 Dec 2025 08:10:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTEL6-00004q-Vk
	for lore@pengutronix.de; Wed, 10 Dec 2025 08:10:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C8eE60DG9BUo7OpkzALNIct8O+0mAw1etrdts+/oMnQ=; b=UGzIV7xftsA/p22Kv47Dk42Pf+
	N8MJFndDV8oCorVHUG+6vCMAFKZDcAup/UUxGBn2aVc34ZWG9e8M8P5xNeGARSnI6VAinOuStd58c
	eT0ZP2zIBhsUl8LX/6ZnAEEOll2GjSDiH5kmJJqaBmjrDGIXpzWxHZGg+JOfxBf3Z2sskh2qpDh/f
	GT7Y7V8iA6nc2sAimyIN9QWUdNvxm7IWdT493vE6qP5P5f89d57mhHKaEIGuJZTcu+TccV0loL6hm
	QXDht6CHGmP5ro0Kr/kSEDqIAKGiQxq8v9091Eqg++lfdeHrUrWPQqN42LB/qxDilQwaaWKKCoFO7
	fbENY2MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTEKT-0000000FC9T-20he;
	Wed, 10 Dec 2025 07:09:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTEKO-0000000FC8w-3fVu
	for barebox@lists.infradead.org;
	Wed, 10 Dec 2025 07:09:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vTEKM-0008RG-S3; Wed, 10 Dec 2025 08:09:34 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vTEKM-004uoa-2B;
	Wed, 10 Dec 2025 08:09:34 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vTEKM-00000001vF0-2ZK9;
	Wed, 10 Dec 2025 08:09:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251208-nvmem-eeprom-v1-0-41ba588e2f3a@pengutronix.de>
References: <20251208-nvmem-eeprom-v1-0-41ba588e2f3a@pengutronix.de>
Message-Id: <176535057460.458268.18423169816058280554.b4-ty@pengutronix.de>
Date: Wed, 10 Dec 2025 08:09:34 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_230938_287155_E7072955 
X-CRM114-Status: GOOD (  10.10  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] driver name fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 08 Dec 2025 13:00:50 +0100, Sascha Hauer wrote:
> Starting point of this series was that I had multiple EEPROMs on a board
> from which one had an alias "eeprom0" and the other ones didn't have
> aliases. the EEPROMs without aliases failed to register because they
> tried to register themselves as "eeprom0" as well.
> 
> While EEPROMs triggered this series it fixes a longstanding problem in
> barebox: It was possible to register two devices with the same name when
> one device was registered as "foo0", DEVICE_ID_SINGLE and another one
> as "foo", id = 0.
> 
> [...]

Applied, thanks!

[1/4] driver: implement get_free_deviceid_from()
      https://git.pengutronix.de/cgit/barebox/commit/?id=0850fd8e22fa (link may not be stable)
[2/4] nvmem: fix device name setting
      https://git.pengutronix.de/cgit/barebox/commit/?id=f6bf81cfc94d (link may not be stable)
[3/4] driver: fix device name clashes
      https://git.pengutronix.de/cgit/barebox/commit/?id=6e30160425f3 (link may not be stable)
[4/4] eeprom: at24: reserve EEPROM names which have an alias
      https://git.pengutronix.de/cgit/barebox/commit/?id=5d1577f0d3dd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



