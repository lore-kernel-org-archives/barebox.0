Delivery-date: Mon, 02 May 2022 08:55:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlPy3-005khb-4i
	for lore@lore.pengutronix.de; Mon, 02 May 2022 08:55:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlPy0-0004f4-OG
	for lore@pengutronix.de; Mon, 02 May 2022 08:55:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=paRgYqyAT4dTZNeGYLzTZGot6+U2mBoZyGttq9Dt5o0=; b=DSFM/wQh8J7qjI
	4cSr8luddBJ/f9ZgBlfUFxob5cLXDIzZV3iG4xBkZAknoHDeka/yvNOc/iw6wq471R79Kjke0mOmI
	Tk7F+cVt1xTNrlsfucQyn6Ek9bkSs1LMDGSR/VM2ezPWXZg4j7rVqSUA3CgjGCdsEfJvfbG8dV9QJ
	FrOE6uyFybu1g5IQlNMljFIhzo0wKpeUSTOd8Ej5ZyfPrYfl5PWHLMcd6ZBb9pmLZ/NGwIYtGCGep
	mqeyND2Dlcs/MeIJuuNIRFvIbLtKdq5v+LDXBh5UZ7xWHkzaugP8YwMRxJgxOV8xsNgb+ik1awr1w
	/T9ggcQyKIsDy5p7aCOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlPwZ-0005ug-4L; Mon, 02 May 2022 06:54:03 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlPwT-0005tf-0Q
 for barebox@lists.infradead.org; Mon, 02 May 2022 06:53:59 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by mail.gandi.net (Postfix) with ESMTPSA id 0B6821C0003;
 Mon,  2 May 2022 06:53:50 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  2 May 2022 08:53:46 +0200
Message-Id: <20220502065346.1804502-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220501_235357_227737_6D8C5DAE 
X-CRM114-Status: UNSURE (   8.56  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] Documentation: boards: stm32mp: elaborate on how to
 build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The docs only show how to configure, not how to build the configuration.
Add the missing info to make this more evident.

Reported-by: https://stackoverflow.com/users/18074165/fila2016
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Documentation/boards/stm32mp.rst | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index 6f4b14049ad4..0c9615b290a5 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -28,7 +28,9 @@ Building barebox
 
 There's a single ``stm32mp_defconfig`` for all STM32MP boards::
 
-  make ARCH=arm stm32mp_defconfig
+  export ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-
+  make stm32mp_defconfig
+  make
 
 The resulting images will be placed under ``images/``::
 
-- 
2.34.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

