Delivery-date: Fri, 21 May 2021 18:36:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lk88G-0004oe-Eb
	for lore@lore.pengutronix.de; Fri, 21 May 2021 18:36:16 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lk88F-0000n1-OQ
	for lore@pengutronix.de; Fri, 21 May 2021 18:36:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PltrJ+gMJ17Du1CawfD+GWJRwkcohe2VEmMyveb1MUw=; b=lvI93zpyFHQVxEvbKtTG63luzm
	UptjAwjzaYt37HhDxZ9Py78tGn6/9ZKI+sIQcrdkDcnKqeMR+PrV80HxhKh78vVyaxvRCulOnWFdj
	6vK1DqZ8frxPiG9CQmM3mgiAMYFrD2MckojG9L+XWRyugEJ2ts1teUVIcQmDaBOkkESSQTL5k8gSP
	QWyMZtDL+eVsP2sREj8AyQBazVj4Qg4upk+tPw6qgBaqNXkRxRsbA69Cgc7H+xjGy2ZqWAArZac+5
	D0IBgqzSISe4I++dNnsxquyDDAVBd2ZL/PKVJBpZMScaZM9D69f/33Wev8wBnpZnU0Xs4MZWyPn2s
	sYePWPow==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lk873-000GvY-6N; Fri, 21 May 2021 16:35:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lk86q-000Guj-At
 for barebox@desiato.infradead.org; Fri, 21 May 2021 16:34:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Type:Content-ID:Content-Description;
 bh=O6i/cIjomBE5y8/mpF3ONNRywcpLIauLm1tgUY2+c5Y=; b=lAlvUyZKlyLK44WKcVCVCEb5kY
 wJ9aOHjsIUEv4D7JoEfxZ5XHi0rhbMP6qfBZzP39k7qnTGQmuLEg7VmJOHkcA5ihU/SnYGoaqUyvP
 K916YO41dv0XVTEE71l/QLHKpQ5t7AQlQQu1LAa8xUTqlVGvlKuGcpeHuw8CxOKi1ZVmGOEyIyWJ6
 QO5/6Ac/F7EdymTL5NKD7dl3I1eKJZXP0clOKwH+K1Ba3PYj5DyYu/dlSGVb7TiHQURldtRkE7zE1
 Mvun+nkA7Qi06i5pphLLBN0eJuhtwSM8xTBu0vOJzoxqxtMGmOUI5dwtgKuBaVkRxzskD3GU/Z/RP
 Ih/EfO1g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lk86m-00HHUS-Gw
 for barebox@lists.infradead.org; Fri, 21 May 2021 16:34:47 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lk86g-0000MD-Hf
 for barebox@lists.infradead.org; Fri, 21 May 2021 18:34:38 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lk86g-0004XU-6X
 for barebox@lists.infradead.org; Fri, 21 May 2021 18:34:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 21 May 2021 18:34:35 +0200
Message-Id: <20210521163435.17365-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210521163435.17365-1-m.felsch@pengutronix.de>
References: <20210521163435.17365-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_093444_588433_63F57E7F 
X-CRM114-Status: UNSURE (   9.44  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] common: oftree: replace printf by pr_info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This allows us to control the output behaviour e.g. booting silently
to improve boot time.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/oftree.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/oftree.c b/common/oftree.c
index 60d4327155..d92a3ca904 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -115,7 +115,7 @@ void of_print_cmdline(struct device_node *root)
 
 	cmdline = of_get_property(node, "bootargs", NULL);
 
-	printf("commandline: %s\n", cmdline);
+	pr_info("commandline: %s\n", cmdline);
 }
 
 static int of_fixup_bootargs_bootsource(struct device_node *root,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

