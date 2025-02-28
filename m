Delivery-date: Fri, 28 Feb 2025 08:33:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnuse-007y44-0P
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 08:33:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnusd-00062X-0H
	for lore@pengutronix.de; Fri, 28 Feb 2025 08:33:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YMh0mC2TTYtWREDHQ7lzse9Uj3LO9yv6PxDIBzagqqI=; b=kPewVescsIgpP1OZ+G3f6YlEws
	HYFzcesU1oX5njuvsbPgDiDTYbHWnThCbKLq5AwA+dSscHQ+uNKFKKKhBGA+EZ0McBMklbvCqEfMC
	IVNUOWkGHyzW1cqoGKB8ilVDwMYKAMkGS3uKribKG0Bnv/ZccN23a6spKFgAdfBXwCEzkz/yxMI3g
	COsBGoZokpsBcHYw+Lqo+FVa1ys1oVp35BACS2LXEeBT6An3cDVpPFuTzh/SNDsm+qzoVm5beBD50
	hUXm8y8AL1HYLgaIb/x/c+inAHT5tulr95U900RTsb9+f0vfLl/TLk4KR7N0B+0sPX29eMSzwd26I
	gHLKmSbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnusE-0000000A0Vy-2gfj;
	Fri, 28 Feb 2025 07:33:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnuqw-0000000A0H2-1xoA
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 07:32:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuqv-0005iF-Bq; Fri, 28 Feb 2025 08:32:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuqv-003FvO-0Y;
	Fri, 28 Feb 2025 08:32:09 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-005CL4-0Q;
	Fri, 28 Feb 2025 08:16:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Feb 2025 08:16:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250228-am625-secure-v1-10-4002488ff5ed@pengutronix.de>
References: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
In-Reply-To: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740727010; l=719;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=WFiWcyEkErGDpPMQMl4x3662WXBybI4qGTlkUXy/Ey8=;
 b=0sopxOf4bKk7a6UYtiGyIwECSoF2KQKpXhkjIPRgSvbEMBNaI1xcvP+LddS3+PthKaD5eVeG6
 aJHYiiS+n5dCXcNPEwnJMS0C6in/Vht5byB0Gx35D+VgMkdeMmRipoZ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_233210_512996_7BA78D76 
X-CRM114-Status: GOOD (  10.19  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/13] ARM: k3: r5: delete fip image when it can't be
 opened
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In case the uploaded FIP image can't be opened due to corruption of
the image we end up in an endless loop trying to open the same image
again and again. Delete the uploaded image in this case to give the
user a chance to upload another image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/r5.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-k3/r5.c b/arch/arm/mach-k3/r5.c
index cb52ff364d..c8a91e2597 100644
--- a/arch/arm/mach-k3/r5.c
+++ b/arch/arm/mach-k3/r5.c
@@ -319,6 +319,7 @@ static int do_dfu(void)
 			ret = load_fip("/fip.img", 0);
 			if (!ret)
 				return 0;
+			unlink("/fip.img");
 		}
 
 		command_slice_release();

-- 
2.39.5



