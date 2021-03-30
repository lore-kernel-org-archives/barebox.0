Delivery-date: Tue, 30 Mar 2021 08:53:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR8FR-0002xj-Sz
	for lore@lore.pengutronix.de; Tue, 30 Mar 2021 08:53:09 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR8FR-0001h8-39
	for lore@pengutronix.de; Tue, 30 Mar 2021 08:53:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cy/vdfANjFM42Yly6O6XjQo6bPld4VKKBE95gWS8XWQ=; b=VDrWD0VdW1YBye
	zvv3lLXX0G1q0hQ8+OjJfZTrlxKoClxvyUUhz9GMz/ZPxIMoUXXHjYqtWn24x22uZZ9PDcx3fDLs6
	6thYjcKw5+GTfLTseuKodSuZbS9Avf3kVSeT5q9mYX3V8FwUkd9cIF8L7Wi4g7tOduOxOWka/F9tM
	w959+OjoIMYQu/9xbddxWEecjL1WDmAt7Cq6UzxUUvtNpN/u9aysfot/UytwrotovT7RDL60+4s8Q
	uBSov+MK3n6Zt5cUl5SU7zsAL5r1Dw9mbUr6PcU4bhcCEnWhAgR+9KyPf7fUlxxhQmsvVfl2HPNxR
	A5GrRbjI4vfzDEew6/Qw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lR8Ef-002s0E-1e; Tue, 30 Mar 2021 06:52:21 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lR8EX-002ryt-Eh
 for barebox@lists.infradead.org; Tue, 30 Mar 2021 06:52:15 +0000
Received: by mail-lf1-x135.google.com with SMTP id d12so1070897lfv.11
 for <barebox@lists.infradead.org>; Mon, 29 Mar 2021 23:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xFvFB8mQPiSbfcRzzmd+Pf1AWvcs5I2UIN9E322Ne/M=;
 b=ZdjY2t1e1GtQzKD4tKPu6Xf/2Ngq92oKPLLW+5t3UYOChy4cyzwOGp1RGozISFXgq8
 O6GkrDAUWpFSm9GcftCe4fHH++FR2Q17sm/REelRRaTxl9Ip3m81jKbu3jI8aEjKL6Gy
 2bN6cdJ80ZmBcyqTRBjy7GXfD6/oBhbVrcipFUG6UcUpezVEDpZDSYoBTyxpA+sHGe19
 mt+O3neHaa/G7bXVvbtbUqXs9vdR8rU08rMLUjcahIRfJMV3zKRurMl6IMpAuMoHDmAz
 +qVVQfa2+G7EH8PZysU3OlpGXWbDKNVgehdN/a86+rhpXqV1a/otGiBSoxsonCb0Gkio
 glHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xFvFB8mQPiSbfcRzzmd+Pf1AWvcs5I2UIN9E322Ne/M=;
 b=RVUo9AJj0yKAfos3aybtwyedbmxY/xKHZ7srllI/mpuE6+v65SzDrwdAwWLF04c83K
 WGfmLmnphjvNEApekht0P+D5UjGJw2Aiincl6Y/1VP8KNkOF98goZDEZBjsL7VOocvmt
 kKodD3yRXQXHyxHnNmffsMcvwMw1ZVOJKk25vdS9qo3lsVGpQFTKRMrKdCimtTMI2osT
 dnJMYfZMA7vfF9Qv98ArKrqzAqvaA1Cgtt+jOlNPJ2NH16V57bjZVNektoPmv91YzoJ6
 DCTaEmH1K7de9V0J0PPJpP2DNCdbM4+3a1aXaZL6qdcVSkOt1qkptWFTiUfcxnLVB/x4
 0Dhg==
X-Gm-Message-State: AOAM531Ld3cam7Kgr9FsdXA64rAAAVxDCIOgNixntDFVjHsxiPlRzwS5
 bZZBcrcbrpOqXJfl804zpwM4vJsBsBQ=
X-Google-Smtp-Source: ABdhPJzS0pvlxugXhmQ4+wL4lgAtn3etdtUCB6Nk7z9fhflBwiKWGmiJ+Euvozby2mh9Z8H5EpbCXw==
X-Received: by 2002:a05:6512:238d:: with SMTP id
 c13mr18407350lfv.32.1617087132508; 
 Mon, 29 Mar 2021 23:52:12 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-32.dynamic.spd-mgts.ru.
 [109.252.203.32])
 by smtp.gmail.com with ESMTPSA id v9sm2075015lfa.32.2021.03.29.23.52.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Mar 2021 23:52:12 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 30 Mar 2021 09:52:06 +0300
Message-Id: <20210330065208.446667-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_075213_644186_7771FBFB 
X-CRM114-Status: UNSURE (   6.45  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] Documentation: MIPS: update dlink-dir-320 board stuff
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Antony Pavlov (2):
  Documentation: dlink-dir-320: update image file name
  Documentation: dlink-dir-320: update device links

 Documentation/boards/mips/dlink-dir-320.rst | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

-- 
2.30.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

