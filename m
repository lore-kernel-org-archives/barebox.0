Delivery-date: Wed, 08 Sep 2021 10:03:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNsY6-000532-5R
	for lore@lore.pengutronix.de; Wed, 08 Sep 2021 10:03:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNsY4-000258-Ex
	for lore@pengutronix.de; Wed, 08 Sep 2021 10:03:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZlDDYHu7WyGIeoHddYbCDdBGSBlUNyIZveBh/sMfqgk=; b=c5h5KxMw9xmKHz
	yjRz7Z4BXpz+ZNKBX63ntXHI6bBHgFPQd2nXGEduNP573sAM3qJ3C4g9o/9GTT7bSrRn3XUC5Y8ue
	wlWWE260R3poZBRFzyw33BWSsGj08pgfYnGirz0CjDYvogkyMaX9frCzhG/xffF9+fSdAHN3aZMc7
	21BgkuG+XAY5gKSL4PUQqAoYmNCq3hr8o6Awqr8aB0cmR0QBvYXycRa4R/D0UqffmjYgdZwHCGz6w
	WQn1wmMPg/FRWav2zanbvEka40oyYWevViRqzjIURdaiMDHQyT8MGi29jssXGNsRU1kaggBCKqXQt
	Vgm5jRSXbZOlob4gYUWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNsWG-0062bz-0u; Wed, 08 Sep 2021 08:01:21 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNsI3-005ygv-4n
 for barebox@lists.infradead.org; Wed, 08 Sep 2021 07:46:41 +0000
Received: by mail-ej1-x636.google.com with SMTP id e21so2293580ejz.12
 for <barebox@lists.infradead.org>; Wed, 08 Sep 2021 00:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hhmtewcMDoI2Ej90Da8Q0FFRbbURqdVEoTm9nBR6Ai8=;
 b=guO8n8TzFE8m16JgUNfv3paDbU+m9p1f1jeRqiWSAkUP0u0E4zc9/yfwkwSt67PTs0
 gjQWNFCA1iYsteI865RT/nSm44z30VP5RBADETUEqZNmg2J7KN+Rnx4HfDpjR99NmJxy
 NNbT4wSJMAJd4tiU3np1HYUXwoOznsfwZ5xWX64OaMSEPSzD/PLqm01ZqAfwdsZmfy9D
 mSkG/I+YV1uBr96KkOQUWlWFhVtwh5DP/3FTkFLA9wA8Yq8/NhsZY3/oqeVRBrIbr21a
 rWzXt9MyOlNGGVgqX+ExeOO6zAQosXRZvbtDbX825NjZhAJKlfI/uarrJCzhb+f2kh05
 rfrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hhmtewcMDoI2Ej90Da8Q0FFRbbURqdVEoTm9nBR6Ai8=;
 b=tiDDS3yEemi7TFdrtmpMFOSOaYVj9Q8Z82cCew+FoulpNS0LpASY7Zb4ZAodOPcX+z
 STvMX5n4GdlSGAkfNj6EpkmNDxEgTRFTrc/m61aSmgQopw69dcpOUEhtKWqIMw/KqHhl
 X0N86q4plDlTUpQcJ6gMrFxZn4GuS1u2tkXLR2pCh/Tvtm1tHfoOwyDjWRnMxM1KO0E3
 neyHOAv8PAD4rY6V4GTBIxY+/T/YPMXaXf0i+D5ygdktJ4Mz1cH5aJXtpmrFbi6wyVbx
 AadcNXmfV2RWEdNHWayiolWHU6kWoobYUdOrcGC5dR2Km1sDzO+B8toIIwI765/rjcZ5
 3RXQ==
X-Gm-Message-State: AOAM532IGU6aO9pFLSuB7Xm8jlfofPXHuc8t1Wb3HWTLGIfuy0TurIOJ
 G0E5eNefF7pPobSWxqU6oV4cKOlLuvxQLw==
X-Google-Smtp-Source: ABdhPJxxU4sKqu1Z0ywYl+TCNkPXcmJR8DAQiOC8V0ENTpQ9ZLYi57q0xnrGafIGrV1LbPD+cXDSzg==
X-Received: by 2002:a17:906:d057:: with SMTP id
 bo23mr2730491ejb.208.1631087197002; 
 Wed, 08 Sep 2021 00:46:37 -0700 (PDT)
Received: from DESKTOP-KJS3OJ9.localdomain (ip-78-45-54-3.net.upcbroadband.cz.
 [78.45.54.3])
 by smtp.gmail.com with ESMTPSA id lm21sm561653ejb.58.2021.09.08.00.46.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Sep 2021 00:46:36 -0700 (PDT)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Wed,  8 Sep 2021 09:46:22 +0200
Message-Id: <20210908074622.3271-3-danek.brat@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210908074622.3271-1-danek.brat@gmail.com>
References: <20210908074622.3271-1-danek.brat@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_004639_245711_6AF804E4 
X-CRM114-Status: UNSURE (   9.74  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: rpi_defconfig: Enable PHY core for dwc2 usb driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

VGhlIFJhc3BiZXJ5IFBpIGRldmljZSB0cmVlIGRlZmluZXMgJ3VzYjJfcGh5JyBvcHRpb25hbGx5
IHVzZWQgYnkgdGhlCmR3YzIgdXNiIGRyaXZlciwgc28gbGV0cyBlbmFibGUgUEhZIGNvcmUgZm9y
IGl0IGluIHRoZSBkZWZjb25maWcuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgQnLDoXQgPGRhbmVr
LmJyYXRAZ21haWwuY29tPgotLS0KIGFyY2gvYXJtL2NvbmZpZ3MvcnBpX2RlZmNvbmZpZyB8IDIg
KysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9jb25maWdzL3JwaV9kZWZjb25maWcgYi9hcmNoL2FybS9jb25maWdzL3JwaV9kZWZjb25maWcK
aW5kZXggZjQyYjg4MTlhLi5iODIzYTlhM2QgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2NvbmZpZ3Mv
cnBpX2RlZmNvbmZpZworKysgYi9hcmNoL2FybS9jb25maWdzL3JwaV9kZWZjb25maWcKQEAgLTk2
LDYgKzk2LDggQEAgQ09ORklHX1dBVENIRE9HX0JDTTI4MzU9eQogQ09ORklHX0dQSU9fUkFTUEJF
UlJZUElfRVhQPXkKIENPTkZJR19QSU5DVFJMX0JDTTI4M1g9eQogQ09ORklHX1JFR1VMQVRPUj15
CitDT05GSUdfR0VORVJJQ19QSFk9eQorQ09ORklHX1VTQl9OT1BfWENFSVY9eQogQ09ORklHX0ZT
X0VYVDQ9eQogQ09ORklHX0ZTX1RGVFA9eQogQ09ORklHX0ZTX05GUz15Ci0tIAoyLjE3LjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1h
aWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

