Delivery-date: Mon, 27 Oct 2025 07:31:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDGlF-00CFKp-0t
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 07:31:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDGlE-00084C-Nh
	for lore@pengutronix.de; Mon, 27 Oct 2025 07:31:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vs/kJQJaRYqLBQxDJTiITuOvy38NAC2psijyKEj/pBE=; b=G0VaPdIN//t1mH/BVMl9uznQly
	3+qrE9gAmmgaYYGRCLobogSeao7QkPWhsDvIkedGX0MhgBZ/8FicgpeL0RbSATXT2PPeMMixNaveo
	fJE5RE7rd9lS47tRDY0xd58JTIFiZYYgR/C0UhzXudX32pexwSDNtzMcnKBs+IkGYGCtFmCNhdSaK
	wxci+QQhwVKoTw4n7grTsPjQR6HWrV7L5O33fv0LcbAxG/yuS2kbA010omLTr84KmMf9CvKSA8DGn
	l3HmtQIhTvC+RBNuths+tqQ8hUz/UNHo7qR39t2siJEBCE2FpW2BjTaA/AdT/A04+gof+vUQ9uu2+
	7ViFkt1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDGkn-0000000DCL7-38Kr;
	Mon, 27 Oct 2025 06:30:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDGkm-0000000DCKD-0sBd
	for barebox@bombadil.infradead.org;
	Mon, 27 Oct 2025 06:30:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=vs/kJQJaRYqLBQxDJTiITuOvy38NAC2psijyKEj/pBE=; b=IYMmVWbf9Oj3D1Uo4iVaS+npbn
	fz/t1hlvyPFB9bWsd7zWYWCpBbgyZNMCJE/nDih4m40VEDZTTnUdk7eEHjLoeOpJJpbIncg7WaMeo
	gaCHZPRBOIXGPu9kxhnvWgYpYICU6H09YiNT9c4tR1DVnjRMtxPNSO3Xh5pTw9sIj66ArN/9/T5CE
	1QSSsYtjekZaaT2dL/Bzt+SbnTaKmJ/9EdSdFpCpBowC3ThZZ234K5T1LODLewgY88fkizRrHAFc9
	LZmBJ0ieckCIw/AinLribrJDeaWuYcM6DQzul1+Kjw8GoarqnA+O0sKb9IeUkI1sfEg9ZQcxgxb3E
	wvSEPWnQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDFsz-00000001RjT-1OQw
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 05:35:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDGkg-0007sa-Lm; Mon, 27 Oct 2025 07:30:46 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 07:30:39 +0100
Message-ID: <20251027063045.2396578-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251027063045.2396578-1-a.fatoum@barebox.org>
References: <20251027063045.2396578-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_053517_437853_6EE1F2B9 
X-CRM114-Status: UNSURE (   9.21  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] backlight: support setting brightness as percentage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

Unlike the PWN duty cycle, we already have a parameter for the
brightness, so we can't retroactively redefine it to be in terms of
percentages.

By setting the scale, we allow users to enter percentages between 0% and
100% over the same parameter as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/backlight.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/video/backlight.c b/drivers/video/backlight.c
index 51d245a80fdb..6d8146ee5aa0 100644
--- a/drivers/video/backlight.c
+++ b/drivers/video/backlight.c
@@ -69,6 +69,7 @@ static int backlight_brightness_set(struct param_d *p, void *priv)
 
 int backlight_register(struct backlight_device *bl)
 {
+	struct param_d *param;
 	int ret;
 
 	dev_set_name(&bl->dev, "backlight");
@@ -78,8 +79,10 @@ int backlight_register(struct backlight_device *bl)
 	if (ret)
 		return ret;
 
-	dev_add_param_uint32(&bl->dev, "brightness", backlight_brightness_set,
-			NULL, &bl->brightness, "%u", bl);
+	param = dev_add_param_uint32(&bl->dev, "brightness", backlight_brightness_set,
+				     NULL, &bl->brightness, "%u", bl);
+	param_int_set_scale(param, bl->brightness_max);
+
 	dev_add_param_uint32(&bl->dev, "slew_time_ms", NULL, NULL,
 			     &bl->slew_time_ms, "%u", NULL);
 
-- 
2.47.3



