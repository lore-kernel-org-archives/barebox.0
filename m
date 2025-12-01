Delivery-date: Mon, 01 Dec 2025 10:05:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPzqd-006l9w-0l
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 10:05:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPzqZ-0005hD-0K
	for lore@pengutronix.de; Mon, 01 Dec 2025 10:05:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5+dBTOcIrnLr4Zl1TT1TwbCJ3j1v/MATlVvLrYRTNfg=; b=Bt20HIas3ELX3xTGGjiXgj0t5s
	kBExdrm8x+al2dI1jq+5MLFKmQdNj60n0Din+ZxpVPTJgKepOA1CnHUuxm6nvV8mfnnMKr9MCJifB
	xxeWvcCyiBMrc8g+4yR04pc+e6veGQ9QUa8EQWTwti41J/mmTlxHRuyJ+uKWDLhc0U1Xru2KJ6TLe
	+qI81Tt4YguzlBt3k61RAK6sJ5ZgtbBNS8pi3lbnZWsP37LZpPHWCtTsvUnuL1RdCWU480PB+8Q3N
	q2s2qUz6oZPFqAwZ2cBFdy+efey1aGT7DYCiU9KqCtYiRHXcT3hPfWYRFTOLY24byNVgbFJqspaww
	UBHfkvHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzpn-00000003BW6-3Ib3;
	Mon, 01 Dec 2025 09:04:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzpi-00000003BV9-1MpR
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 09:04:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vPzpg-0005YT-J0; Mon, 01 Dec 2025 10:04:32 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vPzpg-003Pfx-1I;
	Mon, 01 Dec 2025 10:04:32 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vPzpg-00000000aL8-1R7O;
	Mon, 01 Dec 2025 10:04:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251128172158.36324-1-a.fatoum@pengutronix.de>
References: <20251128172158.36324-1-a.fatoum@pengutronix.de>
Message-Id: <176457987234.139679.15637431121724103281.b4-ty@pengutronix.de>
Date: Mon, 01 Dec 2025 10:04:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_010434_366898_4A4F1DEC 
X-CRM114-Status: UNSURE (   6.44  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] efi: payload: image: set LoaderTimeExecUSec for
 kernel images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Nov 2025 18:21:53 +0100, Ahmad Fatoum wrote:
> We already do this for handover, so systemd can show time spent since
> barebox kicked off kernel boot.
> 
> Populate it for the non-legacy boot as well.
> 
> 

Applied, thanks!

[1/3] efi: payload: image: set LoaderTimeExecUSec for kernel images
      https://git.pengutronix.de/cgit/barebox/commit/?id=5a87d9e6f5a7 (link may not be stable)
[2/3] efi: payload: fold setup_header.h into handover.c
      https://git.pengutronix.de/cgit/barebox/commit/?id=a42e9c5f2a6a (link may not be stable)
[3/3] efi: add option to generate vfat file for barebox.efi
      https://git.pengutronix.de/cgit/barebox/commit/?id=b087adf31b7a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



