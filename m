Delivery-date: Wed, 07 Jun 2023 07:13:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6lUQ-00DxMX-8J
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 07:13:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6lUN-0001WC-U1
	for lore@pengutronix.de; Wed, 07 Jun 2023 07:13:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sIGBdOAUrldwcOLnYbUu4fkRMnFqQJjAD8OuB7xHps0=; b=KuOd1gTx9nLGuI
	Fo3H6NMw29frrlmEWSSsP22fGu4yiECERq9ilcolrQGsZhc97jNk2Qfbc6tIRrPFkrFsSqyymaZuW
	oAguQGCLnBtlrvZAUDNFZk4zaE6s3RQ6H/bhTXo4D/6gILVA2u/h80dzLSJDdJrcW0GzBYXN8SKl/
	SvZJEf5fDwfYFpMLnwECO/KFJxx5dMphF3a2uJgwPn/lBpfG47x4ITmuN2CMOvD8fdMVhCDHMp/Zg
	wfSUE0C4dv+MxYph6BdnLdbqw87h5sgPZVNBHcQj99y0172LmsiZC5GSyR5NfHvi/6zHhY8H+sc1+
	swkJ/U3eIi666Wg4tOHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6lT6-004Okz-11;
	Wed, 07 Jun 2023 05:12:24 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6lT0-004OiJ-2t
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 05:12:21 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b1bb2fc9c6so51233181fa.0
        for <barebox@lists.infradead.org>; Tue, 06 Jun 2023 22:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686114731; x=1688706731;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sIGBdOAUrldwcOLnYbUu4fkRMnFqQJjAD8OuB7xHps0=;
        b=MQ364TJ3CahpKIICSAqzOcXUQ0QgU7ti+sVHAEcdlLH5B1VSI8mm7r2OH4ycFHF7xn
         iCrhnhucAgLLErxoV50b/42WKxquEYaPxkSzuwrjx0mcDMSYTMva/1xKW/l0tmvsiKgh
         lp6oGU56qxkEgW9F6lfhp+jxn5JsTMyJeK40WnNdxr0jcrdJaNKsOUg6n0ybCU0/TW8e
         u0aQM3sTtboHjFHdAFaTeJkmsRo/xsfrXS5e5tDgAwV+90x4tl646NygP0C6JEjI8Bez
         sXyqUYq9BekB15Pp8nx7NAHvSqCUQHhsqWB4iFS6Q6iwQBBE1YJBB0coDLuZOo2vtRBr
         5mkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686114731; x=1688706731;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sIGBdOAUrldwcOLnYbUu4fkRMnFqQJjAD8OuB7xHps0=;
        b=lZlrU6JknTjGySAfrAngpRH2Pp+7WD+Zex5+k1YMnWZ+RXZh4sKKCSN9QzM07XUb9M
         W+glRFOd8pVlnKaSU0IUBF+TWZQpBvLGEzAmCjyunGSAyH6DpPsyItLXxLK8WyHJApF1
         OCp40fNG3RnRMdM03ByuI4dQxIJ5HAkRohCPW3vHDmqdTUAw/EHg9GCfNrZjqMNHGiVm
         YNwX2HFYgMI7+DXKYQpfSzz8H6LyYEez6fmqwzkKOJk9y/xG/DZ2VGHwwsVVR+VeZBy9
         U2qb3ZT4FOEIG2kqOp1/eYpzIT1bQz5mttbkubTlzHbcP4cHeKfwgjFRqnJIpquxVR6y
         br2g==
X-Gm-Message-State: AC+VfDxcf+B6MG+b8Kv+TWcpboCRnpdlTHLS6uCYh1AXRAmB7+c/kb2g
	ln4MMW0yejtxOZe2lD7nxMasgS55GFYMvQ==
X-Google-Smtp-Source: ACHHUZ6Ymtp/dVw5aXlP15hqFshso/NhC60kmsgbsinHPIsMKjEo12kgo/AtYR9u0p2v3Z/Uxhw5vA==
X-Received: by 2002:a2e:9c55:0:b0:2ac:78d5:fd60 with SMTP id t21-20020a2e9c55000000b002ac78d5fd60mr1805544ljj.9.1686114731291;
        Tue, 06 Jun 2023 22:12:11 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id a18-20020a2eb172000000b002a8ac166e55sm2110913ljm.44.2023.06.06.22.12.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 22:12:10 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  7 Jun 2023 07:59:39 +0300
Message-ID: <20230607051155.3175-3-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230607051155.3175-1-denorl2009@gmail.com>
References: <20230607051155.3175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_221218_940945_DC6B68D8 
X-CRM114-Status: GOOD (  10.15  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] test: mips: add QEMU Malta 64le labgrid config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 test/mips/qemu-malta64el_defconfig.yaml | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 test/mips/qemu-malta64el_defconfig.yaml

diff --git a/test/mips/qemu-malta64el_defconfig.yaml b/test/mips/qemu-malta64el_defconfig.yaml
new file mode 100644
index 0000000000..22562d5b7a
--- /dev/null
+++ b/test/mips/qemu-malta64el_defconfig.yaml
@@ -0,0 +1,22 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu
+        machine: malta
+        cpu: 5KEf
+        memory: 256M
+        bios: barebox-qemu-malta.img.swapped
+        extra_args: ''
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+    features:
+      - virtio-pci
+images:
+  barebox-qemu-malta.img.swapped: !template "$LG_BUILDDIR/images/barebox-qemu-malta.img.swapped"
+tools:
+  qemu: /usr/bin/qemu-system-mips64el
+imports:
+  -  ../strategy.py
-- 
2.41.0



