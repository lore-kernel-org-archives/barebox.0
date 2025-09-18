Delivery-date: Thu, 18 Sep 2025 09:45:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9L1-004Nyd-1o
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 09:45:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9L0-0001n3-21
	for lore@pengutronix.de; Thu, 18 Sep 2025 09:45:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fWTn4W2lnH2jbunddK1s0j/UX31sqzmgsoA0s93IU10=; b=O4yNSdISWJfrJLOpKJpLuC3Khf
	01uj/Pk1UbBzKZj+E45xN4PCfN6f6gEAqUVMaoQrTKODVFfBa77Q3kYuPvXhiOKOwfhmlwK9Fnehp
	Bp/W13yZprneXFLIU+ySau9HmwbRf+GSzftXolYLfxylin5bfcgKLL1ctqgmD7qLrs6l2yDBroPko
	ikg8rJQViajbfu7XDdILy/nd7Cb2bw5NrjNBny9er51Pr2rlcgfuZN7F3RNouU7Yg5AE6KJ9MEZml
	e9WDqOnRYEdHl3Ycowb/9E8jyZQwuX4bND9aIgMEmJIDYNwaxarVN/JqM/uddjiQ2Gp90P5x61gxL
	046HHzgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KR-0000000GaTi-1Mcz;
	Thu, 18 Sep 2025 07:45:19 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KM-0000000GaO6-3c3H
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 07:45:16 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-b04ba3de760so81090866b.0
        for <barebox@lists.infradead.org>; Thu, 18 Sep 2025 00:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1758181513; x=1758786313; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fWTn4W2lnH2jbunddK1s0j/UX31sqzmgsoA0s93IU10=;
        b=wEwCmuu3UnouI07/6j4Hr21zCEqJC6SQxvOGjGEEmL3v6V1H8qKPsO9QPwII1gDmlI
         bOyPwdgncGyAhzBqKegRKVMF60nNkb5lTL53RfhWWBN/shTDl4vMs+KJhv3bOeySKlnG
         OwPQ+mm6ygcxsfFBpNiVG9tRaLWiWsH9yQnIipm2JKrkM0vwCtu1N38OHj5adELSm2cv
         2Ilt1brNvIZMKlfQBwQnUScxmMg3sTuXXQ11Yj6Qc/BbbtZU1IwQnAAqDowX8ubQ9jyo
         sVvM+sctXa3pVruyesaSAilTNjTkM5RHEMF+pdulrjBCaZb8XhODI6QzNx8WT9nyN1lV
         iJ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758181513; x=1758786313;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fWTn4W2lnH2jbunddK1s0j/UX31sqzmgsoA0s93IU10=;
        b=I46GGkOIjz8ngj0gNq6h8il7R9UWqj5HW0rX6jOdGyrH+ZLkG9GGEB3s6viZDD9E9o
         F5E4ckEVz/FFwzSBqHMyXV3+PQ+fPa6EIsVMXuUaxZ6hmjV6ll8uP8ZsUmGu+XyEzn+4
         88NqRc9bbQxEkJo/SZfAUBo3Nqlj4q+Vqs93rj4JBbOWE3WqsHJyXUTHXc5Tvav0RJ2e
         DZd959grZ5H9i0CxvoZ+7qIkaAvDGP1Vmvc6TEF0eBkU7zLNJ7wtbvMns/0+W7Z9p+eG
         sTBlE3iQd1b3SQMs/usTugY4ufQsacXpDZCIHmZlHHoBC+Y6YLByTnp9gl1X+A3am8WE
         z9ow==
X-Gm-Message-State: AOJu0YzarI4ow93OlCn5Ib9df1V7kgC/oXqM7yy/2wKzIzSEHk99I6gt
	yZCtLCQRvTLRMvkZr2tIS2A1s8/Zwp0XeYbF3D+UjgcapXwcFWhgWGzbfKBppsjMBWF8yEi1D3Q
	IScN3
X-Gm-Gg: ASbGncsa43G1h9xMGXCBXvoiY87Fxio+C0+6KYDthNuOeHRBNzJZYh9Frsq6+QeL1Pr
	tfDTZ6fh1pqaeiBebmIC7kLNzt13BEoFB9A6iBXuv1WZnwfR8KtUjqPwoy6kUgmVGzMuRkBzpCL
	Jcs41Nhzv6sv1vXPof2s8NjIjR5M2vYlpLNoe+nCHP9EcgFy0OLlKoZ16NFjdOXpHINymmThc4F
	MpNJyhXbHe290eBSJ+JyVE2fGYHIBCi4pctBZ96mrejidUb30+dto1YC3srDRPTgmCQjVn1bLrC
	D5PCg6q+75fNu6J7ktH57fZGTG5kFeCb1Pq6IrTDwoqq4CTouwNM1rYw13WzP3Hu7lIqPYsqQrw
	BRsFfgCf/sM8r6oQ+yyelLmWaw42l2St8Fce3sH43wbzXNOe+eZPLK7AQ6HVqIhRh9WuICLiaG5
	oL3RV+GNOv
X-Google-Smtp-Source: AGHT+IG2Q8eTteah7dbyS6vhD9cvpKRLKLbaBDYvJG2a4J1rYDO/hPEeIsVe6LYHtAu0rh6hTLO1GQ==
X-Received: by 2002:a17:907:bb49:b0:b04:8c45:4bdb with SMTP id a640c23a62f3a-b1bb7d41a03mr502473566b.34.1758181512926;
        Thu, 18 Sep 2025 00:45:12 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fcfe888bcsm140703166b.71.2025.09.18.00.45.12
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 00:45:12 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Thu, 18 Sep 2025 09:43:18 +0200
Message-ID: <20250918074455.891780-9-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250918074455.891780-1-tobias@waldekranz.com>
References: <20250918074455.891780-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_004514_917617_311DD49D 
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 08/11] ci: pytest: Generate test data for dm-verity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Create a small FAT fs with a couple of files, and the corresponding
hash tree. Then create a modified copy that we can use to make sure
that errors are detected.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 scripts/generate_testfs.sh | 44 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/scripts/generate_testfs.sh b/scripts/generate_testfs.sh
index 3c200bd401..1c358ff846 100755
--- a/scripts/generate_testfs.sh
+++ b/scripts/generate_testfs.sh
@@ -28,3 +28,47 @@ generate_fit()
 	       ${KBUILD_OUTPUT}/testfs/barebox-gzipped.fit
 }
 [ -f .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ] && generate_fit
+
+alias pad128k="dd if=/dev/zero bs=128k count=1 status=none"
+
+generate_dm_verity()
+{
+    work=$(mktemp -d)
+    cd ${work}
+
+    # Create two dummy files; use lots of padding to make sure that
+    # when we alter the contents of 'english' in root-bad, 'latin' is
+    # still be readable, as their contents wont (a) share the same
+    # hash block and (b) the block cache layer won't accedentally read
+    # the invalid block.
+
+    pad128k  >latin
+    echo -n "veritas vos liberabit" >>latin
+    pad128k >>latin
+
+    pad128k  >english
+    echo -n "truth will set you free" >>english
+    pad128k >>english
+
+    truncate -s 1M good.fat
+    mkfs.vfat good.fat
+    mcopy -i good.fat latin english ::
+
+    veritysetup format \
+		--root-hash-file=good.hash \
+		good.fat good.verity
+
+    sed 's/truth will set you free/LIAR LIAR PANTS ON FIRE/' \
+	<good.fat >bad.fat
+
+    cd -
+    cp \
+	${work}/good.fat \
+	${work}/good.verity \
+	${work}/good.hash \
+	${work}/bad.fat \
+	${KBUILD_OUTPUT}/testfs
+
+    rm -rf ${work}
+}
+generate_dm_verity
-- 
2.43.0



