Delivery-date: Wed, 03 Mar 2021 15:03:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHS6G-00084o-A5
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 15:03:40 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHS6F-000747-MU
	for lore@pengutronix.de; Wed, 03 Mar 2021 15:03:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vDpdIOlwga97NZ0BSXTzNX8Xw38+ahKCDchFiltVNvc=; b=EiczpA80LMdtFtNQFH8JYcx+2
	pRVqKrzDgo5yMwF6a+eUQmvPCfOzFopqJ8wITrGak8tqs7qkq/i36ydUSBRX96C4t+kihykQkaUi9
	FBlDt8320rVpnHG1nQP3lozlVYPNgbXUO/jBQwzyeQEHy4YFMSVcV4MUj16HGMvm+gW/pNS1YbOGs
	QgyN6/RBvXS8Yjd1KBoAE3gNrGP4gfc4gfa9yL+UCOq1MXGU5f6SfDAP7mboq1HQdPcVKttChxjeN
	eYBA9nx4xuUE/CQ3PwfYBYmVNRHN1IPi+XunpIBREuD7/4yRX6t7Tmbr4ka0HXxdxnUMt4NRXv4+6
	HvsGMsGoQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHS3q-0051s7-KN; Wed, 03 Mar 2021 14:01:10 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHRtl-0051VJ-AF
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 13:50:51 +0000
Received: by mail-pl1-x62b.google.com with SMTP id z7so14062045plk.7
 for <barebox@lists.infradead.org>; Wed, 03 Mar 2021 05:50:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Oqp8UirvceWnYqQOXPgsoX+mFS/UDFVfBs/vPdo73c0=;
 b=jF4g7WAwvP0bWOIc5kwecTeTwP88A7J0S+Q0VSdH4EO8pSLF4XvC1dopaPgAkF5efX
 UirRGGAAAg+bA0aKk4Gr0nmsyVIgJvBvXxo3Lls06roJlBYWQHl31jDiyYErjIJZ9+Bq
 pe//4AYQIb9F8fCjvYjPH8yOz4M/vpolYkHsOKIIqqTzCRK6qrqd82G0suVsBtsYAuHy
 7ZvAK/Rk8wkGT0ZS+AxTRHTfNMROiv/bW9t/FmU6TfI2kWOPx+N/7Enl33JMDkm502pz
 /iE223RmN7MJUBOQv+8tIKiOb1U7HmG4iPcTUUROx/Hm7HLU86HW7td3rxrkWVhbaF8y
 Bruw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Oqp8UirvceWnYqQOXPgsoX+mFS/UDFVfBs/vPdo73c0=;
 b=iFlvlUx7YZmg1wBSzatqH4TVYoiRVEHeY6+kUSuMhIuloMumlIAGgLncEX1RT2JeKM
 caDuDXCnJHRr4sOpTF3Sz/t0z777llyf7a8y6iT7ubjAYLJp/pdl59gQUP+tGoV2H632
 M6WJtTRm0YHJRqAq0IT8yui5fWEcwES2WruE0J9CBPqE001ylR1BhwCPVeP+hmuCWrkt
 jKZYJnO4clubhcZHun845LFp1ttPwAV1OrWLq1K/h6Sq05JHs4abRnKdt4kkpBPbUIwW
 oW3xxyIVeNBx8FbvIYHdRZ2gSvhJv2e4MF3rxoVTMmoBGz1j3ibhvo1KyUQzV7yeBRs8
 Z4hQ==
X-Gm-Message-State: AOAM533TZTv303eVnBj+r4yCkBk/4fS5ciSTJvM1hG0R2uxxCr/dD8a1
 x5JEeOwNqAtRIqtnwGm5XKE+dPucVr4=
X-Google-Smtp-Source: ABdhPJzngJXZKiH4vgqMF/OK4kgkcWPPMKV+vidA91Ga0CAZ9c43FbfL2UMAf2KFghi3Y0xN3vWJGQ==
X-Received: by 2002:a17:90a:71ca:: with SMTP id
 m10mr9618008pjs.2.1614779443057; 
 Wed, 03 Mar 2021 05:50:43 -0800 (PST)
Received: from localhost (g98.115-65-200.ppp.wakwak.ne.jp. [115.65.200.98])
 by smtp.gmail.com with ESMTPSA id d24sm24485028pfr.139.2021.03.03.05.50.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Mar 2021 05:50:42 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: Barebox <barebox@lists.infradead.org>
Date: Wed,  3 Mar 2021 22:50:24 +0900
Message-Id: <20210303135026.3450789-3-shorne@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210303135026.3450789-1-shorne@gmail.com>
References: <20210303135026.3450789-1-shorne@gmail.com>
MIME-Version: 1.0
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
Cc: Openrisc <openrisc@lists.librecores.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, Stafford Horne <shorne@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/4] openrisc: Add gitignore for dtb files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Stafford Horne <shorne@gmail.com>
---
 arch/openrisc/dts/.gitignore | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 arch/openrisc/dts/.gitignore

diff --git a/arch/openrisc/dts/.gitignore b/arch/openrisc/dts/.gitignore
new file mode 100644
index 000000000..077903c50
--- /dev/null
+++ b/arch/openrisc/dts/.gitignore
@@ -0,0 +1 @@
+*dtb*
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

