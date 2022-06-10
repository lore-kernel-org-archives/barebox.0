Delivery-date: Fri, 10 Jun 2022 07:42:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzXPp-009fLa-Ar
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 07:42:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzXPn-0007ME-NW
	for lore@pengutronix.de; Fri, 10 Jun 2022 07:42:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JCHfmRYXX1B0K7mglytHlsPhY5fVFfkIHf+MLEWL10=; b=fKzuUlosvQWbxC
	yq8vY0omdFv27pY/I8NPsOzqvc53jamIns18YqTCCptseWJsn+rxeuF9uytBY6I5TBl/SmGoGrNwG
	p4ga9CvHUqw2U+DmryCQaLkAy1fKIfXn8EqJ6KXhiuRl3x5uHasYTxrysn1lL7LDT/DQQyqVXx/1v
	/jBNhMTIys8jjX6fY/7QOaH+Vd+oT0Pz4QN3ZB2ar9vYTyea35YH/8CdTaeXQztI065LXFIJO7dCY
	EixQWf9JsrxmFxoC+JeH8P8/jxNASg18qegwPanCUjI1E+stA4+qa7wkOaN1poZarVkgUkY3EJJcv
	ZugMalnJcjJ7rYeeDntw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzXOY-005zzO-Ky; Fri, 10 Jun 2022 05:41:18 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzXOH-005zs0-Vo
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 05:41:03 +0000
Received: by mail-lf1-x130.google.com with SMTP id c2so21749990lfk.0
        for <barebox@lists.infradead.org>; Thu, 09 Jun 2022 22:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zKxENawuYJnrRGZppl/pvzd+8FOdA/lLbd5HzO7BQ9M=;
        b=W4/n+YJPYQVJNrXfZA0xoNyKl4GetzyJP/5+e3r/N1WKU6O/vENYpKlbTFkq9x1HbM
         u+WWfcZD7iws50R8QvAP/hQs1qpcnzLypYlAgpNLkspOEsfPAiAqdCTgIcdDjsE+wW5a
         +sxm8BHc1bh4E+jTZT3S7IFHsbE6CvKwA1vSXbdtN86aw5OcLBcERb9asNkvNeEEBMl9
         KS/K1xS7wrUdkDuVf1AZxugOMCUkClnhSUsUxPbvt+HGlUFxIqHxt6BkniYf5ZRKsA6y
         dofoO+BtHjDNccgssx2N1+F6dkwsN5biISzO5SpVqyWrIGocTT1y3OoCNksvG7YHs6tx
         mKSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zKxENawuYJnrRGZppl/pvzd+8FOdA/lLbd5HzO7BQ9M=;
        b=nqO6wx4T0DOU0aWEyTz0QZYObSJqILma9JuDZMfqUC/wx2NpYZoFx26GKZaNAOeY7o
         iBI6T0XXjbk1WqIfNoQHPBZL/ARqR3nmz38gWU2m6hdYaOjeow90Nw+uP52KxSaIkgm/
         g+/ABI3GF2UQMuophuTQ0PysPj55Bha6XR31qnieExmQDx/KBC2JPwijNUmnFe/hteUA
         XwApHbkRU+sv9WZTVGmXXe1/7ovfsvzFjW+CtiaL6f8sZ3tijMe1BX+U7Iq4RVQtoQLW
         KFcuIAr95YzhYqdPl4K481rQfXDmq4Tyy/n1B8qTfU+z2QIM19vVjpcYM65Jw0e5KP+j
         aOrQ==
X-Gm-Message-State: AOAM5315qiRf+wvZFNWx0DkkbPEPkyurgo1U8jZS6khiLMJQCzu6SyUO
	zwFwkfScfkjKEVii5HsWcMzCeVsWzkE=
X-Google-Smtp-Source: ABdhPJxXIyY5BAKJjGnh+qYAldbUxodDK3URmp11HhfZ1ZYPIm3upX2moMA5QGxuH1IGMOnRAxcmfg==
X-Received: by 2002:ac2:5201:0:b0:479:3923:9559 with SMTP id a1-20020ac25201000000b0047939239559mr16064217lfl.553.1654839659369;
        Thu, 09 Jun 2022 22:40:59 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id v21-20020a2e87d5000000b0024f3d1dae84sm4009770ljj.12.2022.06.09.22.40.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 22:40:58 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 10 Jun 2022 08:40:48 +0300
Message-Id: <20220610054051.4911-7-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220610054051.4911-1-eagle.alexander923@gmail.com>
References: <20220610054051.4911-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_224102_075428_7ADB5B3B 
X-CRM114-Status: UNSURE (   7.33  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/8] lib: logo: Ignore more generated files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 lib/logo/.gitignore | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/lib/logo/.gitignore b/lib/logo/.gitignore
index 800a44c414..62ee7d270e 100644
--- a/lib/logo/.gitignore
+++ b/lib/logo/.gitignore
@@ -1,12 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-barebox-logo-w64.bblogo
-barebox-logo-w64.bblogo.S
-barebox-logo-w240.bblogo
-barebox-logo-w240.bblogo.S
-barebox-logo-w320.bblogo
-barebox-logo-w320.bblogo.S
-barebox-logo-w400.bblogo
-barebox-logo-w400.bblogo.S
-barebox-logo-w640.bblogo
-barebox-logo-w640.bblogo.S
+barebox-logo-*.bblogo
+barebox-logo-*.bblogo.S
+barebox-logo-*.bmp
+barebox-logo-*.png
+barebox-logo-*.qoi
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

