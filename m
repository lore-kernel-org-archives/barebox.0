Delivery-date: Thu, 18 Sep 2025 16:12:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFNP-004UtN-1C
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 16:12:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFNO-000773-RX
	for lore@pengutronix.de; Thu, 18 Sep 2025 16:12:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K39B/jdWwaSWhAlHXE1BACweGykCa+3yQ+oy09wi0q8=; b=hOlxBjPPnQe9mm6rL6+xiMqiWA
	4tdEzRo4Ju9pjJLXicMYKCUng5JKWD/UDDTIgF4eIl1fuIae0g6I5lyp4YC5L2q7uyE4hKxzzHqxM
	PjuyktwOtQWudjIiRcM7r+LNy1q6D6ct612wZLJdVBi1sjHBempSxwz/gKxHZxBtTzJWwYe4rKAae
	Ly0S1adRe42+4+UDtWERvqzNNi3PYcm557xIcz2nz35P4ovZc7OOgY7ZFNCNW1MIvIFul+Nbpm4U/
	WEhzhbwxPns4TvNsMwtzVCNDQBb/qkIokiE7k4lLtVjaCcZ7msod+cO4MPLDUcWDULlTjh22w5pHv
	2GDyXt0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFMy-000000004V2-0Z2M;
	Thu, 18 Sep 2025 14:12:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFMu-000000004TS-3akC
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 14:12:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uzFMt-00071q-CZ; Thu, 18 Sep 2025 16:12:15 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uzFMt-001xCa-0e;
	Thu, 18 Sep 2025 16:12:15 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uzFMt-00Fsl9-0L;
	Thu, 18 Sep 2025 16:12:15 +0200
Date: Thu, 18 Sep 2025 16:12:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: David Picard <david.picard@clermont.in2p3.fr>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aMwTP4-1s7pB1gsd@pengutronix.de>
References: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
 <20250917-boards-enclustra-sa2-add-support-v1-6-2de8f69107a1@clermont.in2p3.fr>
 <aMukQcvHZOMExEzw@pengutronix.de>
 <00327370-bbd5-4e70-863a-c7cb5a801bf4@clermont.in2p3.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <00327370-bbd5-4e70-863a-c7cb5a801bf4@clermont.in2p3.fr>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_071216_891905_A629561F 
X-CRM114-Status: GOOD (  13.29  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/11] boards: enclustra-sa2: read MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 18, 2025 at 04:01:54PM +0200, David Picard wrote:
> Well, I'm not sure. The Linux driver only supports random number generation.
> https://elixir.bootlin.com/linux/v6.16.7/source/drivers/crypto/Kconfig#L487

Look at the driver itself. The OTP area is registered as a sysfs entry
there, see otp_show() and atmel_sha204a_otp_read(). It seems the Kconfig
entry wasn't updated when adding OTP support.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


