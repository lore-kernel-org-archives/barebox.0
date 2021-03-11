Delivery-date: Thu, 11 Mar 2021 11:37:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKIhV-0002sE-B4
	for lore@lore.pengutronix.de; Thu, 11 Mar 2021 11:37:53 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKIhU-0005Es-NV
	for lore@pengutronix.de; Thu, 11 Mar 2021 11:37:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4+x29mig5bAXgli7M6j/p6fZf+bLYUDuZWfBtJSRzJo=; b=hrrXvJfL81a/kMIGjnptN6Xm7N
	vgqvnyBLicezjs3FHZkat8skNxaCPZP4ceVLSYzxLEqNobvm48HPqDsZu3FzyI7dgQwB5ZY4SNj9j
	7WpNrbK9RxTJAwZRzgKyL5PSQeZZOa5CRYwvxhNiW3BT17CSsBs0+f1ZLh7JpIiKu9FbkmQrstMk5
	37GhcaD4sHUaiJWHlp8pQh2HCjt82en7HOKjmnfUsCb5UTdvTkZq91isSjQ5V7/oQ1VLm48Yas1+6
	kHNf7nHqPY511emi3/y0t37voAG22/CYY5DJGFeQW+G3LQhQTcFGq+hBGBRMAu5kk2U1+n/c8v053
	iJDck4UQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKIgg-008qKI-Pe; Thu, 11 Mar 2021 10:37:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKIgb-008qJq-Q0
 for barebox@lists.infradead.org; Thu, 11 Mar 2021 10:36:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lKIgb-0005BE-CO; Thu, 11 Mar 2021 11:36:57 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lKIgb-00021V-24; Thu, 11 Mar 2021 11:36:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Mar 2021 11:36:54 +0100
Message-Id: <20210311103654.7729-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_103658_169231_420284B9 
X-CRM114-Status: GOOD (  11.34  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: mmu64: fix build for non-MMU configurations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox only catches null pointer dereferences when MMU support is
enabled. Thus the empty stubs should always be used on !CONFIG_MMU
systems, disregarding whether CONFIG_ARCH_HAS_ZERO_PAGE is selected
or not.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/zero_page.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/zero_page.h b/include/zero_page.h
index ad6861f240c6..519e65be7628 100644
--- a/include/zero_page.h
+++ b/include/zero_page.h
@@ -4,7 +4,7 @@
 
 #include <common.h>
 
-#if defined CONFIG_ARCH_HAS_ZERO_PAGE
+#if defined CONFIG_ARCH_HAS_ZERO_PAGE && defined CONFIG_MMU
 
 /*
  * zero_page_faulting - fault when accessing the zero page
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

