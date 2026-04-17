Delivery-date: Fri, 17 Apr 2026 10:03:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDeB2-00D6vK-2q
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 10:03:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDeB2-00082W-CJ
	for lore@pengutronix.de; Fri, 17 Apr 2026 10:03:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=amno2qmyWdf4A4PQvgAzv1LL5fCiNa7hhMbwyGtvVys=; b=kX8dFHaHV1Pc1oan/UOfW/Zbmw
	PdyEmGPXcSE6aE7tMoyh5vohLblVOHG+1xAN5GYDKr7T/TLZ9w21L6ofKtxm0Vn7lS0FI54k3qSbm
	zv3YrHqc3aMyf90nDOaMssJkS/ml/iAPPLEsmMsdx+mvGj+qJ2YjrSQGYXaAwRhmXK7URssIUJQWK
	Wbp2ATxrSt4auw6wh5r30G42rVgpXQRcW2fnSMHbi6RIl4RMrPoqSXixeVSByO/Wu4VSeGVU0uFa0
	dHxjUQt42Al0fbOy3/kSN+sYXquj1kehbpjXCS7iQtpc7xB2EMH99SiK9f9g7h0cG+0ynRFeDzW5Q
	NVh9B9Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDeAF-00000003e0t-41a3;
	Fri, 17 Apr 2026 08:02:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDeA9-00000003e09-3pIk
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 08:02:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDeA5-0007ay-4c; Fri, 17 Apr 2026 10:02:49 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDeA4-005oSp-34;
	Fri, 17 Apr 2026 10:02:48 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDeA4-00000000RtE-3iTA;
	Fri, 17 Apr 2026 10:02:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260416064524.3788520-1-a.fatoum@pengutronix.de>
References: <20260416064524.3788520-1-a.fatoum@pengutronix.de>
Message-Id: <177641296887.107113.3740127189332037330.b4-ty@pengutronix.de>
Date: Fri, 17 Apr 2026 10:02:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_010254_221657_E5C91634 
X-CRM114-Status: UNSURE (   7.95  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8M: evk: mark PMIC barebox,allow-dummy-supply
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 16 Apr 2026 08:45:23 +0200, Ahmad Fatoum wrote:
> On i.MX8MM-EVK with PCA953x I2C GPIO expander driver enabled, one is
> greeted with this warning:
> 
>   WARNING: pca953x pca64160: Failed to get 'vcc' regulator (ignored).
> 
> We don't have a PMIC driver in barebox proper and assume that all
> relevant regulators are already enabled by the prebootloader, so note
> that in the device tree.
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX8M: evk: mark PMIC barebox,allow-dummy-supply
      https://git.pengutronix.de/cgit/barebox/commit/?id=390e4217a5e0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



