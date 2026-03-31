Delivery-date: Tue, 31 Mar 2026 05:49:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7Q6B-0070nD-13
	for lore@lore.pengutronix.de;
	Tue, 31 Mar 2026 05:49:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7Q6A-0006HB-Lw
	for lore@pengutronix.de; Tue, 31 Mar 2026 05:49:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hSGP+EvOrg3Xp814ZqAaUW3oSIya396VjmMzE/q3PAA=; b=am90V/5STGRxoLdhYVUnKvchPT
	qWvW0FEkRHNf2wnE1moUIGNdBReVeUYPKhPZJg5JFgOGTevOf5rXj6IqN/szdL5F6l5tzq8v3PpxQ
	vW3S5uggb3viy+T8SQkzfGW7uOr1/byYZ3vo8u8MQ04cgBpifTIvo6B8qwhQS369jowoU8ziiW4Bl
	tZGy6/361ybgwD9SQo+w2AOIzUZyyeiecv2rQ4vcDpLbe6cYR/cp0B4pSa0qv0kK3MuqlCG2Ee7RE
	W8/+jYRcpbKSMPV1ld0RoqtJ5L2eCQrnKhX3s9AWJPlhapRYPVWwQQTKoGw0psfBaJho2nl9qIfdp
	lf9llQaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Q5g-0000000CFLN-0hju;
	Tue, 31 Mar 2026 03:48:32 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Q5c-0000000CFL2-3dS9
	for barebox@lists.infradead.org;
	Tue, 31 Mar 2026 03:48:30 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-486fb439299so47745855e9.0
        for <barebox@lists.infradead.org>; Mon, 30 Mar 2026 20:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774928907; x=1775533707; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hSGP+EvOrg3Xp814ZqAaUW3oSIya396VjmMzE/q3PAA=;
        b=BaMkFWKeCbykzh3ahTp5VJ6GfmDNyIUUiuZnb5CDr+lDw9qFt7liSnspbhAzxwfAp/
         k6xaJj7+aUz+MFuTsPcc2rk8/EmCPj/zfeYHCx3om0UL8CIxqOyTnKTKf8LMLWM/iHoL
         v0Kj6KQVqXmj0SQopWmrqbx3qaRctGmUgIo+Y44o7dbsdM+WVFe00HH/k3kkGsmJOJlS
         0S46jCbNtMk/r5tk0t7oiPxwzPURT/hMsUIC8s1yHoMPvrcWchHpIfJkBA70JAxcZ27R
         7Ki8FPMuD9YC4EO6f1zki3JjGlIgRiFV0FM1bnbU84FOpUZtEdxg2Bz+/T5jSXo2UAHp
         r7Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774928907; x=1775533707;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hSGP+EvOrg3Xp814ZqAaUW3oSIya396VjmMzE/q3PAA=;
        b=Qvs7L7IKAc2LQmxZbFzsrjwioVjLeCqLbWwdahj2RInDWybELtV0gezUYcu07peX1D
         +8CWfT+EzMkaYAkcEFPNTtDmfuNNIrsMnvf+HRIf5ABzrEaADQH7rZhPZ6GkTbSeNJaW
         IcDrHFqzTCOotaHcJOTwByFBpEoNTiwpodbla43VmA6Xtj7ig1m6TaCjUqE0SBA9NJIl
         B88WpwXuoyYTv1PbCUxp2N4KF0ZvkLujUZJsowRy5xDM/1NBmLVQ9ITP66/7k8KmQGdA
         L/oobdtnkFpyRKnfHRUkEV6aFVtvNoV+lgdqQBHuussDvqC9JbdsdRMthaeNj7Toqkbx
         0reA==
X-Gm-Message-State: AOJu0YzNNI6IZiKVwpJAcGC8PvAzJTgzAhuKtT0hZQLu6mDceC0T1ap5
	8PDcHz4L1LXwN/5voyYgq8rMRSsbusgr8tFRRoyXptR8ymmBooZ3WG+uodXHVjM3
X-Gm-Gg: ATEYQzyDw6MKEj9waN1QOn5pdy2Vq7TBkQ9J9w4e88YM8EU1nJgmHijooWX3hr1I5qb
	3j7AGrY+zmXwsr/vQwO2kdH7kN5k6wfNncGRRzrGPv5XTOg/8RPbPIXnXVQIFF1pNJ/c5QUsL3x
	+Ykq0OSS3/GWVxwaYu5lPMgisq3ZqInrZ+ln5ez/m/bKSMs06H45hSaPQaV8vVODQ6PWtMEqd9X
	gN53Txc3/PCnbTQprGHIqB1tv4m2spwwi4EV0IWf16aDcxHDaycd/dpBBOOi3zdarkxuPjsQrNd
	NB8Tg9I1w+EBYsAUX1msuldKzkir97jjN5AYFYTLhu3ybxShLOEK3Hk9FeDIGnwhgp4vm7esF8X
	XRTnVBAQMBgt4bHfPgZGIPhoEZngqP/QV1GWV79eNKo6mSA+YTR7f+X5GArW5vDm6TiZtdVs6iq
	ruvPF73szjTfykWFm7RZtdjamWnSR1o7+CO5NZYAA=
X-Received: by 2002:a05:600c:1393:b0:485:3c8f:e4d9 with SMTP id 5b1f17b1804b1-487280a09a2mr250030795e9.26.1774928906706;
        Mon, 30 Mar 2026 20:48:26 -0700 (PDT)
Received: from CNCMK0001D007E ([91.205.106.130])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4887e80148csm3099435e9.5.2026.03.30.20.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 20:48:26 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Mon, 30 Mar 2026 23:48:19 -0400
Message-ID: <20260331034819.227094-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_204828_946521_8E396CC9 
X-CRM114-Status: GOOD (  14.02  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] usb: dwc2: host: rework wait_for_chhltd to handle ACK and retry on errors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

This fixes read corruptions observed on RPi4 when accessing storage
devices behind a USB hub.

Rework the logic inspired by coreboot's dwc2 driver:

- Check HCINT for XFERCOMPL or ACK first, before waiting for CHHLTD,
  to handle the case where DMA has already completed by the time we
  get here; as done in coreboot, both are treated as a valid transfer
  completion since the device acknowledged the transaction
- Wait for CHHLTD after detecting completion and re-read HCINT to get a
  consistent snapshot, ensuring the channel has fully halted and is in a
  known state before the caller starts a new transaction, avoiding
  premature channel teardown; unrecoverable errors (STALL, BABBLE) and
  timeouts are handled at this stage to guarantee a clean state for the
  next transaction
- Add XACTERR handling, returning -EAGAIN to let the caller retry the
  whole transaction

Note: the retry loop and the speculative pre-read interact in a non-obvious
way, however this approach leads to a more consistent and robust operation
of the controller. Despite the complexity, this has been stress-tested by
reading a kernel image over USB and verifying its checksum over 500
consecutive iterations without a single failure, demonstrating reliable
operation in practice even if the code deserves further cleanup.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 drivers/usb/dwc2/host.c | 50 +++++++++++++++++++++++------------------
 1 file changed, 28 insertions(+), 22 deletions(-)

diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index 93994f0be3be..2fb3d936cd31 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -129,35 +129,41 @@ static void dwc2_endpoint_reset(struct dwc2 *dwc2, int in, int devnum, int ep)
 
 static int wait_for_chhltd(struct dwc2 *dwc2, u8 hc, uint32_t *sub, u8 *tgl)
 {
-	int ret;
+	int ret, retry = 5;
 	uint32_t hcint, hctsiz, hcchar;
+	bool done = false;
 
-	ret = dwc2_wait_bit_set(dwc2, HCINT(hc), HCINTMSK_CHHLTD, 10000);
-	if (ret) {
-		hcchar = dwc2_readl(dwc2, HCCHAR(hc));
-		dwc2_writel(dwc2, hcchar | HCCHAR_CHDIS, HCCHAR(hc));
-		dwc2_wait_bit_set(dwc2, HCINT(hc), HCINTMSK_CHHLTD, 10000);
-		return ret;
-	}
-
-	hcint = dwc2_readl(dwc2, HCINT(hc));
+	do {
+		hcint = dwc2_readl(dwc2, HCINT(hc));
+		if (hcint & (HCINTMSK_XFERCOMPL | HCINTMSK_ACK)) {
+			hctsiz = dwc2_readl(dwc2, HCTSIZ(hc));
+			*sub = (hctsiz & TSIZ_XFERSIZE_MASK) >> TSIZ_XFERSIZE_SHIFT;
+			*tgl = (hctsiz & TSIZ_SC_MC_PID_MASK) >> TSIZ_SC_MC_PID_SHIFT;
+			dwc2_dbg(dwc2, "%s: HCINT=%08x sub=%u toggle=%d\n", __func__,
+				hcint, *sub, *tgl);
+			done = true;
+		}
 
-	if (hcint & HCINTMSK_AHBERR)
-		dwc2_err(dwc2, "%s: AHB error during internal DMA access\n",
+		if (hcint & HCINTMSK_AHBERR)
+			dwc2_err(dwc2, "%s: AHB error during internal DMA access\n",
 			   __func__);
 
-	if (hcint & HCINTMSK_XFERCOMPL) {
-		hctsiz = dwc2_readl(dwc2, HCTSIZ(hc));
-		*sub = (hctsiz & TSIZ_XFERSIZE_MASK) >> TSIZ_XFERSIZE_SHIFT;
-		*tgl = (hctsiz & TSIZ_SC_MC_PID_MASK) >> TSIZ_SC_MC_PID_SHIFT;
+		/* We wait for CHHLTD, and trap any exception for next transactions */
+		ret = dwc2_wait_bit_set(dwc2, HCINT(hc), HCINTMSK_CHHLTD, 10000);
+		hcint = dwc2_readl(dwc2, HCINT(hc));
+		if (ret || hcint & (HCINTMSK_STALL | HCINTMSK_BBLERR)) {
+			hcchar = dwc2_readl(dwc2, HCCHAR(hc));
+			dwc2_writel(dwc2, hcchar | HCCHAR_CHDIS, HCCHAR(hc));
+			return dwc2_wait_bit_set(dwc2, HCINT(hc), HCINTMSK_CHHLTD, 10000);
+		}
 
-		dwc2_dbg(dwc2, "%s: HCINT=%08x sub=%u toggle=%d\n", __func__,
-			 hcint, *sub, *tgl);
-		return 0;
-	}
+		if (done)
+			return 0;
+
+		if (hcint & (HCINTMSK_NAK | HCINTMSK_FRMOVRUN | HCINTMSK_XACTERR))
+			return -EAGAIN;
 
-	if (hcint & (HCINTMSK_NAK | HCINTMSK_FRMOVRUN))
-		return -EAGAIN;
+	} while (retry-- > 0);
 
 	dwc2_dbg(dwc2, "%s: Unknown channel status: (HCINT=%08x)\n", __func__,
 		 hcint);


