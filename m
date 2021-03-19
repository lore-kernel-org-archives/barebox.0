Delivery-date: Fri, 19 Mar 2021 11:27:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNCLi-0007I2-KA
	for lore@lore.pengutronix.de; Fri, 19 Mar 2021 11:27:22 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNCLe-0003Pk-91
	for lore@pengutronix.de; Fri, 19 Mar 2021 11:27:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hg9j0BXo/6XTCQVmknsW4A12d3kRcNk3Aq6dG9JN80o=; b=GjKHis7C+QKcjX
	XgkDRwyG8h1hiLgrFuIKM/3KHsURnwpzvaORLTxWjJJ5HfAxZPq7FIqBIDLLCI6ilNdtwRBiwJ0Vt
	YvMO/gBIjqEl5vyCR2j3fHkKqXsLVrBDBFAlAsBgtOtqqrXvN/ZURVEgXS8bTH5mciIROO2OKKPTO
	BbPOrzTGnBExGgHRE8IbVwZDZ2kS/0tHf+9tqqAdomEH8Wi2s5KxV46KS6wfXGQF92kxqpax7WSXd
	GBVyfXSccid9mILPVRPft3VIUG1p38kRP+KLsMS9lUtWjQMxeugekQYexJdFKx96KFCPcB2yhn0iH
	wRliIr9xJD7M+D9VmBrA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNCJz-0078a6-TD; Fri, 19 Mar 2021 10:25:36 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNC8U-0074fV-Ri
 for barebox@lists.infradead.org; Fri, 19 Mar 2021 10:13:55 +0000
Received: by mail-lf1-x135.google.com with SMTP id o10so9125134lfb.9
 for <barebox@lists.infradead.org>; Fri, 19 Mar 2021 03:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mapnOCKfCvutehQl6zSm3MOi0vcuzwPWGrKm4mt1z5Y=;
 b=IF3uLVT9o9tiyBvtWY0rl1XEXo0EzY7c5qnJsF+P5C+3f76/jbc+AyeGMVpl8mAbJz
 QU30RGzWPvxOrClZyBEeva3vRC8YLe4Kgf/0IC0wVMSbaTZUZNSH2/Uid6dCUhRCUI5E
 HBcSByURlcVIHwvHMH6D8LZUmNqF5Iyd/O03KUzRcGG4CZyjRf7PpyYAip5hotTBmItb
 CWvChjZZOk3yWLdYK3r38/jWZDxnBek0aSq+XCbTivV8BsrjwW4oFwAer1TCAP7Qk+UO
 EOn02ckCRHeX7YEDAxLL1xtyNSJILIWvxOgpaEmM/gxUD9WgjgyNtW4q1zYF2Kf8PKUd
 0AfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mapnOCKfCvutehQl6zSm3MOi0vcuzwPWGrKm4mt1z5Y=;
 b=X+ZCA7Th7sJEujj7Nj/oyqkLkNvay1xlUjr6uH4BOw1p+gWizXL8Sf47avscW06bY0
 WTLVOjcYaImaeDMnqlezJkcfT474PuDc+fg2qHluOyOnxc++ueuKhM2if+77J4kwxcPO
 /gBt5sxzVSQPsspJ+JmgANkyo5DseiQxO9b9Ah7+rgX/TntqdMtGy3fW/FF5Q9NDyFq9
 NRbL8AEdzBfAqKCzUZ7xDHhX0XjhxaSNiLbrbAfnjjnMEnpse7wzq28EIp6/Jg8mLQzE
 qhROpVWVZOXn/gyu3+GLew/3cyG2MsD+wvw+NCQahWjGQ2my3wyTuKe835HqFDtoOHdj
 Y00w==
X-Gm-Message-State: AOAM533Qg3ZgJSv6yEk09IseI/HAOQH3XREKR3a7g4fjkGg1CCK7VBEu
 A3P9Pi+u86v73Sc+mqQy3+3Z8X1td/81zw==
X-Google-Smtp-Source: ABdhPJzrYswAONQgIwMAb62xA2p64aWeM/jZ8NdT6r++Zcm7mRXJN/OEbMODfswTH1kAt1/eI6WlYg==
X-Received: by 2002:a05:6512:20cc:: with SMTP id
 u12mr386713lfr.146.1616148820753; 
 Fri, 19 Mar 2021 03:13:40 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id 21sm562091lfh.231.2021.03.19.03.13.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Mar 2021 03:13:40 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 19 Mar 2021 13:13:27 +0300
Message-Id: <20210319101327.162176-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_101343_174701_B0147763 
X-CRM114-Status: UNSURE (   9.60  )
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
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] Documentation: mips: fixup qemu-system-mipsel cmdline
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fix spelling mistake introduced in the commit 2ab6d2a76994
("MIPS: qemu-malta_defconfig: enable VGA output").

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/mips/qemu-malta.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/mips/qemu-malta.rst b/Documentation/boards/mips/qemu-malta.rst
index 470be32f1f..e188ae8c64 100644
--- a/Documentation/boards/mips/qemu-malta.rst
+++ b/Documentation/boards/mips/qemu-malta.rst
@@ -33,7 +33,7 @@ QEMU run string:
 .. code-block:: sh
 
   qemu-system-mipsel -nodefaults -M malta -m 256 \
-      -devica VGA -serial stdio -monitor null \
+      -device VGA -serial stdio -monitor null \
       -bios barebox-flash-image
 
 
-- 
2.30.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

