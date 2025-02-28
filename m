Delivery-date: Fri, 28 Feb 2025 10:45:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnwwD-0080Ut-1C
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 10:45:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnwwB-0004D9-8m
	for lore@pengutronix.de; Fri, 28 Feb 2025 10:45:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A6fxpI5M5UxhvhNYpP7Ir3BJssz5dO7mZOaFG7dYT0Y=; b=JHzWa09Pntr9S5VFl9ebKxWBMO
	mbAiAa4cFlNuuNG9+Bsa+hI4HtUqTA9rnkM0wxz8nhpm3Lv+S64txV28KBxi9t10Y9fOo4p0CCNNX
	ffT3ZW0H6TsegqVxa2Ccn++5ZOZqIF+d3VmzLaGx3uJSWSi22JloXV2oY1QuwaheTJy1k0tNGESES
	EkxzWJesXSlrDejJFzBIZtcBQ1hU7BRycZ6J5E//2YkrdWFtj7DMXarFp6qbU5Q+K53287qob1TiG
	4SqFvPAardEe1TQMiN9vWb44WIRvwFmgrW4dZjJ8Fhr3Y/Q6sPR2oK0ejiSk4pmShPndopLEWaioM
	1gBN6lWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnwvV-0000000AQSq-3PS8;
	Fri, 28 Feb 2025 09:45:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnwvH-0000000AQRI-20Rq
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 09:44:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnwvG-00044O-9b; Fri, 28 Feb 2025 10:44:46 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnwvF-003Gtg-1p;
	Fri, 28 Feb 2025 10:44:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnwvF-005sQc-1c;
	Fri, 28 Feb 2025 10:44:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oliver ROHE <Oliver.Rohe@wago.com>
In-Reply-To: <AS4PR08MB8093429FE84A32C579C03FE69EC22@AS4PR08MB8093.eurprd08.prod.outlook.com>
References: <AS4PR08MB8093429FE84A32C579C03FE69EC22@AS4PR08MB8093.eurprd08.prod.outlook.com>
Message-Id: <174073588549.1400807.11147703567146583574.b4-ty@pengutronix.de>
Date: Fri, 28 Feb 2025 10:44:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_014447_516217_DD1A997E 
X-CRM114-Status: UNSURE (   6.10  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fix partuuid format
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 26 Feb 2025 14:29:48 +0000, Oliver ROHE wrote:
> root=PARTUUID=SSSSSSSS-PP
> 
> Where SSSSSSSS is a zero-filled 32-bit MBR disk signature,
> and PP is a zero-filled partition number in hexadecimal format.
> 
> 

Applied, thanks!

[1/1] fix partuuid format
      https://git.pengutronix.de/cgit/barebox/commit/?id=faa88fc2d97b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



