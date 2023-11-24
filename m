Delivery-date: Fri, 24 Nov 2023 07:02:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r6PHD-0070iA-29
	for lore@lore.pengutronix.de;
	Fri, 24 Nov 2023 07:02:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r6PHD-0005Pf-PO
	for lore@pengutronix.de; Fri, 24 Nov 2023 07:02:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bpwolGK4Dn9n3tFjIkoOzburNKOURFQWRpun0Hmor7o=; b=04cbtvOnSE5yxw
	y+FhHdUTgIaZNZSmlnr9kykcHtij33O4Fiya2F9FiNb3rHH9Ih0suUbUk9byNbydDF2bj0DU6y5xh
	Oy3MTG2MWUIVfauUDmL76/iHtN/JwZ1aIFNUpeqCOlNMt8L9qc4AIcKuRiEyOhXrcHm08ZRiXoWOx
	YMR0FqXPjmoYBCDpH1hmVvIg2P/0i8apTeuae3mgx+iLp/ozetPYovYJd2H0HgQcJ/202m6vkv+9v
	ScL0GmnQJkbq9UrO/KCpjJSnOYduGvbsMPrQwhjJMzEveO+3zJXqUMWqoKqIfIxgljUfZ/Ru7xkAc
	3csSe3QDnRySLo81cp2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6PFY-006EEB-1w;
	Fri, 24 Nov 2023 06:01:12 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6PFV-006EDD-0b
	for barebox@lists.infradead.org;
	Fri, 24 Nov 2023 06:01:10 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2c8879a1570so19662771fa.1
        for <barebox@lists.infradead.org>; Thu, 23 Nov 2023 22:01:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700805666; x=1701410466; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bpwolGK4Dn9n3tFjIkoOzburNKOURFQWRpun0Hmor7o=;
        b=AbJyIro03PNNrYqFFP+amB7TSmCvSVaresnx3QmURqhAoMSzzo3DgD/s8vZSp4JJPP
         nfbk9z3K9X0aI71hzcZ5VxPiU+Z9jWCLmzla1zyYw9ThBCOiZTECSSgq1Aag+9QAN0wN
         995dQ21zaKVnk50G4glBwprinrd8WyAgpfu3PS+OOVkLINZH2bO1ynwI5NXVIATQR6a3
         nqw3BbbGv89jvlML0m1z6sNq75Ymb/71YkozIhGHN+L0iN5DoGZ3bDQ6/QTEILQ9NVdL
         YjWfUkVymdS1q/jEe0UzcJ70y4SqUA8tsjfqBzw90EsVW3fzptVcuMut/lf/R3RMrrMa
         I54Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700805666; x=1701410466;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bpwolGK4Dn9n3tFjIkoOzburNKOURFQWRpun0Hmor7o=;
        b=g+BDH8dqxf9EabRiS2N44HCXuhaVN6PRGpEn0aZueAC260Xm3g1at413tgklyW30Fw
         lfNuf87HhgPMq7qiIfOt5xXRsir3T6JoV1eqSsRhM3upnxHeVLJ4kQHJ/XNYkEHGoKIr
         B/SCEKbP9ls4Cpne6HwBTOMY+TDq4GyCdvAN7JOlUiycPhX62gBIf49PghFXcclu5aoy
         q3EwJGA9SRCsj+mgiGIi95Nwjol6ZZ9s+blfAHmGap7UVxBd92cNgbSI6CTYe+ZGcCvP
         QUcAKoNfVKUo6tKYjapbmpcKzvAtv7qkOs1KLyyYThqpZ5rF0A6Neuz1jt3YcLyaSwNh
         Xl/w==
X-Gm-Message-State: AOJu0Yx6+HGXKiwGE4rUVC/sYUiMv9mrnS75InD/sX2whjZ34aNTIN3G
	8vgJ0zIJy8gGilU0LDopIBEnmixKM9Q=
X-Google-Smtp-Source: AGHT+IE1oGuvKW7JsnaCU1V20EXe0B1fww5mgJGdZYG6qtIOr7Uahr+kVwQ+uuc5iXCYw726TefxMQ==
X-Received: by 2002:a05:6512:39cb:b0:508:1975:5b1d with SMTP id k11-20020a05651239cb00b0050819755b1dmr1310949lfu.3.1700805665649;
        Thu, 23 Nov 2023 22:01:05 -0800 (PST)
Received: from cinco.. (109-252-3-142.nat.spd-mgts.ru. [109.252.3.142])
        by smtp.gmail.com with ESMTPSA id b20-20020a056512305400b0050a93acb00esm415258lfb.134.2023.11.23.22.01.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Nov 2023 22:01:05 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 24 Nov 2023 09:01:28 +0300
Message-Id: <20231124060130.1205927-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_220109_248293_AA538914 
X-CRM114-Status: UNSURE (   6.38  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] virtio: ring: fix erroneous behavior on MIPS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Antony Pavlov (2):
  virtio: ring: fix erroneous behavior on MIPS
  MIPS: qemu-malta*_defconfig: enable virtio network driver

 arch/mips/configs/qemu-malta64el_defconfig | 1 +
 arch/mips/configs/qemu-malta_defconfig     | 1 +
 drivers/virtio/virtio_ring.c               | 4 ++--
 3 files changed, 4 insertions(+), 2 deletions(-)

-- 
2.39.0



