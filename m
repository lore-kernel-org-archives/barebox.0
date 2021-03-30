Delivery-date: Tue, 30 Mar 2021 08:53:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR8FZ-0002yR-Co
	for lore@lore.pengutronix.de; Tue, 30 Mar 2021 08:53:17 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR8FY-0001iL-Ka
	for lore@pengutronix.de; Tue, 30 Mar 2021 08:53:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wp1fOoL61esCiRdgbehQKemRvS2Y+bGf+HC/eohC5W4=; b=QOwz5yPZVC/rjQwMDpQWQkQOH
	frCVg5gbthFsd1Ryw6UA4VsGNFojqjn5aAWAfnpxn1LBm78WF9KK54Saaj185BLSh0gfuM70zifxo
	999JQv8It0aI8t7c+/O9XvG66/dYg0jWgEdev/nebefnr4QmXfVGmSb2O0tdrgLRMb1WQ092QJbbH
	NW8ws3zB3DPRtyjPICKomIssp9/A7GMHG8U4KqMpRvgWaihnS+6KW231+P30ljV2C3bMLw5BOJ03d
	Au16S2ARG3jldhGFe5w5ujlyYHB0p8LUkaf69qHdN2SXJ9Ai4uNrOIowqpxiVaqV18CmQJFCceuIv
	ZWp0w5w8g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lR8Ej-002s1o-MP; Tue, 30 Mar 2021 06:52:25 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lR8EY-002rzT-KY
 for barebox@lists.infradead.org; Tue, 30 Mar 2021 06:52:17 +0000
Received: by mail-lf1-x12c.google.com with SMTP id d13so1155758lfg.7
 for <barebox@lists.infradead.org>; Mon, 29 Mar 2021 23:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qA5idXD/e3qpdl74opSTZLEgsImGxFVIjM7jbr9JgwA=;
 b=qgyBmyQWIvRpHb++GZk4gt3P2m7ScE2RNsFBW3IhMGzEgAvLPFOV9s0jpc9ogecBi8
 n7T/2Dv26MXphtLpRl/WHE7kigfeteDQr9HFffR/YX0YCsAx+UmdJ9+eSYkkcl3myteE
 UZS32a74BWHYJ0aIWhtDBtpdG/NLcwzQoHFwoAUibam0ZZpnb3A6dJKTcpp2HwNr+dXU
 RUVZHjzXkx2P05bMpuBbevXn1qNoayiGuSQZJyeAeHUCDpEYYVyLq6ziXo5uSHqOH7F8
 HLQ8LFLd3sphuVL1V2dyD7Is1TVBgPS0aY1BZVAhDCo6c85SmIKssis906a/nvvM9uMl
 P/4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qA5idXD/e3qpdl74opSTZLEgsImGxFVIjM7jbr9JgwA=;
 b=Z2vY9nmANKlohx1kWhSM7hPZ/ibTky+hWStEVcORgB6MyJHqsDzk0T5f3J0uImP3lD
 e0zR4r8npfcs6O+OywkkzIlfl/en01Hvcw8zfwEo07aYCsBPvZyVSaC0/qUg+VDo4rsM
 akVkYYeF5TiKbM+nO0l/WfX94IZa2g/tLbMfqBb7DSJmKE6xbRxYgfM9McvQa/lXvwEN
 DVcwDFNblqSdEc07RQDmYfVfr0KMEBNWy972799sHlgcohA2Z2KLeI3sjN+r/YLuknrD
 Oic4zSctvpphO5vR27pDFfAu5Cm45+DHum6myV/ABD2X03THRl4deV92ZITnT+U+sYK0
 R8uA==
X-Gm-Message-State: AOAM533JJrDtJuslG0oVWsPOAczudjwIyvFjVPcBJf4WWfX2VApz7X1t
 UzdOfnXNCJ9tkCZhHN6h4Vgcavzqn/A=
X-Google-Smtp-Source: ABdhPJyGNB2HA0vNv23JXkYhouWsAjIVXHQEMc4HNP7S6gKAczBUrUFvWpIblY8mTRok9bHeCf4Ykg==
X-Received: by 2002:ac2:57c2:: with SMTP id k2mr18135491lfo.511.1617087133758; 
 Mon, 29 Mar 2021 23:52:13 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-32.dynamic.spd-mgts.ru.
 [109.252.203.32])
 by smtp.gmail.com with ESMTPSA id v9sm2075015lfa.32.2021.03.29.23.52.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Mar 2021 23:52:13 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 30 Mar 2021 09:52:08 +0300
Message-Id: <20210330065208.446667-3-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210330065208.446667-1-antonynpavlov@gmail.com>
References: <20210330065208.446667-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_075214_875703_1EB07805 
X-CRM114-Status: GOOD (  10.08  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] Documentation: dlink-dir-320: update device links
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/mips/dlink-dir-320.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/mips/dlink-dir-320.rst b/Documentation/boards/mips/dlink-dir-320.rst
index b60995489e..90de68a9c4 100644
--- a/Documentation/boards/mips/dlink-dir-320.rst
+++ b/Documentation/boards/mips/dlink-dir-320.rst
@@ -37,8 +37,8 @@ Next, setup network on DIR-320 and run barebox.bin, e.g.:
 Links
 -----
 
-  * http://www.dlink.com.au/products/?pid=768
-  * http://wiki.openwrt.org/toh/d-link/dir-320
+  * http://web.archive.org/web/20140301070636/http://www.dlink.com.au/products/?pid=768
+  * https://openwrt.org/toh/d-link/dir-320
 
 CFE links:
 
-- 
2.30.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

