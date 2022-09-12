Delivery-date: Mon, 12 Sep 2022 10:47:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXf6h-0022At-Gw
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 10:47:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXf6e-00064P-BJ
	for lore@pengutronix.de; Mon, 12 Sep 2022 10:47:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecx69LVJh6UvWbbT5rD7P/b+D5WzmL6X109DZ2ZZvBw=; b=BhElYWagqEdtkR
	xfgnz9cmZa+R2kUQmubfeY7Ug2E8fexDs0Yiiu0kY7W5R+dENhSF8CM7kwpWOSml+QNARbdr3OcfV
	7msEwXlU3xPGth9Fsez+y02lklptAtiDYPgWKt6fTWn9460VQkUc0AejrPGHY2dVcvcF+BxM8nPWx
	KeBL8AAFBtJ6x2JgSel2O4YplExEt/lPyL7Jzw+cp93dECioGfL7fPm2XDJjQNoY6qTlTTi2T2Epw
	jEeEIRgQN/62qWyhoDg2tFvh1MGpBuvvKi3JXJrrKa4/feqUSVZLxV9CGNCqfhV4oSC2gKZOY3OrO
	7B8jFIsj0Bg9A0s23KPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf5A-007vXp-BZ; Mon, 12 Sep 2022 08:46:20 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf3V-007ugQ-6o
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 08:44:47 +0000
Received: by mail-lj1-x22e.google.com with SMTP id by6so9655047ljb.11
        for <barebox@lists.infradead.org>; Mon, 12 Sep 2022 01:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=ecx69LVJh6UvWbbT5rD7P/b+D5WzmL6X109DZ2ZZvBw=;
        b=hUkvAONfxIJvRwNuGUz9migAnNlnVSWSBlJaQZlEmVHjplbisQr2A9qkdiKraeI9JX
         ywTdfdSFyddbvqn4NtUgES4Y/tpM5jKPTykTGi2dV9KozJaoPb2k13WKJiSZRQBIyx2B
         4wUVEH7t1VYglIbgSQOErqynabist5alnhe5d+9Fl4ealwirgvP0hRXNRIhacEoiYF9M
         b0+2qk1DcL5jpJTBa3VARal3MboAOr79dHXbJQRrq4y/bj02DtVwxd2w4dQka5sy1gl9
         vbwKFdtG5Vgu0xGRbpne6wLghM3MKjZZhP+1xe5goHYQcabIxKyo9K/5EddCdEwmyY4Y
         SIzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ecx69LVJh6UvWbbT5rD7P/b+D5WzmL6X109DZ2ZZvBw=;
        b=Ec2dNuFHYclD8vYnAwBv3Ozx9jNfv7UkdpACVBDP6tb1mVQs36HnLO0QHzrrmmdG2R
         lPB989z7fMq3xh8Vi00oLdCDEH3Arg7gd+7HOILOdj4h7O/DMQvd/M9xP+eS1sRcTCyi
         UYk85urYJyFcpxn5I64zth34iwF6Gby1Fjccx3mSz1lx3+kYjEKxQ1/I2ukn/kJDm2ma
         DKG6eFIzsyvKxAQXepjKaMNtAG8SnthARWW0I5U4MJPp6SMLg/6Hdhm9JtqlzHGfr4SC
         4EabPTmAIFF1gjLPDATi8yn091hWA5VMJLC9C8vX/5is1YYqcUdkaeZ8iJpZtCBmXKcz
         whQg==
X-Gm-Message-State: ACgBeo17wZgOywYyfG/G2fXhb++V8FqZAF5LX+pasp5TNmx1AjLs9z5W
	a7xkdWDbBKlbLwLQBS213sUckNg/Po4=
X-Google-Smtp-Source: AA6agR5nc2n+bWugIqR9d/vRfC74cCIY8aSjY+hWNWHvvi3gXbIwmsgKCf7Y9lwzgrKV361pvcBglg==
X-Received: by 2002:a2e:93c3:0:b0:268:e24d:22f with SMTP id p3-20020a2e93c3000000b00268e24d022fmr7328245ljh.501.1662972273792;
        Mon, 12 Sep 2022 01:44:33 -0700 (PDT)
Received: from localhost.localdomain (109-252-10-171.nat.spd-mgts.ru. [109.252.10.171])
        by smtp.gmail.com with ESMTPSA id n17-20020a05651203f100b0049a4862966fsm555472lfq.146.2022.09.12.01.44.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 01:44:33 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 12 Sep 2022 11:44:24 +0300
Message-Id: <20220912084430.84451-2-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220912084430.84451-1-antonynpavlov@gmail.com>
References: <20220912084430.84451-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_014441_111207_A97D7424 
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
Subject: [PATCH 1/7] Documentation: OKUD Max9331: fix sphinx warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

sphinx warning:

  Documentation/boards/mips/max9331.rst:129: WARNING:
    Pygments lexer name 'assembly' is not known

Use pygments lexer for Gas (AT&T) assembly code, see
https://pygments.org/docs/lexers/#lexers-for-assembly-languages
for details.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/mips/max9331.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/mips/max9331.rst b/Documentation/boards/mips/max9331.rst
index f09dabc2da1..f7529f9874d 100644
--- a/Documentation/boards/mips/max9331.rst
+++ b/Documentation/boards/mips/max9331.rst
@@ -126,7 +126,7 @@ it jump to 0x9f020000 where the first instruction of barebox.
 This is usefull when debug with jtag or choosing different bootloaders.
 or even boot kernel without bootloader.
 
-.. code-block:: assembly
+.. code-block:: asm
 
  lui  ra, 0x9f02
  jr   ra
-- 
2.37.2



