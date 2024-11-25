Delivery-date: Mon, 25 Nov 2024 09:52:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUq1-0008Ne-1k
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 09:52:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUq1-0004yL-Hb
	for lore@pengutronix.de; Mon, 25 Nov 2024 09:52:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vqyiUuhVmukf7Zhr5iCco4GWy8waxxRWIzxP8uFRwiI=; b=tGWFnJ4ID1xW+ttWTNP1IhATw9
	eFzX+Z1Rug1nSMOc2wQgFlrSk9yYHBV259vXxsKgPQCX6qkJGpu5bC8cXZCuXdJhkbXiY6ft08yfb
	G3KiE8iRAN/60RqQo1wLGItdpCdE/d4hfyHcxhiNQ8wGhWDxn49QbWtD4zskUa9uwlX2HJuOyZMi+
	NnoVAqIq3cIp9Vw6O8cHj/pdldFrNIJqyooQhT3Qo3sy//aCfsecyvJ2omJTfnp8LmFSaiZWO46bd
	iBoJntna6HMUv5T6iTtUBI/gbzaqd+KqmM4i1fSAjisen3bo3qdUqdVEO+Q031s/YD9C8bm9AjOa6
	kRLKopdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUpc-00000007SY8-1XUp;
	Mon, 25 Nov 2024 08:52:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUpZ-00000007SXg-4A6a
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 08:52:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUpY-0004st-MP; Mon, 25 Nov 2024 09:52:28 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUpX-0003AQ-2O;
	Mon, 25 Nov 2024 09:52:28 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUpY-000iwJ-1S;
	Mon, 25 Nov 2024 09:52:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
In-Reply-To: <20241118164344.48806-1-s.pueschel@pengutronix.de>
References: <20241118164344.48806-1-s.pueschel@pengutronix.de>
Message-Id: <173252474844.172736.12239165541090392524.b4-ty@pengutronix.de>
Date: Mon, 25 Nov 2024 09:52:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_005230_028831_DE487CD5 
X-CRM114-Status: UNSURE (   7.24  )
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
Subject: Re: [PATCH] ARM: dts: i.MX8MP: imx8mp-skov: skip sd/sdio detection
 on the eMMC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 18 Nov 2024 17:43:44 +0100, Sven Püschel wrote:
> Skip sd/sdio detection on the eMMC to reduce the detection time by
> about 270ms. This change is already part of the kernel dtsi file
> (see  dts/src/arm64/freescale/imx8mp-skov-reva.dtsi).
> 
> 

Applied, thanks!

[1/1] ARM: dts: i.MX8MP: imx8mp-skov: skip sd/sdio detection on the eMMC
      https://git.pengutronix.de/cgit/barebox/commit/?id=099b63932c4a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



