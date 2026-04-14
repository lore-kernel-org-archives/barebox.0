Delivery-date: Tue, 14 Apr 2026 09:14:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCXyL-00Bzvy-1a
	for lore@lore.pengutronix.de;
	Tue, 14 Apr 2026 09:14:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCXyK-0004o0-T7
	for lore@pengutronix.de; Tue, 14 Apr 2026 09:14:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O6uUkdIiNltQNuvJayKsUzn5RICkDu1wr3WwAJLFpP0=; b=SB8HDsL8IBQuwIZzIsLWz4wYYn
	69CS0bVOYgY9HZcTZSqZm3udLWlldD99BduwBB1svUcx6iMFO+AUbYZ/6/x74zIhsOfhwv9Y75Gu8
	xqYgpegQujxH41rt4yL46MhMASc8shnPv0PElL0OtV53BLZs2UITeB1CIIsnyNrU5D335g5FGE/jF
	8dSRUaBHWCU9LR5vsGLbNvKOoOJzr5L++yz2/VLZ86x5/xLba1Lx0GRrf0+wNZQTn5oyOV/yG5JIJ
	A+9+RWIv0wC9fyc4bWcHNY7gd5niAFBUHvkdeYh5t/LEy4Ty7iEu6gdF6VpQz6cqL/WemgxrIYBGA
	2wfkj2Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCXxt-0000000Gt6p-0UaI;
	Tue, 14 Apr 2026 07:13:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCXxq-0000000Gt68-0RYA
	for barebox@lists.infradead.org;
	Tue, 14 Apr 2026 07:13:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCXxn-0004iB-1U; Tue, 14 Apr 2026 09:13:35 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCXxm-005Inr-2l;
	Tue, 14 Apr 2026 09:13:34 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCXxm-0000000EUYR-3Be8;
	Tue, 14 Apr 2026 09:13:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260320-compressed-firmware-rockchip-v1-0-7d03c7e39d2f@pengutronix.de>
References: <20260320-compressed-firmware-rockchip-v1-0-7d03c7e39d2f@pengutronix.de>
Message-Id: <177615081474.3453755.349680124114607779.b4-ty@pengutronix.de>
Date: Tue, 14 Apr 2026 09:13:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_001338_147860_2D366992 
X-CRM114-Status: UNSURE (   7.38  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/6] Rockchip: Enable MMU before uncompressing TF-A and
 OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 20 Mar 2026 09:31:16 +0100, Sascha Hauer wrote:
> Having TF-A and OP-TEE compressed in the PBL is nice for reducing the
> binary size, but comes with a penalty of increased startup time. This
> series is based on the compressed-firmware series and reduces this
> penalty significantly by enabling the MMU before uncompressing the
> binaries. Most of the series is actually cleanup to have the necessary
> DRAM resources available in atf.c
> 
> [...]

Applied, thanks!

[1/6] ARM: rockchip: dmc: rework DRAM functions
      https://git.pengutronix.de/cgit/barebox/commit/?id=76e9720f64c3 (link may not be stable)
[2/6] ARM: rockchip: atf: make all memory banks available
      https://git.pengutronix.de/cgit/barebox/commit/?id=04a05f06744e (link may not be stable)
[3/6] ARM: rockchip: atf: add OP-TEE fdt creation function for all SoCs
      https://git.pengutronix.de/cgit/barebox/commit/?id=34b1e7515c4c (link may not be stable)
[4/6] ARM: Rockchip: Drop rk3xxx_atf_load_bl31()
      https://git.pengutronix.de/cgit/barebox/commit/?id=21c390e0850d (link may not be stable)
[5/6] ARM: rockchip: separate physical DRAM start from usable start
      https://git.pengutronix.de/cgit/barebox/commit/?id=516447c05cf0 (link may not be stable)
[6/6] ARM: rockchip: atf: enable MMU in PBL
      https://git.pengutronix.de/cgit/barebox/commit/?id=f2ae1a4a85d0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



