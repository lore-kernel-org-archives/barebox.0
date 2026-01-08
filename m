Delivery-date: Thu, 08 Jan 2026 21:57:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdx4q-002keM-0Y
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 21:57:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdx4p-0005CH-Lu
	for lore@pengutronix.de; Thu, 08 Jan 2026 21:57:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wViZXrDww35b/+7b3D8go3hJSFywlGWobZ1e8EHkh2A=; b=Ipxun+vofHHnOpJwdz1VM4PXe1
	t87/w4u6yZrhzHKRiI5S9gGTxKQbmsMe8FWHGJeByjFPFmzh2h8hrb/hnPh2NVlxXJ9jKvjApkcAe
	CYmsb/eHdjbrueonucLUt9LwwVg//8sqJMz0jXikpBh2tQNtEvEZIk63u62miG7Gef5f37xSXmMtc
	MyLOX/MPP0E3Zlk68EO4Wg92gbWmOCOBglgNY6/W0bM99CMTpjsxndVsz0UKHkix4QJKMpsUHD06c
	x9Eef2vvWwFTbZIN9slVxAkanEF1IfD+RJVSE3bePDO/9JT+ZyDgVgGY9jY3wj7HcuwUBTKB7gTVe
	ynX7QXaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdx4S-00000000rFr-3kMn;
	Thu, 08 Jan 2026 20:57:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdx4Q-00000000rFF-0sLk
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 20:57:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdx4O-00053j-Kf; Thu, 08 Jan 2026 21:57:24 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdx4O-009jiI-1S;
	Thu, 08 Jan 2026 21:57:24 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdx4O-000000024nk-1cps;
	Thu, 08 Jan 2026 21:57:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: mtr@pengutronix.de
In-Reply-To: <20260107125837.3947578-1-a.fatoum@pengutronix.de>
References: <20260107125837.3947578-1-a.fatoum@pengutronix.de>
Message-Id: <176790584438.495087.6470648039766287982.b4-ty@pengutronix.de>
Date: Thu, 08 Jan 2026 21:57:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_125726_247405_854CB672 
X-CRM114-Status: UNSURE (   5.95  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] tee: drivers: rksecure: move header to soc/rockchip/
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 07 Jan 2026 13:58:36 +0100, Ahmad Fatoum wrote:
> We already have a directory for rockchip related headers, so move from
> the top level to there.
> 
> No functional change intended.
> 
> 

Applied, thanks!

[1/1] tee: drivers: rksecure: move header to soc/rockchip/
      https://git.pengutronix.de/cgit/barebox/commit/?id=3c1752cd6a7d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



