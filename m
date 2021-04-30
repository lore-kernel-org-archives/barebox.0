Delivery-date: Fri, 30 Apr 2021 11:20:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcPKN-0004dW-FN
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 11:20:51 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcPKM-00062z-Pc
	for lore@pengutronix.de; Fri, 30 Apr 2021 11:20:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KlSJq8vnVhoUbbWYx6kOZi5fGceIX1Y7hQD/fGVF4ds=; b=hTf/EKXyAKsouJXcZsJ+rj0YGi
	zMI1vE8k/ctcoD2VbgdB6q/i2E/ENr5XUZKi8goTK+UshM21CrA4S8COmj000ayrggPW1ts1h536y
	/7V3+RPMKdzALI7M1+hGcmH93ivAUI5PumDKIoVv1q1h3kVcV3z1nUC7rtfp9sXIAcA/2rEHjKu//
	GGpjJRiL3qm3uuPjbIWEh72pjvUNQWuyAop2O4BBieijbyQC5tgyx5EX/hty2I7IwFP4MFXJ1D1cC
	02GI8//z6f3VDGxsytN6caRf2/0ND349nGOj24FIWQV4m7DXkMDEnQyArm1kFNeblgAcwb6QvQFfN
	NeoEepEg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcPJI-007ato-JW; Fri, 30 Apr 2021 09:19:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcPJC-007atX-H6
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 09:19:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=zvnCtqonJe+kdX4+f7BbhWU79B6OXrlJFSxGmqkyopE=; b=KYwK/LTupt1d3rGkFuRQmnIppF
 eWM1LiLfGPic6UpQs5Fs1KuKbedvL1RjAG6R9wyvwMxndbrh/iMccek6HT9kj+k+lmPAk9bl8DPkQ
 zXwfyrvfM9sXeSJZoVQmh7cbhUudpa3TdRFhycaSb6f03KSNTHaCeDH9j8eW8GKxN8aRg4729s4uT
 tdNTfm/wFz2ELaSe7uh0ODPH/XfxPZ56SSzUPEthrCt08vbgcjy741DJ7ok6lW8vt9EyKRMV/Gx9m
 lm4RDnWtgqxI2CuQDAiF/XTmHj6ZbbU59XCXzULphll8P5fJc47LH2wVrn/xFhp+vtcnVdNjKxO1c
 z/2MYm8A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcPJA-001GfC-4Y
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 09:19:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <bst@pengutronix.de>)
 id 1lcPJ6-0005tG-Rv; Fri, 30 Apr 2021 11:19:32 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>
Date: Fri, 30 Apr 2021 11:19:29 +0200
Message-Id: <20210430091930.30187-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_021936_198983_C843F3E3 
X-CRM114-Status: GOOD (  11.79  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] scripts: imx-usb-loader: print excluded USB device
 message only on verbose
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If a USB device path is specified, it is expected that other devices will
be ignored. So print that message only on verbose > 0.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index e277d29035..6f9104e816 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -314,7 +314,7 @@ static int device_location_equal(libusb_device *device, const char *location)
 	/* walked the full path, all elements match */
 	if (path_step == path_len)
 		result = 1;
-	else
+	else if (verbose)
 		fprintf(stderr, " excluded by device path option\n");
 
 done:
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

