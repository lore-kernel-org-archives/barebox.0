Delivery-date: Tue, 14 Jan 2025 11:04:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXdmY-000yFU-2B
	for lore@lore.pengutronix.de;
	Tue, 14 Jan 2025 11:04:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXdmY-0003xW-4q
	for lore@pengutronix.de; Tue, 14 Jan 2025 11:04:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jbFLvIiu8zgriDg8YxTojqV/RhGylIzsZF9Il2MhYm4=; b=kICThqfykw3sx+Zh6+VLU1ufMy
	rS0U+mCMUCixwqvskhoOMzYBL1N2y/woQuKrRGM7MMWwx240uLa8ARZTgIsTABzbSHqbszBH74bLI
	R0BGkGDQMr3bVryTKPeU+qch3LOox+gUevKVUHHbrFMZ/+jTntDfSJecKmGkLDdwMBEPfnQxnG8Nz
	IFohAzqsHSrI7RVHkrKCDvwCOVufrttUpKXYA70KPWGkOWTMI7sbJjANnK6U9kbMtcyiCH9oBtfSP
	hREaRHn5W4vp2iXXynYpbMU6xiklEf+Faq5Ni42pMqXnTbEnT+rUSGfJuARdHv41nOQdfWabRe41Y
	SPCRrrZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXdm8-000000081Zn-3u3z;
	Tue, 14 Jan 2025 10:03:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXdm6-000000081Z6-0pSJ
	for barebox@lists.infradead.org;
	Tue, 14 Jan 2025 10:03:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXdm4-0003sy-Mr; Tue, 14 Jan 2025 11:03:52 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXdm4-000PgK-03;
	Tue, 14 Jan 2025 11:03:52 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXdm4-000kMw-1U;
	Tue, 14 Jan 2025 11:03:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250109112501.3175213-1-a.fatoum@pengutronix.de>
References: <20250109112501.3175213-1-a.fatoum@pengutronix.de>
Message-Id: <173684903245.178118.16905651553934572513.b4-ty@pengutronix.de>
Date: Tue, 14 Jan 2025 11:03:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_020354_242404_560D1F97 
X-CRM114-Status: UNSURE (   9.90  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Import ARM Trusted Firmware fiptool utility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 09 Jan 2025 12:25:01 +0100, Ahmad Fatoum wrote:
> On some platforms like the STM32MP, barebox is located in a FIP binary.
> For network booting, interacting with the FIP can be quite useful,
> so as first step port fiptool(1) to barebox.
> 
> Later, we can build a bootm handler or maybe a file system on top.
> 
> For now, the command is sufficient to unpack the FIP and manually boot
> the artifacts.
> 
> [...]

Applied, thanks!

[1/1] Import ARM Trusted Firmware fiptool utility
      https://git.pengutronix.de/cgit/barebox/commit/?id=f9edc3cf1a51 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



