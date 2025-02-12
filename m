Delivery-date: Wed, 12 Feb 2025 15:04:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDMI-001S0E-0s
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:04:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDMH-0008TX-4c
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:04:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JPELS9phlx124XN8u5S4n8LMLG0cDrULH55jouKF5Oc=; b=XVSbSPc2scPZfySv+xg6Ae5Pjm
	BBzTzOenBvqrgsgglvKSrDQL4yQqsJuhv5qMqEIft3VXP9vsZPE9YlrNAJnxeDtPdOPRNySJNsNst
	9cVo21hfz33tEvAH+OAzMzYIk9RT5IEo9Hg+J6NvmRvoY5X6SiwRh4usZ29do8YuLcdE5bVKqa3j8
	gc/b8yu20iAeXVIDy9Gw7h19LdicmlLLEzqvT3qPHvdzwPGHMDTNdggwLbcaIKSJXLmiIA3O2Ac/p
	k9fqmj4dHZE9TdrratRAgbP3LuMWRT9R3QTlimWEtLezD+1TGSor0zMaOlhJ3uz/Zm37cTRcE5o8+
	QBwymdtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDLj-00000007azi-2iYI;
	Wed, 12 Feb 2025 14:04:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDLg-00000007az8-2SzZ
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:04:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDLf-00086g-Dv; Wed, 12 Feb 2025 15:04:19 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDLf-000awk-0k;
	Wed, 12 Feb 2025 15:04:19 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDLf-00AdcM-0W;
	Wed, 12 Feb 2025 15:04:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250207072026.226822-1-s.hauer@pengutronix.de>
References: <20250207072026.226822-1-s.hauer@pengutronix.de>
Message-Id: <173936905916.2535557.1976255146060375794.b4-ty@pengutronix.de>
Date: Wed, 12 Feb 2025 15:04:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_060420_631220_25C78AFB 
X-CRM114-Status: UNSURE (   5.11  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mfd: tps65219: register regmap cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 07 Feb 2025 08:20:26 +0100, Sascha Hauer wrote:
> Expose the tps65219 regmap as cdev for debugging purposes.
> 
> 

Applied, thanks!

[1/1] mfd: tps65219: register regmap cdev
      https://git.pengutronix.de/cgit/barebox/commit/?id=ac5024cc8730 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



