Delivery-date: Tue, 31 Mar 2026 05:18:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7PcU-0070QZ-1g
	for lore@lore.pengutronix.de;
	Tue, 31 Mar 2026 05:18:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7PcT-0004EH-W7
	for lore@pengutronix.de; Tue, 31 Mar 2026 05:18:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iVF/zPWbt2S1PEkLw1tN+HrB64Jpl3a9dRlQOEqLqRM=; b=MIDzU1a5NFUVC/gTa85riNx2Tv
	P6uV6eTWH+4XtkArc8ERtnYIHHMvXXMNFAAx8flptGtGh82xrvBdkT2OJf8oSiSjv5grkidCYohvL
	beNtKS2udTn7FqmycqUuiHD+7bfN6lFjAlWsU31Dqx8qmmPTkt4ODlMJwUTT31FNjfrUkNAbINlns
	OE+PQV3Deyb0z42um6OvoMlNfovZGoRH1j117inqVqOaViB2lYWX/k54bqO8zBV5Ih/t1EmbaKaQo
	0JGtzk3T/dc6ESnQuwpLtdfgJb/K9rtEujgqQSSUB/dLIKE6VGuDtVUXPeDZzuRLuY7vYEQGnSf8U
	UrzVMB0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Pbu-0000000CDST-17nR;
	Tue, 31 Mar 2026 03:17:46 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Pbr-0000000CDRX-3LPO
	for barebox@lists.infradead.org;
	Tue, 31 Mar 2026 03:17:44 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-486fe655187so67345405e9.2
        for <barebox@lists.infradead.org>; Mon, 30 Mar 2026 20:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774927062; x=1775531862; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iVF/zPWbt2S1PEkLw1tN+HrB64Jpl3a9dRlQOEqLqRM=;
        b=E1VMEogGDisoaZcaNMXivoctKGc70PGCdkmNsQtCMxTBiuQyGmwvZ6Wv7fvS/tXM2h
         UwePKhLDcjkNOrIxuuuA0Emn5rzcM+o2rZ0dVfjV4+ldQtZ6VPkrcBHDsMEq57NibVyo
         V3cn5kHQOiVQeZwfxjrsk35v1E3nswGpOjACRNEj3+aX2worTJ4DiOCOv2t4vKT0I1L1
         SVSNWkrgKncz8VzOgfH5CNJjbOPU57JYK4G7ujloEfW/H4lY8U9BlcJAxaUgbwmtFD2v
         lHXlD73WCS/0hf/uzhn+tz5LfymjN28Q5nqVvLA8QmEQZjsuV+fTwjfV4XPtxFOxIR7k
         JAQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774927062; x=1775531862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iVF/zPWbt2S1PEkLw1tN+HrB64Jpl3a9dRlQOEqLqRM=;
        b=jONJA+QP3EspQXEelI4xCSvs+Z5+FaUD8dzU5WqbujNlS6OgbiDD3ZjP7L0cKGOaEd
         6yUp3tBPuX7klePX9JAh2LSRPM5i8eiCeLFoL/juUi+nzAJp22ojvmPgY5B/2vlgoCZz
         9ic9BdX4xCyZ88EgQcTppBDbqwDKxFEAg4ti9W9ymdMe8Eh3NkS1vu1BE6yOqnPDUN3z
         JXNr+x6SzFl2S/cbblXJFhnzOBzrkIH/qBaztXozMZstdocyB3Uvtup+71KbWD7Cgeok
         dtOvqFVOuVOT1cj0tyZTmNqvC22Nm3KyDKRGIAdlqF7J0txknsY8itUCrEWlOj/CF9JL
         P5QA==
X-Gm-Message-State: AOJu0Yxylx4G/DU+LjI4hE3iaxtVccVR8L/MWMkEGewKfkT5zVi5PQ03
	di7cyLNYVISMJGFklLSXZM55bSsiSeXb/68+snCA0ndQAm5SIbEdY6WL
X-Gm-Gg: ATEYQzy8tVeZxSPBk4X3tumKbI9YDAILhEKivSYMaVdyThoXJjTO0DVXGvAGxhkHpyf
	blx0vwNnEdpRbfKMvOHZ1tJR4uv8IGJv2tKXef5awVSpJgCwXXzolE1IlNaT3+/wd2ZGcJu/Bpw
	+hheNd5/jsXnpXg5+ouC2yioq6DmK8oIQAHwBq8+NopyQJnaoqgM9g3g0ZP7A4Xx2V58fqr2ZIj
	l8Jlr5GI5XA4u/m/KMrTB7xCLOxnKNChz453WXv1qrv/5iLrmZX0G8S/UdR6wDL9tBegZbZVTQk
	QZX+sz43rIxtuQDTkX+xYLw2Ivoeb3pKxJL/HtSguJKky7KkLDbfqOFn3X5CdCOZGs9+HW3S/pH
	KPuIe5NjBA/wwgW4XJXnkusk2fC5Cd1e24WiIeSwy8P42kvjcHk8bxvPmP1n3cfJZzcI/X7D77S
	fnCLXVEjL1gbrwqxU6H0qIgPRvzdr/kK7HS1fli/w=
X-Received: by 2002:a05:600c:3145:b0:485:ae14:8173 with SMTP id 5b1f17b1804b1-48727d4593amr255718555e9.1.1774927061757;
        Mon, 30 Mar 2026 20:17:41 -0700 (PDT)
Received: from CNCMK0001D007E ([91.205.106.130])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4887e952b0bsm607955e9.12.2026.03.30.20.17.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 20:17:41 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Mon, 30 Mar 2026 23:17:23 -0400
Message-ID: <20260331031723.195128-2-chalianis1@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260331031723.195128-1-chalianis1@gmail.com>
References: <20260331031723.195128-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_201743_862730_FBFE5A4F 
X-CRM114-Status: UNSURE (   9.34  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: dts: bcm2711-rpi: enable USB and skip soft reset  wait on RPi4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

The dwc2 controller on bcm2711 does not reliably deassert GRSTCTL_CSFTRST
within the expected window, causing probe to fail with ETIMEDOUT. Enable
the USB node and set no-csftrst-wait to bypass the reset bit polling.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 arch/arm/dts/bcm2711-rpi.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/bcm2711-rpi.dtsi b/arch/arm/dts/bcm2711-rpi.dtsi
index 2722133a4afc..892d6a7aecc8 100644
--- a/arch/arm/dts/bcm2711-rpi.dtsi
+++ b/arch/arm/dts/bcm2711-rpi.dtsi
@@ -19,3 +19,7 @@ &uart1 {
 &power {
 	barebox,allow-dummy;
 };
+
+&usb {
+	no-csftrst-wait;
+};


