Delivery-date: Mon, 26 Apr 2021 16:32:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lb2HJ-0003IT-Pb
	for lore@lore.pengutronix.de; Mon, 26 Apr 2021 16:32:01 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lb2HJ-0004F4-1h
	for lore@pengutronix.de; Mon, 26 Apr 2021 16:32:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a22Iu31uZD6tbvsw3GhfC021PgJ3BVHjfvTDfgxRqWc=; b=WGbcIPdllxQqbo
	z8FmiZpHaBfyUUmjNvd9UblApTLmMe8PjfOryQfuqpppPa0ocGSeZ1w7PfPSNxdca5llwklzYizLu
	fXpblHu7X+7HHOO7bVXp7iGKK/J9P2RJGY/6z9HS41jdlojVG66aWK3vOyEm2n2DhKgxrtZegyZyY
	fi6ZAVR8Yuf6JO9ZzUiZOf40ahQXyC2c6KApU18GU2sjwWRbB141uwacTsI2PX0h2TI4nrAPkyGUI
	LKY/bli6FyYX+e5KIW0edUVmCa50LTQ+I1VUXwpOyZ6qLanz9nfYB5HxZu9WCgcN74tLX4LcrD5qX
	oGKPB9LGoURlp2Se1KkA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lb2GB-007qcF-VE; Mon, 26 Apr 2021 14:30:52 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lb2G7-007qc4-9A
 for barebox@desiato.infradead.org; Mon, 26 Apr 2021 14:30:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=xRU3u+yKMdH2RoZl0AUbe2R7ZBafHv3/vrheHMnXVkg=; b=ggzEcY/VHEFrUHYqkRK9W01hPb
 mGyWvppAyL0pBW/F9l9Hkh/05ElbMPmV6NK83hjoroBHz0/mnbUwD9kDYQJq3eJne6Y6xjb187L3t
 84vxzvd+SESWHjl8xK0arL1vy5ppPRgSKYROXvNuTKgeIkxjj1MEeVTCzZ46xZQyu0fpBNWJ3xkPw
 wGUkxs4LBB26F1HnoK4wEqC5NUyafwaeRyHXDgwL3xDg36yrBoQOgbtlfDnl6Deeou9MhYZaO95QV
 PgShtLFmP+Tzz4ANxuH3QxQzIrTCwtSoIoHpdyb072OXM52GM/QvthzHbTV0K97qsqHRf80c8v0Kk
 DOOtXHcw==;
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lb2G4-00G0sW-QX
 for barebox@lists.infradead.org; Mon, 26 Apr 2021 14:30:46 +0000
Received: by mail-lf1-x129.google.com with SMTP id 12so88319796lfq.13
 for <barebox@lists.infradead.org>; Mon, 26 Apr 2021 07:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xRU3u+yKMdH2RoZl0AUbe2R7ZBafHv3/vrheHMnXVkg=;
 b=urLEtFMUrgjoUvje6Z7xIYYFD017gLLqAk+/c5nv7AKeoSYhRWW+REXseVvmpKLoLy
 QPX7hotra3FjtOls/RmMP/HVd7RLts3/M8cJNWX204XP15efAMSfZa8YwGVAQTZIjWTD
 ht2czv+heBnddekcLWgsmItzI0tVoDOezKaPS9HsRIVSpIFBK98oaKBtj7Z+gpEMyneG
 cipvy0CLF7bhyC3wYb+IrEQAFE4qZGmdcAP5ce+4tphrpCTJ+/zkKXe64XfpzY3e5yEi
 pMZx+XH29NtB35IFsowbCTsM/wfl5Xp+wvzId7rQdLRZVlqPRx6jelFiJqdHvlQ39J1y
 TIgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xRU3u+yKMdH2RoZl0AUbe2R7ZBafHv3/vrheHMnXVkg=;
 b=QYT8kAzMF/hSmIfVBLnHs9STjYUeT7mJavkl83/MjXB2lycayv2NPPb15lIXxsCrhu
 4L9WTRKlO5Pbba4nh5korhokAEGJCRj1qA7g/bcS+C90dgctdjEog3A8l9Ancz7ZyYty
 XCWSk7uV5yZ5FgLbbt3pVk7t505j4ADP8te3lpJxKU4/X/MWCX7ngoaBWzEfu+5VOoil
 DaTjVr+5qH05y3APNyPM/lCqN/LTmn1Cyz2i5tcrRzrpMoa6VQa+6vp0MQ3dspXml8rO
 obopm6lbBDFEu8M+oVWg+h5ngASkVgb4ZhLmrELvL9HtIgTShkplJfRrGjuMbByuImLP
 UOmg==
X-Gm-Message-State: AOAM531banxn5INfY59zLk3ty3jVvLlZBclPEhS6/D9E14JIQiMlxaj1
 qzXAOQV4Kv8kSlUxD8lQF2mHMTrZvnsvDQ==
X-Google-Smtp-Source: ABdhPJyClLD9HkX8Nym0i0hbbWlu2BtyTysjfPpl7NHXRJgM1HcRmgs5GWU3cMWmy/uDFhY/96IAUQ==
X-Received: by 2002:a05:6512:6d6:: with SMTP id
 u22mr12899409lff.386.1619447439552; 
 Mon, 26 Apr 2021 07:30:39 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id y20sm14545ljd.106.2021.04.26.07.30.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Apr 2021 07:30:39 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 26 Apr 2021 17:30:25 +0300
Message-Id: <20210426143025.149717-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_073044_893374_213F61B7 
X-CRM114-Status: GOOD (  10.55  )
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
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] startup: introduce global.endianness variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The global.endianness variable makes it possible
to determine current endian mode from command
line or from script on bi-endian capable system.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/globalvar.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index a55b38b00f..75ce6331b7 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -641,6 +641,8 @@ int globalvar_add_simple_ip(const char *name, IPaddr_t *ip)
 
 static int globalvar_init(void)
 {
+	const char *endianness;
+
 	register_device(&global_device);
 
 	if (IS_ENABLED(CONFIG_NVVAR))
@@ -651,6 +653,13 @@ static int globalvar_init(void)
 	if (strlen(buildsystem_version_string) > 0)
 		globalvar_add_simple("buildsystem.version", buildsystem_version_string);
 
+	if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
+		endianness = "big";
+	else
+		endianness = "little";
+
+	globalvar_add_simple("endianness", endianness);
+
 	return 0;
 }
 pure_initcall(globalvar_init);
@@ -658,6 +667,7 @@ pure_initcall(globalvar_init);
 BAREBOX_MAGICVAR(global.version, "The barebox version");
 BAREBOX_MAGICVAR(global.buildsystem.version,
 		 "version of buildsystem barebox was built with");
+BAREBOX_MAGICVAR(global.endianness, "The barebox endianness");
 
 /**
  * nvvar_save - save NV variables to persistent environment
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

