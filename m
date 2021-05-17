Delivery-date: Mon, 17 May 2021 13:46:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1libi6-0002H6-Jq
	for lore@lore.pengutronix.de; Mon, 17 May 2021 13:46:58 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1libi5-0005z8-Sy
	for lore@pengutronix.de; Mon, 17 May 2021 13:46:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zDNFrlL7r3Gf614DbKo4Qtc47aHV5uIjvEl9K9FQdFM=; b=O4y7PhkYteuumqxlrEi1CvQ6c2
	bvt4EzGRxy9BxNSY8NeXNTX2ap0FErFtELJ4zmqPdV8bn3//Z9Ci20UUt/zur9lOamxFUK/BQtNLC
	56WTSCgJcAzWjZTypHyO8t3MSTYtxP8xLSfHjQfb0pRMsPnRl1tY8ku2s0cW/NWov0z/+ObgRf08n
	gdj5QtRCjl8Zi3Mk4Cu9YyB/VLVJeHsnaZXc3amoXhhiXDSTq/IkPu+aHZjIe+Von/qiRXAbjWj8P
	Q5QQUN5jEFxGUDd9nLJnCciK3iXoH/i9Y5OKH4vG9fzTh7UYTAx6XSVjAcIW/wgapxAkoc96ubcFK
	j2rvqHvw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1libgr-00EmpL-I2; Mon, 17 May 2021 11:45:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1libgc-00Emmx-GL
 for barebox@desiato.infradead.org; Mon, 17 May 2021 11:45:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=yGUdq2O63K2wetUE+qorwRSuMTDaBUGT18+If5RgkR0=; b=0tNoGorTz+BC5NbdJyUBFTSzH3
 isw+hqP1w9b/cALIX+Pis3It1wGQe14aVuz2Tv9e/NSng5RkJG8FWAxSaPYw+6j2m8fn2sZe5beok
 c+6GjzZwDtqT/6QQF8B8tuAwJLBEAJd9zkdBi+LXTM2udLekHt/EVU/4fjLoMfAuQsEB4uBs0xAil
 lY8PNUWm2b35OzI00ZSatl99GglgNpjagy496rfiu37sQ3rCiAjXRa3IAmDUY5LIZXTKGtnnE88io
 7W6Vr7Vw/Le+SWPwAdIxOK0Kf/kP9nF5NbjazFrDXC3Mr67MgzYArvjhRyZih8t9xT6IH9Fsac2HS
 91QTN3kw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1libga-00DjG2-0s
 for barebox@lists.infradead.org; Mon, 17 May 2021 11:45:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ejo@pengutronix.de>)
 id 1libgW-0005du-5K; Mon, 17 May 2021 13:45:20 +0200
Received: from ejo by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ejo@pengutronix.de>)
 id 1libgV-0007QF-Rr; Mon, 17 May 2021 13:45:19 +0200
From: Enrico Jorns <ejo@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>
Date: Mon, 17 May 2021 13:45:19 +0200
Message-Id: <20210517114519.28451-1-ejo@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_044524_082382_D37BABD8 
X-CRM114-Status: UNSURE (   9.46  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] usb: dwc2: do no print error message with dwc2_warn() macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

dwc2_warn() is intended for printing 'warning' messages and should thus
call dev_warn() instead of dev_err().

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 drivers/usb/dwc2/core.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index fa9d6ae954..c49672c85a 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -500,7 +500,7 @@ struct dwc2 {
 #define gadget_to_dwc2(ptr) container_of(ptr, struct dwc2, gadget)
 
 #define dwc2_err(d, arg...) dev_err((d)->dev, ## arg)
-#define dwc2_warn(d, arg...) dev_err((d)->dev, ## arg)
+#define dwc2_warn(d, arg...) dev_warn((d)->dev, ## arg)
 #define dwc2_info(d, arg...) dev_info((d)->dev, ## arg)
 #define dwc2_dbg(d, arg...) dev_dbg((d)->dev, ## arg)
 #define dwc2_vdbg(d, arg...) dev_vdbg((d)->dev, ## arg)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

