Delivery-date: Fri, 13 Mar 2026 15:32:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13Yi-000Ekr-0r
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 15:32:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13Yg-0005gF-DX
	for lore@pengutronix.de; Fri, 13 Mar 2026 15:32:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V+AAP5+pEihNhX7yFDBqKQQT8EzFGdYnek9pY05cg4o=; b=wQRCKvVk93KVR4Wgcp84QsXi/U
	SModRtYDqHyx4R9LkzuaawxcfHrtB5S3RG1Lb9o/R0AC3lzRKydFoX7UFI/CkWFiUTeqhRDTUWzJP
	c5VdaXq5LLAR0h806peEPXk7g3EElfesZU0iMufKU79woj0yjIKRv8NX5PH9xBIJqZFxBsMpveN0C
	YZsYdW+FxzgHpPD7YQpmAaxGtrDtckEf06RE4HUpo+M6DWlFNqlCKoeGZeGKEzeOEmKMitPd3/iFs
	ahWuVsuxcCNwYgi/uciqSf0r4YRMCTdQIXsQPSSynTJt4Nyca1aV3+jIzxZVhKo1SqUyTb+oA0ckh
	QxD7+K0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13YD-00000000OeU-16v9;
	Fri, 13 Mar 2026 14:31:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13YB-00000000Odr-2FmA
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 14:31:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13Y9-0005Xm-T7; Fri, 13 Mar 2026 15:31:37 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13Y9-0005wJ-2K;
	Fri, 13 Mar 2026 15:31:37 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13Y9-00000000zdV-2kOU;
	Fri, 13 Mar 2026 15:31:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Fabian Pflug <f.pflug@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20260312-v2026-01-0-topic-tqma8mpxs-v4-0-88472a13347d@pengutronix.de>
References: <20260312-v2026-01-0-topic-tqma8mpxs-v4-0-88472a13347d@pengutronix.de>
Message-Id: <177341229765.236914.10628800984674886594.b4-ty@pengutronix.de>
Date: Fri, 13 Mar 2026 15:31:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_073139_578256_EF2DF112 
X-CRM114-Status: UNSURE (   8.16  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 0/3] ARM: boards: add support for tqma8mpxs boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Mar 2026 12:34:30 +0100, Fabian Pflug wrote:
> Extending the TQMA8MPxL board code with support for TQMA8MPxS, as they
> share the same processor and a lot of the same codebasis, but differ in
> small changes.
> 
> Both now have support for the different RAM configurations, but no ECC
> support yet.
> 
> [...]

Applied, thanks!

[1/3] ARM: boards: tqma8mpxl: rename to tqma8mpxx
      https://git.pengutronix.de/cgit/barebox/commit/?id=1614928b83d3 (link may not be stable)
[2/3] ARM: boards: tqma8mpxl: extend with support for xs
      https://git.pengutronix.de/cgit/barebox/commit/?id=60bcb3166201 (link may not be stable)
[3/3] ARM: boards: tqma8mpxx: add no_ecc ram timings
      https://git.pengutronix.de/cgit/barebox/commit/?id=f4a115c1640f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



