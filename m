Delivery-date: Mon, 15 Jul 2024 11:06:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTHeq-0052kF-2t
	for lore@lore.pengutronix.de;
	Mon, 15 Jul 2024 11:06:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTHeq-0002Dz-9x
	for lore@pengutronix.de; Mon, 15 Jul 2024 11:06:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eQH7woe2NKlsnM2d7wiPytA6Y48gtyGI8v49J41J1CI=; b=337eJqZrTi9WPdoF9Oeeogwdxp
	V58VtDa/NbQVgUAFp77tk1uMZLg8OqukDXhD/pLfnMmWgeM0zcAz8ZKnTNJNreEUVtntdrvCFTniA
	0RJxnAIePgIUXSAOKgFkglaT+6ZLG0JGlKTFgISi7fpJ/XkwpU96Eyw4pJ3ah2Ul5f0h66L5eEaNQ
	4fuSjJo7RnKPBIEXjbS/6i0WACqfhQ2RI0VMB3E0YsInWGuP5eiIU7XXtq/Q9UVKLb9BfOADRHnxp
	h4xS5a6yBaZtuJmW3+bY/ofVW6Ujfd8U+LdZxVk74dHPl2Duycjq8FzFeTmaI6kkt3VfGiu8ceq46
	+J7iFdiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTHeA-00000006SwW-1KyL;
	Mon, 15 Jul 2024 09:05:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTHe7-00000006Svh-0pmW
	for barebox@lists.infradead.org;
	Mon, 15 Jul 2024 09:05:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sTHe3-00021b-F7; Mon, 15 Jul 2024 11:05:19 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sTHe3-009fPR-1u; Mon, 15 Jul 2024 11:05:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sTHe2-007OMd-3A;
	Mon, 15 Jul 2024 11:05:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240703190937.689547-1-a.fatoum@pengutronix.de>
References: <20240703190937.689547-1-a.fatoum@pengutronix.de>
Message-Id: <172103431897.1761942.15432077912002520140.b4-ty@pengutronix.de>
Date: Mon, 15 Jul 2024 11:05:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_020523_271736_0E5D327D 
X-CRM114-Status: UNSURE (   9.37  )
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
Subject: Re: [PATCH 1/2] nvmem: add support for fixed-layout binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 03 Jul 2024 21:09:36 +0200, Ahmad Fatoum wrote:
> At long last, nvmem cells as direct subnodes of the provider has been
> deprecated and replaced by a layout binding that allows a NVMEM provider
> to do arbitrary processing of cells before exposing them to the
> framework.
> 
> We'll want to support the layout binding eventually, but for now, let's
> just add the trivial modifications necessary to support the
> fixed-layout, which is just a compatible = "fixed-layout" node
> that contains the individual cells.
> 
> [...]

Applied, thanks!

[1/2] nvmem: add support for fixed-layout binding
      https://git.pengutronix.de/cgit/barebox/commit/?id=0fd3877be6ea (link may not be stable)
[2/2] sandbox: use fixed-layout binding
      https://git.pengutronix.de/cgit/barebox/commit/?id=3b40958bb510 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



