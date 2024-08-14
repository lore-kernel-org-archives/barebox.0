Delivery-date: Wed, 14 Aug 2024 09:43:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1se8fP-009Sqz-2Q
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 09:43:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1se8fP-0004WQ-5o
	for lore@pengutronix.de; Wed, 14 Aug 2024 09:43:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vsCF1ptDzrLXG6cT6MzI3d3m8ToMT6OrkOwfkVv9dtk=; b=pyL+guzLfcce6HCFk070N9XjXD
	MDM59Ds2gogsV1D6ZSgfUiyd7m7Xkzwa7A5xlvaZU3TXlsdJgXBjnWSlzpdMMYjMtx56GiVfg3WGw
	wgQ2Oyblhmd9msXa0Nls947+SJ/XGAN8rk03OOK6k0+gGjhsG414TBgIiFd9Nv4EK4nIIeq6SybFM
	0mowKEV0W3dWfNLJBXJiMLZ+1RdZXAWGzyD/vGeiwsW1WmpQ1l9Cv5QZZCdGxjx27xEhhtTLh7LRz
	FJjDG6dCJg1fNm9Dg9zrr95LFWVHHRjcidur4rJB++raA/VQqdzhCUVvOenQIVbCpFpwAHQ/DHSGA
	lXVE2h2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se8ek-000000066D1-2QSc;
	Wed, 14 Aug 2024 07:42:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se8eh-000000066CZ-16Wd
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 07:42:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se8ed-0004RS-L8; Wed, 14 Aug 2024 09:42:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se8ed-000JEj-8W; Wed, 14 Aug 2024 09:42:47 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se8ed-005MOA-0f;
	Wed, 14 Aug 2024 09:42:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Roland Hieber <rhi@pengutronix.de>
In-Reply-To: <20240813170103.197350-1-rhi@pengutronix.de>
References: <20240813170103.197350-1-rhi@pengutronix.de>
Message-Id: <172362136720.1277691.3108669414909023692.b4-ty@pengutronix.de>
Date: Wed, 14 Aug 2024 09:42:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_004251_318435_A303C032 
X-CRM114-Status: UNSURE (   6.58  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: =?utf-8?q?Re=3A_=5BPATCH=5D_ARM=3A_i=2EMX8MP=3A_K=C3=B6nig+Bauer?=
 =?utf-8?q?_AlphaJet=3A_remove_barebox_partition_from_eMMC?=
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 13 Aug 2024 19:01:03 +0200, Roland Hieber wrote:
> The board cannot boot from eMMC because the SoM does not configure the
> boot pins appropriately, and has no way of choosing the eMMC as a boot
> medium. Instead, the area is used for the GPT partition table. Remove
> the confusing entry from the fixed partition table.
> 
> 

Applied, thanks!

[1/1] ARM: i.MX8MP: König+Bauer AlphaJet: remove barebox partition from eMMC
      https://git.pengutronix.de/cgit/barebox/commit/?id=08d9841ed568 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



