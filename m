Delivery-date: Mon, 15 Dec 2025 10:15:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4fu-00BgzO-0c
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 10:15:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4ft-0007Od-JF
	for lore@pengutronix.de; Mon, 15 Dec 2025 10:15:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PrgfLA+eYXgNw+LBty/DREtkVUmQQHG2GTRViCwyvlQ=; b=dALTraSpGd/YdWSoRLGeSpxXhR
	U94Oslz2C0qzic2dIPvtwCWxpS/+t7lvQeICdXUln7aHlTb3zUnlbV404dBRnN+2R03Pdsl5LCPpL
	hyQ8Gf2CQfMJiXKwV3H8VOTbCWmPc0ncu3R4mXTyWMP8nkUl4hRzIrYBv8AqcARd75RIPiWDqR8M9
	Up20hiWHQBU0eeMDcmOZUPauF69htgnoIEys4sX2M5HOaCaqmGPkBuhaSPOpdjVrT206VGbUCpbla
	8jB2XCcxyPoiOXX+7iLXSpIm+YlshTk6/1CzQDCb0ReZ5jSUk6bN+3ljl7eA21zqkh+w//74cbRpg
	cPzsIPjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4fQ-00000003Lcq-3WBj;
	Mon, 15 Dec 2025 09:14:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4fO-00000003Lc9-2pAs
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 09:14:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4fN-0007GW-4V; Mon, 15 Dec 2025 10:14:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4fM-005kvL-35;
	Mon, 15 Dec 2025 10:14:52 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4fM-000000018Mm-3kc9;
	Mon, 15 Dec 2025 10:14:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251215083635.2329721-1-a.fatoum@pengutronix.de>
References: <20251215083635.2329721-1-a.fatoum@pengutronix.de>
Message-Id: <176579009289.270435.12222061649877971301.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 10:14:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_011454_711661_0E956F48 
X-CRM114-Status: UNSURE (   6.38  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] resource: change MEMATTRS_NORMAL to MEMATTR_WB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Dec 2025 09:36:33 +0100, Ahmad Fatoum wrote:
> Other EFI loaders (EDK-II, U-Boot) only set WB (Write-Back) for normal
> memory. Let's follow suit for barebox.
> 
> This introduces no functional change yet, as these attributes will only
> be put to use with the incoming EFI loader support.
> 
> 
> [...]

Applied, thanks!

[1/1] resource: change MEMATTRS_NORMAL to MEMATTR_WB
      https://git.pengutronix.de/cgit/barebox/commit/?id=0c4c28671256 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



