Delivery-date: Tue, 23 May 2023 09:18:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1MHd-00AUN1-PV
	for lore@lore.pengutronix.de; Tue, 23 May 2023 09:18:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1MHb-0002XL-Fs
	for lore@pengutronix.de; Tue, 23 May 2023 09:18:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mouQvqeLPbQi5+JaoRcVjydz+tIqUHpiVs1FmQpfgZY=; b=TcVwdFGAAGmcaDEYOkDQd1DrqS
	iTl12/VwUZM/mQtzTXZbI7/rAF4AvkA1Sq17bGvv3C5+o6twmrqsS9FHMFg6EqO8KKpvCPPxV/UtB
	y5pYcyLMNLuu5C3ZSQBs+rDPaBF4K+ZmocHe+e+1cNzx0uB+pv4kcPobfE0ABHMX4cKkqM6M7v98W
	jQg4sx6FY+KtgSrKvqGLoy4SATo8VHRUCvgtM1Lw8n3/gQKInM4KPqjvsd+ciyr8TvCUH16Ogy7ZL
	P4McNqyHybD/y3gXQV/dWkehc9U6sUOnqW9F1h5HOsUq6+7P34pY/5mgfkufw9ZYxh6+XypCmZqBr
	9QSAn5SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1MG8-009BnW-08;
	Tue, 23 May 2023 07:16:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1MG0-009BjE-1X
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 07:16:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q1MFr-0002KH-7z; Tue, 23 May 2023 09:16:23 +0200
Received: from [2a0a:edc0:0:900:1d::51] (helo=birne)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q1MFq-002BxV-JL; Tue, 23 May 2023 09:16:22 +0200
Received: from afa by birne with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q1MFp-00FvmQ-Rx; Tue, 23 May 2023 09:16:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Roland Hieber <r.hieber@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 May 2023 09:16:21 +0200
Message-Id: <20230523071621.3796978-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_001632_522243_58595494 
X-CRM114-Status: GOOD (  14.30  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] imx-usb-loader: Don't try to verify more data than contained in the image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On platforms that don't have a 2nd stage (in my case i.MX6 without
imx6_barebox_start_usb), it usually happens that the transfer limit for
the first (and only) upload is bigger than the actual file length.
Then the right thing to do is processing the complete image (minus its
header), but not more. This was broken by recent refactoring and fixed
for the transfer case with commit 3cf4bcd86419 ("imx-usb-loader: Don't
try to transfer more data than contained in the image").

The same bug persisted in the verification code though, breaking
imx-usb-loader -c:

	verifying file...
	mismatch at offset 0x000999c0. expected:
	[ hexdump of last bytes of barebox binary ]

A jump to the binary will then be skipped and subsequent imx-usb-loader
invocations will have their DCD writes unanswered leading to the
dreaded:

	main dcd length 328
	DCD write: sub dcd length: 0x0324, flags: 0x04w3 in err=-7, last_trans=0  00 00 00 00
	addr=0x021b001c, val=0x04088032               w4 in err=-7, last_trans=0  00 00 00 00
	!!perform_dcd returned -7
	4 in err=-7, last_trans=0  00 00 00 00

Applying the same fix as in 3cf4bcd86419 fixes this issue as well.

Fixes: 3367ebc55ebe ("scripts: imx-usb-loader: simplify code flow for file size calculations")
Cc: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
Reported-by: Roland Hieber <r.hieber@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 5f9c7ff3a458..676f077c2557 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1415,7 +1415,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
 	if (verify) {
 		printf("verifying file...\n");
 
-		ret = verify_memory(image, firststage_len, header_addr);
+		ret = verify_memory(image, min(fsize, firststage_len), header_addr);
 		if (ret < 0) {
 			printf("verifying failed\n");
 			goto cleanup;
-- 
2.30.2



