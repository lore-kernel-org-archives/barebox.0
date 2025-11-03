Delivery-date: Mon, 03 Nov 2025 09:44:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFqB6-00EnQ6-2s
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 09:44:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFqB6-0000ra-CO
	for lore@pengutronix.de; Mon, 03 Nov 2025 09:44:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xkoJ6DN8HKaLpP/hmxbIpRHED6jfBYw/GXpGCRVHbDY=; b=e+qNeEirBAuR+RXTkoHdjGHiSz
	Dh73RLjwBO2WNkHRB8meQVtrbwx2vBdmZr+oObZrbxRN6f4nOXBlXUESgbpVJuilwnqkYIcd0bykr
	vJBsczIZV7qR35jp+DPNfVjl+ylULR25LduaBWquXuUfBkddyREYdNtRTbl/nNUDP+MCFEt1gbxsN
	yLFVMJ4uzPHEPkqb0m0cAbePkItaej+GR7Upom1rKrfHpHmilyzoLUL6azCBk815nOgeW9doSjNZW
	IQe9y5OLDXalySs6VJeESRO9hXYPWyyPwDwqNFR1sPA4KnKi01PrjA5olCSmYM4RwDIG8DrMA9G9k
	7msNjbSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFqAb-00000009SOf-38uv;
	Mon, 03 Nov 2025 08:44:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFqAZ-00000009SNt-000Z
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 08:44:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFqAX-0000kS-Du; Mon, 03 Nov 2025 09:44:05 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFqAX-006pTV-0m;
	Mon, 03 Nov 2025 09:44:05 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFqAX-0000000HLvv-2c1f;
	Mon, 03 Nov 2025 09:44:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pfitzner <f.pfitzner@pengutronix.de>
In-Reply-To: <20251029131617.1607191-1-s.hauer@pengutronix.de>
References: <20251029131617.1607191-1-s.hauer@pengutronix.de>
Message-Id: <176215944517.4135830.335633797357065529.b4-ty@pengutronix.de>
Date: Mon, 03 Nov 2025 09:44:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_004407_042380_3518779F 
X-CRM114-Status: UNSURE (   9.70  )
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
Subject: Re: [PATCH] mtd: peb: mtd_peb_read(): move error message to caller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 29 Oct 2025 14:16:17 +0100, Sascha Hauer wrote:
> Move the error message about a failure to read a PEB to the caller.
> In some cases like for example i.MX6 with NAND boot it can happen
> that mtd_peb_read() is called on the NAND blocks containing the FCB.
> These are not protected with regular ECC, so are not readable. The error
> message is expected and harmless. UBI needs this error message though,
> so move it there. Other callers have their own error message already.
> 
> [...]

Applied, thanks!

[1/1] mtd: peb: mtd_peb_read(): move error message to caller
      https://git.pengutronix.de/cgit/barebox/commit/?id=7605338da017 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



