Delivery-date: Mon, 17 May 2021 14:54:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liclT-0002il-9j
	for lore@lore.pengutronix.de; Mon, 17 May 2021 14:54:31 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liclR-00063Q-P1
	for lore@pengutronix.de; Mon, 17 May 2021 14:54:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1rdkktWM0Dj2Wx8C+LHuZW9tfogJ9VrsB+vC261QcMQ=; b=eor9egKfRmn2OF2+EFtVJXw0fv
	wvWJdVGfW6zFY9r0koI8VLzHfj+W3sF8VcOhc6j/zhxPFdlbP0//HltGO+zE8NN7lO1QzKJ/W5hCz
	Lzi0Vb74KQ+d0iBCirFqZmLth9T3ZXWQNNOoQ2Q9g2sdW3HVfjJ3dXdmNki+gtfqbSre2u39A1gBP
	OoIBC6iiWtzvMw0R7pIwTPnw4bw013Ns1kRKG9hngZONVOdNnkAoygzXaOLMZbuk1mOxVxHG0Mss3
	wd1or4LiHEJNPNc7D18JMyw3fTvMWAhH0iaNUrcOs/filKRUm+xPu40nGc2U/tnP+/lYYsWnpVGoi
	Gk+N96cw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1licjn-00Eyep-DP; Mon, 17 May 2021 12:52:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1licgv-00EySh-LM
 for barebox@desiato.infradead.org; Mon, 17 May 2021 12:50:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=efWmwfNaBjuOH9STt1DCd8S+sUlRsuFiTrRQSLg+f2E=; b=yQUZJqsSF6emevsVCO1SMEvtnf
 73NBl4Ge1VTkkxsqB4X2VbEcIKfhIjVseQ76HD1n1ZXuh3vvpTzaPEbwZlOrK1MKlxreIyBG+0rHQ
 bW1xSb+xzfkc4cUqxpoIz92SVO7JEpCy1rlt2lSwbbyKJ7qWeSY5Be6evfnKp72nlS+wmQw3eAcq+
 zWli3bAjfRrrfkSufWWSVjNnYQ3vyK4Q02LUA1jN7zg69OOUKpcOp0J6bGT+hIUIVwaYYyHVo/14X
 VKlAlfMFaaxmI02V+0b+7hlhNfEi4Hdrn/PzMMycNPFSBbCa5VFRBEzgBpPVKBsWG7GLVFH3KXk9p
 +r+DZYiA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1licgq-00DlwM-21
 for barebox@lists.infradead.org; Mon, 17 May 2021 12:49:48 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ejo@pengutronix.de>)
 id 1licgn-0005LA-Us; Mon, 17 May 2021 14:49:41 +0200
Received: from ejo by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ejo@pengutronix.de>)
 id 1licgn-0008L8-MV; Mon, 17 May 2021 14:49:41 +0200
From: Enrico Jorns <ejo@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>,
	afa@pengutronix.de
Date: Mon, 17 May 2021 14:49:41 +0200
Message-Id: <20210517124941.31301-1-ejo@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_054944_119770_BD1FF31B 
X-CRM114-Status: GOOD (  11.56  )
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
Subject: [PATCH] usb: dwc2: more precise and helpful message for dr_mode
 config issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With the previous message I misunderstood that the 'configuration
mismatch' was caused by any entity forcing the dr_mode to
'host'/'device'.
The actual intention however is to tell the user that the selected
'dr_mode' does not match the capabilities provided by the controller or
the selected driver parts (USB_DWC2_HOST/USB_DWC2_GADGET).

The updated warning message attempts to reflect this more explicitly.

Also rename 'device' to 'peripheral' as it is named both in dtb and
in macros that way.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 drivers/usb/dwc2/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index cc5729ed92..6dfe14f174 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -672,8 +672,8 @@ int dwc2_get_dr_mode(struct dwc2 *dwc2)
 
 	if (mode != dwc2->dr_mode) {
 		dwc2_warn(dwc2,
-			 "Configuration mismatch. dr_mode forced to %s\n",
-			mode == USB_DR_MODE_HOST ? "host" : "device");
+			 "Selected dr_mode not supported by controller/driver. Enforcing '%s' mode.\n",
+			mode == USB_DR_MODE_HOST ? "host" : "peripheral");
 
 		dwc2->dr_mode = mode;
 	}
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

