Delivery-date: Thu, 17 Feb 2022 09:25:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nKc6f-001au7-BA
	for lore@lore.pengutronix.de; Thu, 17 Feb 2022 09:25:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nKc6e-0001eA-7f
	for lore@pengutronix.de; Thu, 17 Feb 2022 09:25:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7vFDvn4pprOszsAkitk38/OJ1i4xZQ+T4k3Vfdmblss=; b=yEXeBtpTeBxw9d
	mJXOc5OyjfBH34FHEjNKexlPOZgAx263MB2zm5y8VFQ5uCnarYKGMoCvuJhGajWdZaHxCR75q63uN
	aWYV+/4y6TBmekbaFQg/VUIJuCVGeRs+zpmfozEANqMIffgMWv0kqu/lgLsk4EvyCCMugorWK3pmy
	JnMMuO3xRJpExTIRrNPAZzz1an1rh6s8ZEgS/eJ3G4CMRCUrGCN8v38G3KrYhH3fohwFVCMzo6BKi
	76Ym4pv/FPujaqgiypLa3hII3XDieV2G7p4GyMvueJiSUhxgx6jX7ulq7qHia7iOKIEVywbHstZVG
	1VWEMyHm1yuSUzDbboSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKc52-009On4-Ej; Thu, 17 Feb 2022 08:24:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKc4x-009OmY-Ce
 for barebox@lists.infradead.org; Thu, 17 Feb 2022 08:23:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nKc4t-0001Pd-Lh; Thu, 17 Feb 2022 09:23:51 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nKc4s-000LDH-57; Thu, 17 Feb 2022 09:23:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 17 Feb 2022 09:23:49 +0100
Message-Id: <20220217082349.81494-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_002355_447733_AA529FE1 
X-CRM114-Status: UNSURE (   7.88  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] Documentation: user: barebox: fix formatting for code block
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Sphinx build warns that:

  Error in "code-block" directive: maximum 1 argument(s) allowed, 17 supplied.

  .. code-block:: console
    sh: mkimage -n barebox -A arm -T kernel -C none -a 0x80000000 -d \
        build/images/barebox-freescale-imx53-loco.img image

Problem is a missing blank line. Add it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/barebox.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index a890aa4dbe3c..7b37ddba77a9 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -222,6 +222,7 @@ command doesn't support the barebox binaries directly, they first have to be
 converted to uImage format using the mkimage tool provided with U-Boot:
 
 .. code-block:: console
+
   sh: mkimage -n barebox -A arm -T kernel -C none -a 0x80000000 -d \
       build/images/barebox-freescale-imx53-loco.img image
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

