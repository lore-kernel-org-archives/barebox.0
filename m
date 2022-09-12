Delivery-date: Mon, 12 Sep 2022 10:47:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXf6G-00227z-1O
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 10:47:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXf6E-0005xT-5f
	for lore@pengutronix.de; Mon, 12 Sep 2022 10:47:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVtpkmsMHMIsInsxeRYL+fzOO/JFSlGAM7RAb69R3cw=; b=O1KlfIHeS3UMy0
	UaAAkehYmUXZ1KM60bOrNvPAarnWrxvgfTtWNyg10+xI2llwTHLVwcg2CroMZ4stsoveyFn/8RgdO
	1hNXgKYMfI/rZegovzFK+yTzKUjS0+C1By2zR+6WnU13RBGiLfwonU7+mnl+6ajdY/E2oZmvtJ5D+
	VK2MSHN7CH7W8ZKaJfAxObXRs4+n1eY0/fsahukhQAajdYMcDDJ3zgsqGHiSlP0Owro55grrsi011
	T+/O7e7BNpYnwxavnFjg5njoTNQZY7mfqkdhjcJFuK6L5yZwjOVk/IWtq7RqoZDH5jJQ1IR79Vl2W
	3REhO+BtNNkDFZYfhHlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf4n-007vI9-S5; Mon, 12 Sep 2022 08:45:58 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf3X-007uh9-OH
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 08:44:47 +0000
Received: by mail-lf1-x136.google.com with SMTP id f9so12925167lfr.3
        for <barebox@lists.infradead.org>; Mon, 12 Sep 2022 01:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=dVtpkmsMHMIsInsxeRYL+fzOO/JFSlGAM7RAb69R3cw=;
        b=SZuq1eAUseH7bA24V6G7rX27Jc5BSudEzyWXAlPCbQ4oGQfcyAjLxGti3odA6xRH8L
         0oMDLVOMLfvq8HPIMf6be5tSEDVAD8c+R3btYbuuu00n3LsDrjZNZ0E556eiMevyquBC
         ueygoBzSOy6d/u8ZqqzMIgJGz1OrssZc8JiPZCZGGSTdBa0trjdr3mpavB2s/oghp/m4
         2RP9htJuCRTYECS9dDFawhnKHNB2pQ5M8bmH6sQjB1ju+qJHMzcUWQt5gPizMX6SfQAD
         8hDJTonslf2WNjr1yywDJN+kZ8KVXKM5Grjz8V6zl4WEKiurBa6aT4Fp813jBj6WVhp+
         kf1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=dVtpkmsMHMIsInsxeRYL+fzOO/JFSlGAM7RAb69R3cw=;
        b=1/sBnru/k6YKUaSKSABcq0twuYg0GD8MJ9KsEdi0O0V3rPH2c+fvCshyERQIRvizyO
         5phKKM7MQJtZK9UIBDgUD3Hi4QzLqFvWOIJ6FD3uG4fLWTTCDZsG5zrIhz+AxvtfjpZt
         MZze4PipJHUXwQkDR7EfzyuNf1st95NfTynY1kxX7gpRmayFhkCTvjrOCYwvevXpBQiN
         MHh/vXjekKgTElxWVTvlPuj0mdZs37jSZoK5Y4kY47ZB0cx5kAe2G8QTixGJyXaRz8Ax
         JFpQ41YSF2fLI0+zhIXn0wbExbrue07lDYpiQY3l9DPAJc98B5CedSeO0Kr3AuC+r1to
         W3xg==
X-Gm-Message-State: ACgBeo0IW7wX2zNtnvyo/Su1B1UuobPG7yTTWtPgziBe6cuvgh2Ntalh
	Sm04yXWpwLtbpv11Y+RbBr2roTR70y4RzQ==
X-Google-Smtp-Source: AA6agR4V6W5ZG8PTbeYh+hFiPSiaqD3RNNrwxsD1FzbDaAY2ZHZDkEt5HHeO0HsWGa35I70rXXRmlw==
X-Received: by 2002:a05:6512:3089:b0:494:965b:31c2 with SMTP id z9-20020a056512308900b00494965b31c2mr8201677lfd.22.1662972276865;
        Mon, 12 Sep 2022 01:44:36 -0700 (PDT)
Received: from localhost.localdomain (109-252-10-171.nat.spd-mgts.ru. [109.252.10.171])
        by smtp.gmail.com with ESMTPSA id n17-20020a05651203f100b0049a4862966fsm555472lfq.146.2022.09.12.01.44.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 01:44:36 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 12 Sep 2022 11:44:27 +0300
Message-Id: <20220912084430.84451-5-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220912084430.84451-1-antonynpavlov@gmail.com>
References: <20220912084430.84451-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_014441_097536_5E0912D0 
X-CRM114-Status: UNSURE (   9.06  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] Documentation: barebox DT aliases: fix sphinx issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

sphinx issues:

  Documentation/devicetree/bindings/barebox/aliases.rst:8:
    ERROR: Unexpected indentation.
  Documentation/devicetree/bindings/barebox/aliases.rst:12:
    WARNING: Definition list ends without a blank line; unexpected unindent.
  Documentation/devicetree/bindings/barebox/aliases.rst:13:
    WARNING: Definition list ends without a blank line; unexpected unindent.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/devicetree/bindings/barebox/aliases.rst | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/barebox/aliases.rst b/Documentation/devicetree/bindings/barebox/aliases.rst
index 527cc85ef69..e6face2c331 100644
--- a/Documentation/devicetree/bindings/barebox/aliases.rst
+++ b/Documentation/devicetree/bindings/barebox/aliases.rst
@@ -2,9 +2,10 @@ barebox DT aliases
 ==================
 
 barebox can use the properties in the ``/aliases`` node to arrive
-at deterministic names for devices, e.g.::
+at deterministic names for devices, e.g.:
 
 .. code-block:: none
+
    / {
    	aliases {
    		mmc0 = &sdhci;
-- 
2.37.2



