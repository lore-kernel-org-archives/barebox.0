Delivery-date: Wed, 29 Nov 2023 09:31:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8FzA-00D2C7-0t
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 09:31:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8FzA-0001Mr-5B
	for lore@pengutronix.de; Wed, 29 Nov 2023 09:31:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZpXJ0c59VlOn8n87613SSXosJEBt0fr4SPKAZ/EF3eA=; b=gvNT4xp2auOLdm3rFoLnJAdf9N
	pqjMUzUvVZSbSE6QkgQpmKLAsG8/3ZPNRjmCmHaZCmhJW26ax/M0o01mbXOicM7AhHFIzZlwsGhN/
	KYjp1zn0fbjX7iw+ggAP17RoMltLETyl5LNsCOsccA3SVXGrc59s/zoi7kBnzzv8ZgqSC9LHRhf+s
	ZPBcjnv+77NLqyFAkf/KxOLd3bboST0jHE2weSH6CLw2lqCUYHexaWarQtf79FgXargswTfpHGRC3
	PLzkzI7w57p1meokkPQrhs2NkYMcMfUVm0Ct7kMqRRWYJU0BDoHCLFh/t6lQNWlX+V2FgoEGSlQd3
	919pRqNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Fxi-007Tk2-0I;
	Wed, 29 Nov 2023 08:30:26 +0000
Received: from smtpout43.security-mail.net ([85.31.212.43] helo=fx303.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Fxd-007Tgg-1l
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 08:30:24 +0000
Received: from localhost (fx303.security-mail.net [127.0.0.1])
	by fx303.security-mail.net (Postfix) with ESMTP id 0F5C330F805
	for <barebox@lists.infradead.org>; Wed, 29 Nov 2023 09:30:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1701246612;
	bh=pm2ayy01TKNN417gyAd50u0dTMIwsLcty0pENQK2xNo=;
	h=From:To:Cc:Subject:Date;
	b=QON3sJLSJibP0hwo/d8hCy6wcK71ErFtyzBYVREmrn5ciNQvDrUeVfojaULAMIEuj
	 7zO9EV/HSelVYClPtbPfOlRVSG4BTnRM18QjNmKxb0M3Aa94t8WHfMqFfHAkOlABOx
	 55UY79IyZpm3i66kKtC/Z0wHP/XtCw2FKYs9LJgI=
Received: from fx303 (fx303.security-mail.net [127.0.0.1]) by
 fx303.security-mail.net (Postfix) with ESMTP id AA37430F760; Wed, 29 Nov
 2023 09:30:07 +0100 (CET)
Received: from srvsmtp.lin.mbt.kalray.eu (unknown [217.181.231.53]) by
 fx303.security-mail.net (Postfix) with ESMTPS id E7C5130EC60; Wed, 29 Nov
 2023 09:30:05 +0100 (CET)
Received: from junon.lin.mbt.kalray.eu (unknown [192.168.37.161]) by
 srvsmtp.lin.mbt.kalray.eu (Postfix) with ESMTPSA id B7A344035F; Wed, 29 Nov
 2023 09:30:02 +0100 (CET)
X-Quarantine-ID: <SUAz2HZhcGMn>
X-Virus-Scanned: E-securemail
Secumail-id: <148f5.6566f68d.b30e5.0>
From: Yann Sionneau <ysionneau@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalrayinc.com>
Date: Wed, 29 Nov 2023 09:29:56 +0100
Message-ID: <20231129082956.30622-1-ysionneau@kalrayinc.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_003021_883661_6037D900 
X-CRM114-Status: GOOD (  14.50  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mci: set RCA to 2 according to eMMC specification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

According to eMMC Protocol Specification JESD84-B51 Section 7.5

```
The writable 16-bit relative Device address (RCA) register carries the Device
address assigned by the host during the Device identification. This address is
used for the addressed host-Device communication after the Device identification
procedure. The default value of the RCA register is 0x0001. The value 0x0000 is
reserved to set all Devices into the Stand-by State with CMD7.
```

So definetely 0 does not seem to be a good value.
Second, the specification says in
A.6 High-speed e•MMC bus functions / A.6.1 Bus initialization:

```
17. Send CMD3 with a chosen RCA, with value greater than 1
```

And third, I used a VIP (Verification IP) and plugged it to a simulated host
controller chip running Barebox and it said:

```
MGC_EMMC: EMMC_SET_RELATIVE_ADDR_INCORR:152 - Set relative addr should be
greater than 1. address given is = 16'h0001
Refer to the eMMC Protocol Specification JESD84-B51 Section 7.5
```

Note that with an RCA value of 0 or 1, the VIP would print the same error message.

Set RCA to 2 instead of 0 for eMMC/MMC case.

Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
---
 drivers/mci/mci-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 6d0d647377..b9a8580927 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -450,7 +450,7 @@ static int mmc_send_op_cond(struct mci *mci)
 	mci->ocr = cmd.response[0];
 
 	mci->high_capacity = ((mci->ocr & OCR_HCS) == OCR_HCS);
-	mci->rca = 0;
+	mci->rca = 2;
 
 	return 0;
 }
-- 
2.42.0







