Delivery-date: Thu, 11 Jan 2024 15:11:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNvm0-00D3Nz-2D
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 15:11:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNvm0-0007XH-54
	for lore@pengutronix.de; Thu, 11 Jan 2024 15:11:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DppQOgenIeqn+lWZsAELb+Qe8eIA44vErYU8OfaU17w=; b=MQqwpwsixQBhhOnz32VDAyesBA
	JmJgSSjuAGY+FnjhSAEkRqidxDT8HGE/e4VvuIxEUpMFG46A0ahMI5j8HEW9iD7Be78TMgG1T1xfC
	jyfIiPtf+ql8/2Il1HFsfOelZzb8iX+YottIIqZ4ac/rBK8PVS+qogvbYkPIYhK2/0zr5ZSd3oFAZ
	G2Ik5XZJKpcqrSj//nMh85hRpbm3A8lIRySciIer63pnbvfvyGtKqYTqndMC3eMB2p8k3NNTAZ+YV
	lTisUM8+kkhDFaaRB/BY+0ifAVsgJYb+AQ9IV3/qtmahtnNxSimB7v53DVzBzb/TsYejgI+vTfBeS
	6pfaSeLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNvkj-000Fbn-1q;
	Thu, 11 Jan 2024 14:09:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNvkg-000Fas-1m
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 14:09:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNvkd-0007DX-0d; Thu, 11 Jan 2024 15:09:43 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNvkc-001won-JW; Thu, 11 Jan 2024 15:09:42 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNvkc-00DYg4-1h;
	Thu, 11 Jan 2024 15:09:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240110-scripts-omap3-usb-loader-fix-compilation-v1-0-0503f170fa59@pengutronix.de>
References: <20240110-scripts-omap3-usb-loader-fix-compilation-v1-0-0503f170fa59@pengutronix.de>
Message-Id: <170498218252.3231425.13063974925470719161.b4-ty@pengutronix.de>
Date: Thu, 11 Jan 2024 15:09:42 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_060946_588518_77B6F64C 
X-CRM114-Status: UNSURE (   6.17  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/2] omap3-usb-loader fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 10 Jan 2024 15:17:10 +0100, Sascha Hauer wrote:
> This contains a few fixes for the omap3-usb-loader tool
> 
> 

Applied, thanks!

[1/2] omap3-usb-loader: Fix compilation
      commit: 542d86f3c1f9442a4a4bd224f95d2d7c07eb09a0
[2/2] omap3-usb-loader: Fix for big endian hosts
      commit: 8327cfa82d00dcd25300498f67bc4b90869a35f0

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



