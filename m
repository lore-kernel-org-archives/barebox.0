Delivery-date: Fri, 19 Mar 2021 19:27:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNJqG-0007rH-58
	for lore@lore.pengutronix.de; Fri, 19 Mar 2021 19:27:24 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNJqF-0000Hl-FC
	for lore@pengutronix.de; Fri, 19 Mar 2021 19:27:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TSaxSybRQWtfAhIqFGHlH4p65qhVIVmcuyVdfQXOPJY=; b=E1hEwlsLhRe5OrsLkzeHZVK6G
	wRjgMgsQ5lmukCUdmNPl08VvI9b/ofpEpX/nsmrPDIND+Cl27I2wxA91A6YqpVkUvx2MyYEdhZFxI
	csPAUx76K5ZQobiWBhjeNagg81wAgdOHf/T5cMtL7MmF2VEVSdnZsfKc3GkpcSiJaKaDQtaJE0Oqs
	CVUKllu/dMq/oKYzkPuoryoad0hlK0vQsGfjovX74LpzcCqTwzA33ddP7UOLeRGhw9yIcR4CWEaIX
	VatkjWHuxDUUBglSdW6sh4RxKxUWZDvBL7CW0pyJ6ttF56ChlolZo3OLPqv3X66gUcz2BcMd+gAPr
	wphgGa1ZQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNJpC-007w9D-UG; Fri, 19 Mar 2021 18:26:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNJp6-007w8N-6G
 for barebox@lists.infradead.org; Fri, 19 Mar 2021 18:26:13 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNJp4-00007E-7M; Fri, 19 Mar 2021 19:26:10 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNJp3-0001Nu-VA; Fri, 19 Mar 2021 19:26:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Mar 2021 19:26:07 +0100
Message-Id: <20210319182608.5054-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210319182608.5054-1-a.fatoum@pengutronix.de>
References: <20210319182608.5054-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_182612_291970_F8CE6267 
X-CRM114-Status: UNSURE (   7.27  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] common: boot: select dependency CONFIG_GLOB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

bootscript_scan_path calls glob to collect the bootscripts.  This won't
work without CONFIG_GLOB, so select it to ensure it's available.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index 37204fb40a44..8abd47a7569a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -121,6 +121,7 @@ config USBGADGET_START
 	default y
 
 config BOOT
+	select GLOB
 	bool
 
 config FASTBOOT_BASE
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

