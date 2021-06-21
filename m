Delivery-date: Mon, 21 Jun 2021 08:48:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvDj4-00061Q-24
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 08:48:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvDj2-00055E-VO
	for lore@pengutronix.de; Mon, 21 Jun 2021 08:48:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DNo1N+L/AUrkr+4eoSsJLOLAE1RHt4Zz/ASCfqg8DTA=; b=FxhNWnTwId0CK1
	t6UUvNhW8Ru8zjYdWNGaszbeTrAX5OmZ+WzdPLJ8yo13pY34+Jb1Rd2SdRlRDvAddLIg0e+AtvW+P
	61s2CDnPbWrPpEeDGW0yGZM8+jf5ONLwrxdqC8SnbaeMAGMQu1qhiTKEJirYs9m/w8VViZHw3/K7f
	GR6pw1GjUyatqDluDxie5GR0iC9gS+Z7CTZlIUHYUriI5a5huzRpGMaR8EqcGWWaUAfZuxzzNb6uu
	xCaaVetCrPENd/KSXCZtw/Fni/oy6H/+083W2RsWOuMHbyHIavJgg5F/nrKexoNIH/qkxfLdFo0VJ
	xc1qJmMSKNYpLINuIo0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvDhw-002OIM-4w; Mon, 21 Jun 2021 06:46:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvDhq-002OGN-Bg
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 06:46:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lvDhn-0004uI-Bt; Mon, 21 Jun 2021 08:46:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lvDhn-0004yp-38; Mon, 21 Jun 2021 08:46:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 21 Jun 2021 08:46:46 +0200
Message-Id: <20210621064646.19094-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_234650_454246_F83C5B49 
X-CRM114-Status: UNSURE (   8.40  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] Documentation: devel: porting: update after clk_hw sync
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Clock code sync with Linux got way more straight forward, now that
barebox knows about struct clk_hw. Remove the suggestion to replace
clk_hw with clk when porting.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/porting.rst | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devel/porting.rst b/Documentation/devel/porting.rst
index aa584de60ce8..97b787327c9a 100644
--- a/Documentation/devel/porting.rst
+++ b/Documentation/devel/porting.rst
@@ -341,7 +341,6 @@ Considerations when writing Linux drivers also apply to barebox:
 Miscellaneous Linux porting advice:
 
   * Branches dependent on ``system_state``: Take the ``SYSTEM_BOOTING`` branch
-  * ``struct clk_hw``: rename to ``struct clk``
   * ``struct of_clk_hw_simple_get``: rename to ``struct of_clk_src_simple_get``
   * ``usleep`` and co.: use ``[mud]elay``
   * ``.of_node``: use ``.device_node``
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

