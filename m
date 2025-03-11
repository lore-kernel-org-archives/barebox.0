Delivery-date: Tue, 11 Mar 2025 09:49:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trvIz-00CbiI-1t
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 09:49:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trvIy-0003qB-Eu
	for lore@pengutronix.de; Tue, 11 Mar 2025 09:49:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z3uOpMFWkrMQEQhNAu7PZVmJn27UNzG10wu4IBWHWqM=; b=QSzJFTf5hpB6iGPDVScsmtxKSW
	E3mJrwxaCJITkElNGQUDli6n94s4XzulvDI3nZVPwFR/hRVhqzFxHkRGRV5caevpKGJzeN05TFpD/
	N8oFrWXu0nDfMt4X+2Q4n7NBNUnY5e8FaX8IxvkMd1aDUxYJq/CKQgxhrG6itAMEVRsg+hIZNEWxj
	k+GstbqCP/3GqY741/NqI9kLrZVzvx1TB4pgXr0RAvbGFnYIG1D9+3XaAVZNJzTzBid/MoKOp8Lpc
	JLIrz2zaVsM3wxV6TlTpbMSaR/8yZNHr7C7ggQOc3i64SYnNZsrenWoq+5myMPhyHOcoiQFjZ5AJ9
	pXnsY7Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trvIY-0000000529Q-24ek;
	Tue, 11 Mar 2025 08:49:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trvIV-0000000527y-1Gue
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 08:49:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trvIU-0003h9-5H; Tue, 11 Mar 2025 09:49:10 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trvIT-0059Kd-38;
	Tue, 11 Mar 2025 09:49:09 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trvIT-00663m-2v;
	Tue, 11 Mar 2025 09:49:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20250304-phyboard-segin-imx93-v1-1-8677740a79de@pengutronix.de>
References: <20250304-phyboard-segin-imx93-v1-1-8677740a79de@pengutronix.de>
Message-Id: <174168294990.1453253.10483274415863259109.b4-ty@pengutronix.de>
Date: Tue, 11 Mar 2025 09:49:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_014911_341750_ECCFC77B 
X-CRM114-Status: GOOD (  10.22  )
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
Subject: Re: [PATCH] ARM: boards: Add support for phyBOARD-Segin i.MX 93
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 04 Mar 2025 17:24:15 +0100, Jonas Rebmann wrote:
> This patch adds support for the phyBOARD-Segin i.MX 93 and the phyCORE
> i.MX 93 SoM it is based upon.
> 
> Note that support is only provided for the standard configuration
> featuring 1GB RAM as testing was only possible on that variant and only
> the single-configuration lpddr4_timing.c as initially committed to
> u-boot in 7c1f8ce3956 worked.
> 
> [...]

Applied, thanks!

[1/1] ARM: boards: Add support for phyBOARD-Segin i.MX 93
      https://git.pengutronix.de/cgit/barebox/commit/?id=41c53621ac0b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



