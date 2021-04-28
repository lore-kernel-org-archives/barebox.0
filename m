Delivery-date: Wed, 28 Apr 2021 12:29:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbhRy-0007xr-Nq
	for lore@lore.pengutronix.de; Wed, 28 Apr 2021 12:29:46 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbhRx-00069W-QQ
	for lore@pengutronix.de; Wed, 28 Apr 2021 12:29:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4HDK2+XehaBV9GWzXQoRz+EPSrBqEzMIi+XBeKqBek8=; b=Hzy38VQpEAlGwvuR29QXFWXh3
	qfxn8Yl/pdkq+HAjWLnF4iiMUfZbMDz18Ie7zRjnRUgP3LZVwqFSdDQP8H526I33z50E72X+ZCf12
	zxma+8r3K8bP1kzWm3MZPpgyLg9BO0hV6TMjECTHs0IjEqLOU0w3XgcdthLAJMzzNHvjwD5LAJviG
	7ammVGuG8qRNyBcZrvCaKhdgaKg7RMdURn2+3XHCuFPeP4CDBksrb5UaoMXhvZaQgA06Bji/HRzpX
	Y5cL8EDelz2iidHPV4gmZfomdaEa2l/Pwo3yFTACPfWFJGaVW5iNY9QRCXZSpJpCQ/sX1OcW4xJD9
	lclK0nIWQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbhQp-003IeG-CM; Wed, 28 Apr 2021 10:28:35 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbhQj-003Idr-FE
 for barebox@desiato.infradead.org; Wed, 28 Apr 2021 10:28:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Type:Content-ID:Content-Description;
 bh=GFknhA8e4bpK8lVXLjocgxTkFr+5qjIQuzXAeKXNlp4=; b=ni2rRgnKxEQQMZm/0EVGZ7WOaP
 9CHm4I8Kis89cqJAk8AHj/rtgqvJj9u9eAaxcItxQL6MjL60VFviai8kOD83eb5jDc6aJtFBAS9+t
 5UyybPTCwyCRa+keK2Vvng1AOORiNIIZFVlDKE7ddlS5fnC4+dhm9zuylqtLdqpYaNeUbwZ8+XsMT
 CeI5dzJAXldVghOXSVfPtrwRaf3Y/W+bVXfejJbL+b39Aph4Lr4gMissZ2O43t0L6HvkLXGi6T3m+
 lggCSLnVHrbwPzKpcUPux7ETU264efcHZQmhVTKBenBU3yEgne5GQoRaSNtVCm7f3BKxQnU9cxexE
 W6jJdiUw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbhQg-00HMRL-P0
 for barebox@lists.infradead.org; Wed, 28 Apr 2021 10:28:28 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lbhQe-0005sS-Ey
 for barebox@lists.infradead.org; Wed, 28 Apr 2021 12:28:24 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lbhQe-0000c1-6Z
 for barebox@lists.infradead.org; Wed, 28 Apr 2021 12:28:24 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 28 Apr 2021 12:28:20 +0200
Message-Id: <20210428102821.2287-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210428102821.2287-1-m.felsch@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
 <20210428102821.2287-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_032826_866185_551BE1D2 
X-CRM114-Status: UNSURE (   9.32  )
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
Subject: [PATCH 2/3] fixup! ARM: boards: mx6-sabrelite: add deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

---
 arch/arm/boards/freescale-mx6-sabrelite/board.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 0a2df391e9..69a154d081 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -167,5 +167,5 @@ static int sabrelite_coredevices_init(void)
 }
 coredevice_initcall(sabrelite_coredevices_init);
 
-BAREBOX_DEEP_PROBE_ENABLE("fsl,imx6q-sabrelite");
-BAREBOX_DEEP_PROBE_ENABLE("fsl,imx6dl-sabrelite");
+deep_probe_enable_board_compatible("fsl,imx6q-sabrelite");
+deep_probe_enable_board_compatible("fsl,imx6dl-sabrelite");
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

