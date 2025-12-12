Delivery-date: Fri, 12 Dec 2025 06:09:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTvP4-00AYQ1-1D
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 06:09:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTvP3-0000eX-Pg
	for lore@pengutronix.de; Fri, 12 Dec 2025 06:09:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jMRo1pE1t+DItzcBGN6lh+dy+v0fl2OF3oiPtA/mpyA=; b=efm0KMTKGBdcoVtu13+anzVp7z
	dE4LgxNnMcCo6kqv3bsSykHqilXLv2LdzbjPuSImn4sILVLvJGN1Y4WF+YwdDSwVsdNwoaCmK6Ek/
	IsvSWza7iReyhv694J2EZKLAWFke4uielEvRXVjvRaS3T2uMEzGVUr1JPd2on2ocpGWRXR65P9Dxh
	TtzLTs+S6deq9GV71JYmhYdjdUem7KlMWU12rmisvnynkZP/9yyRJ9VL/X54VhHqEcb+p9qisJ3MB
	SugnWIMPsA3ACpA0uEOd1ptadp+ZfslaC7LluD3bwOYgY+W/Bvv5JieqrrdZQqn6ZizeinvU9CXx3
	tlmPofdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTvOX-000000005xD-0ImT;
	Fri, 12 Dec 2025 05:08:45 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTvOR-000000005vg-1J5L
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 05:08:40 +0000
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-888490962d5so9026376d6.3
        for <barebox@lists.infradead.org>; Thu, 11 Dec 2025 21:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765516118; x=1766120918; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jMRo1pE1t+DItzcBGN6lh+dy+v0fl2OF3oiPtA/mpyA=;
        b=npqV5EISZzJK0cQ15bR8dgea2k+MW0SWuwRzjTrzMxRSOlVKaHt69GkUZqwG2c6LF/
         2Fm132E/EYHjQ4KrBXgpTkbrNCR609elT/rbsrkZpRjuMUh7PWLIiYFa6jHuiq37zbRK
         SQNARjOqzt59j8cn9ZO8zeyS0YGGPG/2heBmxQmAsbnVSvacSll0/hNOs/t22tCzy2O3
         C5Z5T1A/U3wvpkdaHDhDlV839p5Ah3kObku31hgeBmh88jHDN7mIfbTG06zkLSIzu2Uf
         ayJYtsVVdt+vlTq1x/UNfWEZt0jcAF0vcUmsAM3Su1w6k6PIPmWR61SRu3gytYijMLPF
         Pz3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765516118; x=1766120918;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jMRo1pE1t+DItzcBGN6lh+dy+v0fl2OF3oiPtA/mpyA=;
        b=eYPb5j+zuitthpvk58GIv92NtJlQiFB+d7N9zGFdOQvKbT/hVWwWFdX7w0Wk0C8+2f
         8KWcUXNL++CpK/lWn0o2dDoWa7s+A3sHm7/GAPGHC/CkYchfe3MPybLAGR1AP7+R8Hzc
         VyXuIdWhooIbkRuzDCeCFj0I0SuviC4B38BADtlit+80FPI5vrIw49zFWKiWcbN0XvmZ
         oR4AhKrT6S0gf/FDx1+meQv/jTD+m3x15zo9sntHESZVYuLi3x4+nX6PEYxq/bPEZbcr
         +JjmOzLN2tsY1qPcdULPN5aWF/AvUSraeJlY38+m2k0Gb6YjklXxDxNWBd+vBcSqLxv8
         zXdg==
X-Gm-Message-State: AOJu0YyCIwxwCle8jt40pbXNvpz1csT92Qhy1/vdvwKxaE526ht8pl6g
	0eHHx+e9iRLYgF5fdrr8HkvxFzZwCdWweWMffg6LpaEtPPPq3EG6vWIFcYoBMMJ/
X-Gm-Gg: AY/fxX47Tv6BTZunp2APARuhiTyb2doVJXv//Hn5M30T1VY75qVzRj9I2GbrRfs0a+C
	Ovb1LXjbk5YKHXyZlRu80Qo5dPzbExNDRk8kaJQU12d09lbfaBuzwAOqhiXVM4lA77sxf060lIt
	43/5mH+wz0+lmANaLej8QGTaHGFlahea19TwMst3eP73cZvjVzJHdZLGaKNtlsuK5PeMyzh1tGu
	B//qEHaTsLdf+HP8ZmvF2omfombEA/mW4TWSot5L7zu46e58RBRzGqDsJB0kvKeyLWpRa7iLuMT
	Vuy/NgNJ2aUnSmJjMFSg2zv4O8MpX0DicCJtSPuuN7iQVV+AM+hPjZkdr9BPXW3KXf4653HeyQo
	0SC0EoXia5zpVHkfngCj1BrhS8WbGRr7b7lzL0P5KiSuZAD31rO2qA8Fnq4Q/TsaaZ0fs/HSH33
	5UxZIiaOFXWBE=
X-Google-Smtp-Source: AGHT+IGlUPLx7xByuFQTUhZ76a4AiCrl6A6gFTEbZ/XmL/y2f+UveEpEvQqZ9cvJXiAwf/mZLHmN+w==
X-Received: by 2002:a05:622a:1813:b0:4f1:ca4f:d480 with SMTP id d75a77b69052e-4f1d05aed63mr10490201cf.45.1765516117779;
        Thu, 11 Dec 2025 21:08:37 -0800 (PST)
Received: from CNCMK0001D007E.ht.home ([2607:fa49:8c41:2600::3a34])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f1bd6b50afsm33486341cf.21.2025.12.11.21.08.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 21:08:37 -0800 (PST)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Fri, 12 Dec 2025 00:08:22 -0500
Message-ID: <20251212050824.1273837-3-chalianis1@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251212050824.1273837-1-chalianis1@gmail.com>
References: <20251212050824.1273837-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_210839_351869_70401EF5 
X-CRM114-Status: UNSURE (   6.33  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/5] test: container: add qemu-efi-aarch64.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Needed to have ovmf uefi firmwares used for efi armv8 payload test.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 test/Containerfile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/test/Containerfile b/test/Containerfile
index e4f84e67dafb..d248b3e23924 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -41,6 +41,7 @@ RUN apt-get update && apt-get upgrade && apt-get install -y --no-install-recomme
 	qemu-system-mips \
 	qemu-system-x86 \
 	qemu-system-common \
+	qemu-efi-aarch64 \
 	ovmf \
 	python3 \
 	python3-crcmod \


