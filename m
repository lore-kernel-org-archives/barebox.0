Delivery-date: Tue, 13 Apr 2021 00:26:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW50o-0006Az-Fh
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 00:26:30 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW50n-0005cS-Jq
	for lore@pengutronix.de; Tue, 13 Apr 2021 00:26:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=05xj/k8k76/VJDWwZYTbD+ZYtz5+C4FwTE1RDhhiubc=; b=iKgSbV45Gg3uccEOQgvGjB8WER
	Q1LgaqSgIZ/YbsYwQrjxoSTZLQtS0MKRga0vSFyxmc3emcHlLqBWMJp7B/cHPW0wKugY5TjLqplK4
	j3iEuIDd9ffshbL3LOtKsN/thek/bFl54h8kltlkPz8DxqqAHcOoDtO4hxiEGE5UhINhHlE3S+pWr
	YoLuZ5mEQq4xGCbVwzfDXYxUAcq2njgMTzpukKDGWFZWejwPzcC3nWSR99FGEadETG2/RAvNM9q/Z
	tzSiTc3X+1NwcsWCG6758qMHQ2WeuhOj4QSarlYOsNYN/qFD+Q6k1lq8Wu/36ilmHSeR207xCyRiq
	NlZna/sQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW4zW-007mIC-Fo; Mon, 12 Apr 2021 22:25:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW4zP-007mHu-EM
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 22:25:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=XHyb3Eb1+Sjcmh7TRwNtMKSkUgjWuET3En3jYDX2JE0=; b=AMtQ7fCd4f2s2cVw1VGMn28f8y
 HY29JLZguNepL9JNslzmDmHAqJzrZqYxuthDm74wkHZEbzreOD1l2lm6ukNE2iqNZCouZJng4LIUV
 joFeE9SSvDp5rxdCreyP8X/5GcXJ7H+1D7mDHqwX/6Ac3yQBiFNEEfbTMSg/6SpXemBY//ZcERoig
 hfaZmgl+hBkrZBXsSM7TmwmNwuBaYOE9wsZWNXdL5HiuJgtBdYCeF1KT57o+Q9Mve/rVXxzj43FGg
 zMFQ282qUmVmG4aFtX2cCDjRa85vJ6tudzAhtnJVHlC2H3Rk5r+02HovdsPyHP/+tcQ7GbPAXhR+4
 UFvNtG4w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW4zM-006aXj-N3
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 22:25:02 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW4zJ-0005DL-LC; Tue, 13 Apr 2021 00:24:57 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW4zJ-0006ig-Bx; Tue, 13 Apr 2021 00:24:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 13 Apr 2021 00:24:16 +0200
Message-Id: <20210412222416.25723-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_152500_788641_E5369BE5 
X-CRM114-Status: UNSURE (   9.86  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX7/8M: reliably detect serial boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While not documented in the reference manual,
info->boot_device_type was observed to equal 15 when:

 - SoC is strapped for serial boot
 - SoC falls back into serial boot after failed strapped primary

The latter went so far undetected. Fix this.
What's not tested is:

 - SoC falls back into serial boot after failed primary from fuses
 - SoC warm resets directly into serial boot because of BMODE

If those works, we could drop the imx6_bootsource_serial check at the
beginning, but for now, just leave it be.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/boot.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index c3cf4b85ff25..e9b5a4944390 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -506,6 +506,9 @@ static void __imx7_get_boot_source(enum bootsource *src, int *instance,
 	case 5:
 		*src = BOOTSOURCE_NOR;
 		break;
+	case 15:
+		*src = BOOTSOURCE_SERIAL;
+		break;
 	default:
 		break;
 	}
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

