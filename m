Delivery-date: Wed, 14 Aug 2024 13:09:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seBsN-009VwY-38
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 13:09:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seBsN-0000Km-CU
	for lore@pengutronix.de; Wed, 14 Aug 2024 13:09:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WKAv5JQrfx2vjCNShEgqjv99W5qyqKuTuSrjB3ZaeOU=; b=anyBmMUtJEUXITgVimBejpYJhB
	7aIUd5rIMuXk4UlvJGAh/xpS+aoJvCV/okgwAQc2XNMb8EfP0+niODHLParhGS8+THLqJVdvZpB6u
	gWK/TBxYPZsGgrB0X/UuWhk8a1nLiMThqcFpShO897ofK8b+qeE8aVoPFIiAdY9C/ZEkUo8TCPlJJ
	Qz5JatPThhXDbvCrAqUk+2tA9qvup90RUaUE8upPcArTMpmLqq9GwRbLbDhVzRQqnDOQJ9CknEn7f
	l8577B7CQD38/NqM/ZS0QWDEuu6S/2ozKBuQRY2uDpD/6c9HFikT45+Rf+af02C9SbmgKcifmdRU0
	3MikVk4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seBrv-00000006is5-1hX8;
	Wed, 14 Aug 2024 11:08:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seBrt-00000006irx-4AEe
	for barebox@bombadil.infradead.org;
	Wed, 14 Aug 2024 11:08:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=WKAv5JQrfx2vjCNShEgqjv99W5qyqKuTuSrjB3ZaeOU=; b=NO7V/hX6xMJBQ0nU/UouqbbPwh
	k2onpLaSECf0DzudoyMRxOgvkgbQAVibLJEFZByFnXQW3TbjX99XO/aYIFrbm98kX8iB6vuIJMw79
	zvoZlN2XFzPf5Fnjh8m0lzwFBrSU3TLXx6+qV/VWO3skLxt2+bRKafXwHwAyGd80dRudEpAbTIibn
	sylN7F1up+sjbWeuTpA0IQm8dwilE93Fyb1WaaIW8n6i3+rVOWoPBRBGJjIwTpdCU6pgKG0dV10ZG
	ZDAYMNTm3svzE6bP3HvWUv9xe6vJgdfwNLfpvtc6Xu6B9MXS4vNt3sy+/o1ibQEpjI3LlKtc6PtJI
	SBHHDJFA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seBrq-000000082ty-2iax
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 11:08:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seBrp-0000Hd-Pu; Wed, 14 Aug 2024 13:08:37 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seBrp-000LXq-Cj; Wed, 14 Aug 2024 13:08:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seBrp-005loW-13;
	Wed, 14 Aug 2024 13:08:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240814092424.39878-1-a.fatoum@pengutronix.de>
References: <20240814092424.39878-1-a.fatoum@pengutronix.de>
Message-Id: <172363371732.1374969.17785551373426202981.b4-ty@pengutronix.de>
Date: Wed, 14 Aug 2024 13:08:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_120838_894902_9353DCCE 
X-CRM114-Status: UNSURE (   7.72  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/6] common: pe: fix use of undefined macro for ARMv7
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 14 Aug 2024 11:24:19 +0200, Ahmad Fatoum wrote:
> IMAGE_FILE_MACHINE_ARMNT is not defined in barebox, unlike U-Boot.
> The macro we have is IMAGE_FILE_MACHINE_ARMV7, which has the same value
> of 0x01c4, so use that instead.
> 
> 

Applied, thanks!

[1/6] common: pe: fix use of undefined macro for ARMv7
      https://git.pengutronix.de/cgit/barebox/commit/?id=3b4666d14ca8 (link may not be stable)
[2/6] efi: fs: fix determination of read-only files
      https://git.pengutronix.de/cgit/barebox/commit/?id=e803828a0461 (link may not be stable)
[3/6] filetype: fix else clause indentation
      https://git.pengutronix.de/cgit/barebox/commit/?id=4aeff80d354c (link may not be stable)
[4/6] acpi: fix compilation for 32-bit
      https://git.pengutronix.de/cgit/barebox/commit/?id=4fa3b9d2b64b (link may not be stable)
[5/6] i2c: efi: avoid 64-bit division
      https://git.pengutronix.de/cgit/barebox/commit/?id=4e01eb4889ff (link may not be stable)
[6/6] net: fsl_enetc: fix compilation for 32-bit
      https://git.pengutronix.de/cgit/barebox/commit/?id=62489abd94cd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



