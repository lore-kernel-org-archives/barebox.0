Delivery-date: Wed, 13 May 2026 16:06:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNAEk-001HSx-1X
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 16:06:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNAEj-00046R-Td
	for lore@pengutronix.de; Wed, 13 May 2026 16:06:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HLoZKYD+S4L7/cVsDjTfnxIdlN1x6PGSd7LCbzyeGys=; b=LuFSYIx/nQRczC9fZ+mamtrIic
	gzKa8Vl9DXa7muKWzbZfitaPyKbH4G4MIAzw30vt/T4c/ukts2bGN6bEbn0lycTO1+v8ZL8yktLtb
	Ayq2PppN241i6zcYrdGD0OnAK5M6km6x9oYMwRq2jWFgtr5GM5IzriuHatQrHlqJOGOVtNw+TLo5W
	8gs9aBgPyVCkNjliJU88V3dPoV3or6Uo1uTjee9miDv/9rseF6bOmql3WqakCoI4/tHrWwQieaO+f
	wFXPXcF4tyHfdTLXua5LBIS1L6YMMG3cBaToGJIRCyfavnl55cQijGV3L3uz2UaHC4Agw5veZQhQG
	EnX/T+pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNADF-00000002s8M-21B9;
	Wed, 13 May 2026 14:05:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNADE-00000002s80-3oPl
	for barebox@bombadil.infradead.org;
	Wed, 13 May 2026 14:05:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=HLoZKYD+S4L7/cVsDjTfnxIdlN1x6PGSd7LCbzyeGys=; b=MFr2UOxZM18i5OIeOENgL8OAP6
	EEE8N+jURfUjswr9BR6Ot3nGt3NfzfzlaMMZ7YJN7snsbVYLM8+cF9ib2Yp7AfmFj+HbijTeuB8ow
	Nc20infu88QOHOe3kfDfq3j077Gru1YW/I4qzwamorslWU2pfIIGSCqmhilhqZFiZtzTn8vVfJ91S
	DhUZ5+4t/QalzxiJC0hL6AiEyDLJ7OMbQp6KQP69VjtKu92cX4W3PqtHWW1XnBJ30aL9s9E3LYrGS
	bY/YgNogyOuY3IkpDs9BWC+x7svvEW/+xPYOsAa7poCZCYSd8ED9XwCnauRlDvMDul+g+JvFMemOV
	QZ/n9EMQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNADB-0000000074e-284t
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 14:05:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNADB-0003Z9-CM; Wed, 13 May 2026 16:05:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNADB-000bnm-13;
	Wed, 13 May 2026 16:05:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNADB-00000001DWn-17Vo;
	Wed, 13 May 2026 16:05:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20260513-socfpga-kconfig-v1-0-6b935776f0ac@pengutronix.de>
References: <20260513-socfpga-kconfig-v1-0-6b935776f0ac@pengutronix.de>
Message-Id: <177868112126.290302.15387190465259725156.b4-ty@pengutronix.de>
Date: Wed, 13 May 2026 16:05:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_150521_955579_E578F149 
X-CRM114-Status: UNSURE (   6.21  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] arm: socfpga: cleanup Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 May 2026 14:20:16 +0200, Michael Tretter wrote:
> Reorganize the SoCFPGA configuration menu. Move the entire configuration
> into a submenu, move the ARCH for all SoCs above the board options and
> move special features that depend on the ARCH below the boards.
> 
> Patch 1 fixes the formatting of the Kconfig file and replaces
> spaces with tabs.
> 
> [...]

Applied, thanks!

[1/3] arm: socfgpa: use tabs for indent in Kconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=6852489ce376 (link may not be stable)
[2/3] arm: socfpga: reorganize Kconfig menu
      https://git.pengutronix.de/cgit/barebox/commit/?id=4bd5ed8785eb (link may not be stable)
[3/3] arm: socfpga: regenerate defconfig files
      https://git.pengutronix.de/cgit/barebox/commit/?id=759c82d32c53 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



