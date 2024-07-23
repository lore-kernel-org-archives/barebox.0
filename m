Delivery-date: Tue, 23 Jul 2024 17:32:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWHVD-002BFL-1t
	for lore@lore.pengutronix.de;
	Tue, 23 Jul 2024 17:32:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWHVC-0005gj-Ui
	for lore@pengutronix.de; Tue, 23 Jul 2024 17:32:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:Date:Cc:To:From:Subject:Message-ID:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CvX5amq9R714nwxHsNxjLgJEZCT+NvUo1piHj2pKkqA=; b=cCZ88fV3mjtKW7udeTAAW/S6Iq
	0j+ae0fn9/J/svHkm2Ve/GjxviQrHz0+yu5eqm5U3E0Ljt520pPABwrelhumPmjuupWnGouV9TKj3
	YNBen2FJIY6dKzPXE889gMERirGhuAHna3TC83F2Hyq3UdpqHHxCUXL3cmNY29XINi9tb7YuJaMBX
	85KyHSKiFohFyv6XYjMNX0WmfJjq/0incJCz+2ivQccllaLcoxf5L5vALBZ/wqQh6GSz3RLG6OA6v
	vSh0EoEk82jmKBpsVmk8f8mx/oxaQDb3uIG80lHpGcx92+9M1OHe6kFDglUvWFm1/zGHh0THxAQDs
	2kCaArlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWHUc-0000000CtdP-0hQE;
	Tue, 23 Jul 2024 15:31:58 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWHUY-0000000Ctca-35ZQ
	for barebox@lists.infradead.org;
	Tue, 23 Jul 2024 15:31:56 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-368557c9e93so3025221f8f.2
        for <barebox@lists.infradead.org>; Tue, 23 Jul 2024 08:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721748713; x=1722353513; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:user-agent:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=CvX5amq9R714nwxHsNxjLgJEZCT+NvUo1piHj2pKkqA=;
        b=hN+2HjbMk3Ym1sHUUycyC79LPVtoCouGVV9MzFO8xcyaWsTgfBbPO0rkt72Vnivr9B
         ajp7BaMx41p0zXx5+SWQ9ssOD4j/Giiqn5D7Q8cnW3fVrla5q7nQFeRiHua9RQEGnI49
         AZzMymMLCbHnB1Vembu3mGT+w8RyWeJ6ts8nhpJENn5OTJ5G3/RcQ7iGFefeEffIkCJ+
         jRLKnXUBmTjn4XZ8sdGk5peIsZAJMqI/DJae1fLa7A0wy3bWbsQ7zWfo4TRYPLl4Sy2q
         5CEInqfnyJzI0u6Jl0EhmnUKfiHVoLqvV04WhahVKTLao9huObv+mxX8UfIX1cQVggMv
         HkzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721748713; x=1722353513;
        h=content-transfer-encoding:mime-version:user-agent:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CvX5amq9R714nwxHsNxjLgJEZCT+NvUo1piHj2pKkqA=;
        b=CfeAV7CZI4Smohi+vngFfNJ9EHRLcSoFJuNYqeMMejIix4bA8Ox7GF9Z8zQXVyTfwN
         lfhOMcTIV0XFE38ibcME/ZblRc9czCco4IqhgHpvJhpxZleV0TSG9YBmgu8Eb8JKbSMA
         MvMmobfmfXDIcv5p6dz3iSb2tuT0xT0OXy1VxmeEIaJfYDrHfFocfslnAWzoZz66mJf6
         QBPjvxw0sLIHAq7kK4PV4YXxvWayXI9RAlKTPr+w8sSkbto631WCKHYRMviGOCeCLLWp
         PXmfA5qGN+6xUfQXjcE/FOC/5/DIBNmTaIYgQ4iLMbQEJhl7WeG35LqXBwjxqoZy6lvV
         UrYA==
X-Gm-Message-State: AOJu0YyrdtWFdagSyBXlzY/sTCtObLIFjgatiPt+6SGv0DjasTuUcAV/
	A8MzCZZxooW/d6fiilYE+ylv62+pPNN/wszDtLNfjtOV4LD8c54mXjEIYg==
X-Google-Smtp-Source: AGHT+IFwQkUokAS5ojkdsBtue55tRcQOCaU5WXgN8emiif45AG63FpODRVg+iWTxoMYMhXRaSEyqDw==
X-Received: by 2002:a05:6000:2c3:b0:367:434f:caa2 with SMTP id ffacd0b85a97d-369bad3a81amr8163713f8f.0.1721748712846;
        Tue, 23 Jul 2024 08:31:52 -0700 (PDT)
Received: from vaio ([91.142.65.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-368787cededsm11941952f8f.78.2024.07.23.08.31.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jul 2024 08:31:52 -0700 (PDT)
Message-ID: <9bf8686f882714867ac2dc864c8e5539ad06400b.camel@gmail.com>
From: Stefano Manni <stefano.manni@gmail.com>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 23 Jul 2024 17:31:51 +0200
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_083154_810104_2974C583 
X-CRM114-Status: GOOD (  10.53  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] habv4: ignore engine failure due to RNG self-test in boot
 ROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Stefano Manni <stefano.manni@gmail.com>
Date: Tue, 23 Jul 2024 15:08:22 +0000
Subject: [PATCH] habv4: ignore engine failure due to RNG self-test in
boot ROM

Few i.MX chips which have HAB 4.2.3 or beyond, have oberserved
following warning message generated by HAB due to incorrect
implementation of RNG self-test in boot ROM:

	HABv4: Status: Operation completed with warning (0x69)
	HABv4: Config: Non-secure IC (0xf0)
	HABv4: State: Non-secure state (0x66)
	ERROR: HABv4: -------- HAB Event 0 --------
	ERROR: HABv4: event data:
	ERROR: HABv4:  db 00 24 42  69 30 e1 1d
	ERROR: HABv4:  00 08 00 02  40 00 36 06
	ERROR: HABv4:  55 55 00 03  00 00 00 00
	ERROR: HABv4:  00 00 00 00  00 00 00 00
	ERROR: HABv4:  00 00 00 01
	ERROR: HABv4: Status: Operation completed with warning (0x69)
	ERROR: HABv4: Reason: Engine failure (0x30)
	ERROR: HABv4: Context: Event logged in hab_rvt.entry() (0xe1)
	ERROR: HABv4: Engine: CAAM (0x1d)

On these chips it is recommended to run the software self-test
in order to discover any other failure in addition to the
false positivie above.

This patch filters out the event and not show it as suggested in [1].

[1] 
https://lore.barebox.org/barebox/ba1febb9b457f5876959f093f866b680e266f987.camel@pengutronix.de/

Suggested-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Stefano Manni <stefano.manni@gmail.com>
---
 drivers/hab/habv4.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index c60a658b89..d3462eaeb7 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -553,6 +553,11 @@ static uint8_t
habv4_known_rng_fail_events[][RNG_FAIL_EVENT_SIZE] = {
 	  0x55, 0x55, 0x00, 0x03,  0x00, 0x00, 0x00, 0x00,
 	  0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00,
 	  0x00, 0x00, 0x00, 0x01 },
+	{ 0xdb, 0x00, 0x24, 0x42,  0x69, 0x30, 0xe1, 0x1d,
+	  0x00, 0x08, 0x00, 0x02,  0x40, 0x00, 0x36, 0x06,
+	  0x55, 0x55, 0x00, 0x03,  0x00, 0x00, 0x00, 0x00,
+	  0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00,
+	  0x00, 0x00, 0x00, 0x01 },
 };
 
 static bool is_known_rng_fail_event(const uint8_t *data, size_t len)
-- 
2.25.1




