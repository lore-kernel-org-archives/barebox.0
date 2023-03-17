Delivery-date: Fri, 17 Mar 2023 18:37:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pdE1O-004C92-Vh
	for lore@lore.pengutronix.de; Fri, 17 Mar 2023 18:37:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pdE1O-0004c4-MQ
	for lore@pengutronix.de; Fri, 17 Mar 2023 18:37:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V5gRSd6MNZ71gQ8RATrHRkMe5bVAj56f7ETfT7iiq7c=; b=swO5pOJNbTFhqwD2+MNZfAEA4d
	LZRHfeI+phnctMVWBQHn/ZgXT/50ct6zl811GJ6MVigM2lUN/UJMgL8mqDLaGdfsd/1hEj9ChXAuV
	3RMxI1TxlZfnHEQSqaIbuCZG0/AVvhOxokyhEJRUB1ngNwglLKNlI9zd/8/OyslENXvReVbPUNGFq
	mdFCMEOG668UmYYAaRANL5viu18Nvu/acQkpDRJXn845OevzSpHjucZ357+TUpUDtgTDliyuiWsl1
	kwZPX0d5DZvSe175UA1g2j5O4XJ6pnMh3hHFF+QO90Qyqt9LFlyhPMnvDt4D1VDmxxVUvgAU/igBt
	emw7jDJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdE03-002u8w-0T;
	Fri, 17 Mar 2023 17:36:19 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdDzz-002u7E-36
	for barebox@lists.infradead.org;
	Fri, 17 Mar 2023 17:36:18 +0000
Received: from Hephaistos.local (unknown [94.31.103.219])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id DCBF44002F;
	Fri, 17 Mar 2023 18:35:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inside-m2m.de;
	s=dkim; t=1679074531;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=V5gRSd6MNZ71gQ8RATrHRkMe5bVAj56f7ETfT7iiq7c=;
	b=MwXHj3KnWNfQz2ChICmJRo0ZOIGnwE5vqK7sx/M8owyy1l50Z2XozCCq+Im03nNN/uJhMF
	s3I34x3ZwBPJbxi9tnE2gvc7T8KOsFO+C3HrqDdM4AjZJ8wsbeOxrVEXrGRvO+6pZ4hzJR
	FSnjjrDb6dsn+jtxXl3iewblftfPtuM=
Date: Fri, 17 Mar 2023 18:35:27 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZBSk37q2IlGI0SXQ@Hephaistos.local>
References: <ZBMM0s2psJJj+/BI@Hephaistos.inside-m2m.de>
 <9bcfc2f8-72f4-b994-0c61-07e34ccc22a0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9bcfc2f8-72f4-b994-0c61-07e34ccc22a0@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230317_103616_470759_2CEFEE2D 
X-CRM114-Status: GOOD (  10.06  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Autoboot when idling at prompt possible?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Dear Ahmad,

thanks for your kind support.

On Thu, Mar 16, 2023 at 01:51:39PM +0100, Ahmad Fatoum wrote:

> If you keep ctrl+c pressed during boot, you may abort before init runs,
> even if global.autboot_timeout=0.

Interesting, I double checked "my" barebox for this feature, nice to
know.

> You can enable watchdog before init runs, e.g. in your board code, let's
> say with a timeout of 2 minutes. If you have reason to use the shell, you
> run wd -x manually or set global.autoboot=abort and reset.

This sounds neat and not over complicated. Nice Idea, to have a watchdog
enabled at barebox level, why not. The manual required "wd -x" is fine.

I have a beaglebone board, added CONFIG_WATCHDOG and manual enabling
watchdog via "wd 120" and disabling vie "wd -x" works fine. Now I wonder
how to enable at boot up.

Something like

--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -25,6 +25,8 @@
 #include <linux/err.h>
 #include <mach/bbu.h>

+#include <watchdog.h>
+
 #include "beaglebone.h"

 static int beaglebone_coredevice_init(void)
@@ -84,6 +86,9 @@ static int beaglebone_devices_init(void)
        if (IS_ENABLED(CONFIG_SHELL_NONE))
                return am33xx_of_register_bootdevice();

+       struct watchdog *wd = watchdog_get_default();
+       watchdog_set_timeout(wd, 120);
+
        return 0;
 }
 coredevice_initcall(beaglebone_devices_init);

?

I can't test at the moment because I am remote and cant handle a abused
crashing barebox at the moment. It compiles, though!

The passwort entry approach is kinda neat to, I will investigate this
feature too.

Kind Regards
Konstantin

-- 
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Straße 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de 

Geschäftsführung: Michael Emmert, Derek Uhlig
HRB: 111204, AG Hannover



