Delivery-date: Mon, 12 Sep 2022 10:52:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfAx-0022S2-K6
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 10:52:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfAw-0007CJ-2V
	for lore@pengutronix.de; Mon, 12 Sep 2022 10:52:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fxG9Goi9NGHL/B2vI1i6q0fd1JxTse9LsvHCZtuJ6yM=; b=SHt3yPJs9DxDie
	SYLunwy3W/cxGeJNXkJ31fh276nKxdfYQu+5yv421psbP0E6Qak3o5Lbg7C+hu2SPVP8vcrtRjfFm
	hrDhxwM02hb/YomOGXDZgJiC90hmnwQLzcF5M6Wo9maEv5n1vEp3SemGE4qa/tlpVVkT+ouZtbJdQ
	g3sZ0B+c4B8lsOUSo9wLk7CyFs5sTpCEkh39H2b8My5h0qLjP7Lr389lt1OzfbK/t0e7XieD1i7u+
	kPxhZP93SWPLwfAuE15/26Oba0FyN6LR8fAUeUZdY3nE5SalaOdoAa0UG+VCg7WYkD4q+j6bPo0vU
	l2dT7TM8f7rjiyLvHjkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf9f-007yTP-Td; Mon, 12 Sep 2022 08:51:00 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf9X-007yPh-IA
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 08:50:54 +0000
Received: by mail-lf1-x135.google.com with SMTP id a3so1690123lfk.9
        for <barebox@lists.infradead.org>; Mon, 12 Sep 2022 01:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=fxG9Goi9NGHL/B2vI1i6q0fd1JxTse9LsvHCZtuJ6yM=;
        b=V76taRSLdFoMpiS74zTX2P/pgqXE+DosATC+KuHp11MRQkzCSCyB1mMcvd/ZYAUBbn
         CI76Rg4wBxX72dHwaGGJgCdP5FlKFdVOADBNb9Np0vFQKS8+cpdVxWzJRLUV9Z6r5NJu
         k1Hg7bc1C8BLd3xTSqo4b//uIv0YTsGDNmLNbb9U/KQY6l4jwuRruEV1hDL2HdZ2i5WA
         Zeh1knvJ/UOekOQkeL3InaUSIVdGT92QvfC3KzrUZWHSfIlv+aO9UZdkFxdzlOppL4jm
         Vup3VBef8KTMxjSkjZmIBKBWSy0pzP0liNDlrcgU6Lg+NusOM+XYQWxam8aJnytmGwgB
         eu0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=fxG9Goi9NGHL/B2vI1i6q0fd1JxTse9LsvHCZtuJ6yM=;
        b=RsHjYf13p74RalEOldZHOH3u/LQnn6h5Wta5fO8WEy7F5bE7EhW0pHbLJi1NpTWaC1
         BTq2v0iYeqH3BR8g9p0JuQ982K7p0p0I7pCJv/du8DUyw6Bi1QgwwukHOLmSNSloaYIb
         4ALq1eWT2nARsFd9WlmhBOQ0nRef7RpLVnmIpgDrQb/7rtOm0Zh/Iu208M867oNt1fjI
         6GynUztS2WOtxIxyqJFicKncgE6lhVkM39LdVBAOKRKcqiR9VZZFT5XVYH/QliayIvhU
         zA6wkvfSQu+kEQFirmAjSAr4yeWwh6B9U/bAnDZ3JdyyiikJrEWT6r+Eh7m++jHegFls
         jylA==
X-Gm-Message-State: ACgBeo2L+Zg2bKTBhE9zUgfAk3MCIXUkFFKk+7un+31JMEm5UDHtnILl
	EMWSQxUa19pbK71/h/dCvLPy+Z3WJ1Jrcw==
X-Google-Smtp-Source: AA6agR7/5LzA2F9Mk91flCObVOiDd23eMUuP+YMycZO61iU7fDeeWKXgXzZX0F90VW/8UQndnygAgQ==
X-Received: by 2002:a05:6512:ad1:b0:49a:e0a8:da16 with SMTP id n17-20020a0565120ad100b0049ae0a8da16mr594024lfu.80.1662972649364;
        Mon, 12 Sep 2022 01:50:49 -0700 (PDT)
Received: from localhost.localdomain (109-252-10-171.nat.spd-mgts.ru. [109.252.10.171])
        by smtp.gmail.com with ESMTPSA id be33-20020a05651c172100b0026c12b9b329sm68830ljb.70.2022.09.12.01.50.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 01:50:48 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 12 Sep 2022 11:50:47 +0300
Message-Id: <20220912085047.84819-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_015051_650190_8E93E0AE 
X-CRM114-Status: UNSURE (   7.99  )
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
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
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
Subject: [PATCH next] Documentation: filesystems: tftp: fix code blocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The patch fixes these sphinx errors:

  Documentation/filesystems/tftp.rst:44: ERROR: Error in "code-block" directive:
    maximum 1 argument(s) allowed, 3 supplied.
  Documentation/filesystems/tftp.rst:53: ERROR: Error in "code-block" directive:
    maximum 1 argument(s) allowed, 4 supplied.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/filesystems/tftp.rst | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/filesystems/tftp.rst b/Documentation/filesystems/tftp.rst
index 8929213d3c4..e88ad3dd4c8 100644
--- a/Documentation/filesystems/tftp.rst
+++ b/Documentation/filesystems/tftp.rst
@@ -42,6 +42,7 @@ the opposite effect.  Performance depends on:
    100 Mb/s) it had to be reduced to
 
    .. code-block:: console
+
      global tftp.windowsize=26
 
    for example.
@@ -51,6 +52,7 @@ the opposite effect.  Performance depends on:
    example, the `fec-imx` driver reserves place for
 
    .. code-block:: c
+
      #define FEC_RBD_NUM		64
 
    packets before they are dropped
-- 
2.37.2



