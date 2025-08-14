Delivery-date: Thu, 14 Aug 2025 16:17:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYlK-000XBv-07
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 16:17:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYlI-0001jM-TA
	for lore@pengutronix.de; Thu, 14 Aug 2025 16:17:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7OPfH6mLc6rjS/eYtW5x7Op+PwKsAUX/AkxdoDwfOjs=; b=PRyZSWvGkWLoTTLAwbXS70Q0Uo
	f7CzbJkxJLG8TeOpzCB1L7nMRRZOq8n8Lr6B1OFsJC8xpP3nZb9b8SAmmKkAKtvoZmBh4yXIUk9wU
	g8llUoDIW4Hf0yH3j7TEgaeSkjONoMk2nY26hIfkpZWklmSnZL+KXXm4r3/WBD0m7IOqiso52Vm5o
	iULAe8KTpao4BS6UPuZhGLz0gGG4tc67MHZZDZBv2DKrYrMm/+KNI+ynxzJwIacKLgMjTRblzoFIc
	qudx4/7j4fl5y8rHqEjEHMy2gVvJ0Caav/UObE/ZiMTNCKA1uRN2xLOozt/S9MC5OsOAqY0alQSr/
	AXxmbmbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umYl8-0000000HD90-0fM2;
	Thu, 14 Aug 2025 14:16:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umVhc-0000000Ghbd-0QQp
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 11:01:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVha-00029p-Rc; Thu, 14 Aug 2025 13:00:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVha-000EzZ-27;
	Thu, 14 Aug 2025 13:00:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVha-004oKs-1v;
	Thu, 14 Aug 2025 13:00:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20250813-fix-ax88179_178a-dropped-packets-v1-0-2ce605407d0b@pengutronix.de>
References: <20250813-fix-ax88179_178a-dropped-packets-v1-0-2ce605407d0b@pengutronix.de>
Message-Id: <175516925859.1146784.854914479584950571.b4-ty@pengutronix.de>
Date: Thu, 14 Aug 2025 13:00:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_040100_142292_18DED6AB 
X-CRM114-Status: UNSURE (   8.89  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] usb: net: ax88179_178a: sync reset and rx with
 upstream
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 Aug 2025 09:52:19 +0200, Stefan Kerkmann wrote:
> These patches are the result of investigating dropped packages while
> working with an AX88179A based UGREEN USB ethernet adapter. The main
> improvements are bounds and consistency checking in the RX path. What I
> couldn't fix at the moment is that the adapter sometimes stops receiving
> packets after a "warm reset" of the device which doesn't power cycle the
> device e.g. chain loading barebox via tftp without a power cycle of the
> whole USB bus and devices.
> 
> [...]

Applied, thanks!

[1/2] net: usb: ax88179_178a: align rx_fixup with upstream
      https://git.pengutronix.de/cgit/barebox/commit/?id=4827edcf6d9a (link may not be stable)
[2/2] net: usb: ax88179_178a: align reset with upstream
      https://git.pengutronix.de/cgit/barebox/commit/?id=a07c7c40e9e0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



