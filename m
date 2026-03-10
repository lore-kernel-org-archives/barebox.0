Delivery-date: Tue, 10 Mar 2026 11:26:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzuId-00A42S-1J
	for lore@lore.pengutronix.de;
	Tue, 10 Mar 2026 11:26:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzuId-0000CK-P0
	for lore@pengutronix.de; Tue, 10 Mar 2026 11:26:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O12ZN5Pk1fR0TxF6Q5g+eO0iCZ3UnRGMYO2lexpQ/n8=; b=E7rQlJN8B6JShCnB6nxmzEG491
	TshDt5fQ2xK6tQX7RnaWyaRoE+XHBzdOtrkG4TCzwyACcch2EhB5lmkr55k8ePnbvV5bmprj1+eX4
	scqgwPR2B+BY9yY/cRLwozP0j0HMqSK0tV2y8zg7UdCPpljlkLse2ZV6lSHlm22ApboRUAB0A/2hO
	lZ7d0zJ6sDDpRJpDf8ss/bIi1QpESfPz5liibHVvDJXsfOT0dMUdxAFgBuy4mpWwXY54ElxjXlTFS
	8iDE1bNIGP638vLjiDagUFj09g4AwuIEdCngx4twolBzTIHmQ8lIBHw6tU5Q261QUtoKyp6ekof0L
	WDgZCZ1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzuIH-00000009Bzq-1nLC;
	Tue, 10 Mar 2026 10:26:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzuIE-00000009By8-3IsY
	for barebox@lists.infradead.org;
	Tue, 10 Mar 2026 10:26:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzuID-000063-4t; Tue, 10 Mar 2026 11:26:25 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzuIB-004gHN-1z;
	Tue, 10 Mar 2026 11:26:24 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzuIC-00000004VOH-3iIH;
	Tue, 10 Mar 2026 11:26:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260305065452.3417093-1-s.hauer@pengutronix.de>
References: <20260305065452.3417093-1-s.hauer@pengutronix.de>
Message-Id: <177313838488.1073880.6617173360594216638.b4-ty@pengutronix.de>
Date: Tue, 10 Mar 2026 11:26:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_032626_840687_2AFBF98B 
X-CRM114-Status: GOOD (  10.49  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] tee: optee: use RPMB probe capability to select
 enumeration path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 05 Mar 2026 07:54:52 +0100, Sascha Hauer wrote:
> OP-TEE TAs can be used adhoc when barebox needs them (which is what we
> do with the AVB TA) or be registered as devices (which is what we do
> with the OP-TEE RNG). For the latter to work with TAs that need
> the RPMB we have to announce to OP-TEE when the RPMB is available.
> 
> OP-TEE enumerates the TAs in three different stages. With
> PTA_CMD_GET_DEVICES all TAs without dependencies are enumerated.
> With PTA_CMD_GET_DEVICES_SUPP all TAs are enumerated that need a
> supplicant and with PTA_CMD_GET_DEVICES_RPMB all TAs that need a
> RPMB.
> 
> [...]

Applied, thanks!

[1/1] tee: optee: use RPMB probe capability to select enumeration path
      https://git.pengutronix.de/cgit/barebox/commit/?id=c840a27cfaa4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



