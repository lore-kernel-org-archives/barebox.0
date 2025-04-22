Delivery-date: Tue, 22 Apr 2025 18:36:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Gbf-0047tn-1y
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 18:36:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Gbf-0001cp-12
	for lore@pengutronix.de; Tue, 22 Apr 2025 18:36:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4llLjfegtTeN6Isk2VdnndPQAHCKv5BHdBKwnzfuPEI=; b=A7Si8nFO7ZS4ppFga1U0ASjAzn
	TBHiQj85POGa87yp8bUZcykok+CxqhcfXZjfesk/IHozUFwarsbua2bUqI1WH1YXjK5dexdcLFLho
	EtGVXa25c8YDXXnqP568094vZ2ATiyCZo+R/vaG1arpNdtSPPzfge0sLDqt2mXlCakU+2FA70Uejg
	MqT18w3RgnkcypwPJU2YRDKvq8zkUkDk7thE6fNtEAX5HiVSsQdvvpu2a75+wRJJdjFMFttnVCyE9
	OdfZTxLXTtUsOTKq2Ld9uMf4ATXXjtWtzJKN7n1hdrTewuLTL3TknV1fMNBMbg6Xc66i3H3oWbIDx
	48NIdagQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Gb2-00000007wBv-0UAu;
	Tue, 22 Apr 2025 16:35:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7FAZ-00000007ceD-2IfG
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 15:04:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7FAX-0006zR-FE; Tue, 22 Apr 2025 17:04:17 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7FAX-001ZXt-0t;
	Tue, 22 Apr 2025 17:04:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7FAX-00A2vk-0g;
	Tue, 22 Apr 2025 17:04:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250409140134.2079552-1-a.fatoum@pengutronix.de>
References: <20250409140134.2079552-1-a.fatoum@pengutronix.de>
Message-Id: <174533425720.2394443.15655403946614262641.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 17:04:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_080419_589021_90BA7438 
X-CRM114-Status: UNSURE (   8.04  )
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
Subject: Re: [PATCH 0/7] ARM: add support for chainloading barebox inside
 FIP images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 09 Apr 2025 16:01:28 +0200, Ahmad Fatoum wrote:
> For use on the STM32MP1, add a bootm handler for chainloading FIP
> images. This removes the last remaining use case for SSBL .stm32 images,
> after TF-A had dropped support late 2022.
> 
> Ahmad Fatoum (7):
>   fip: add struct fip_image_desc::private_data
>   fip: mark predefined toc_entries array const
>   bootm: implement UIMAGE_IS_ADDRESS_VALID helper
>   ARM: legacy: make architecture number unsigned
>   ARM: introduce jump_to_linux helper
>   ARM: add support for chainloading barebox inside FIP images
>   ARM: stm32mp: retire non-FIP stm32mp_bbu_mmc_register_handler
> 
> [...]

Applied, thanks!

[1/7] fip: add struct fip_image_desc::private_data
      https://git.pengutronix.de/cgit/barebox/commit/?id=5c3a7fe64fed (link may not be stable)
[2/7] fip: mark predefined toc_entries array const
      https://git.pengutronix.de/cgit/barebox/commit/?id=93c14dd7b326 (link may not be stable)
[3/7] bootm: implement UIMAGE_IS_ADDRESS_VALID helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=879208beff0b (link may not be stable)
[4/7] ARM: legacy: make architecture number unsigned
      https://git.pengutronix.de/cgit/barebox/commit/?id=bd4a7b8edd41 (link may not be stable)
[5/7] ARM: introduce jump_to_linux helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=26ddae22a001 (link may not be stable)
[6/7] ARM: add support for chainloading barebox inside FIP images
      https://git.pengutronix.de/cgit/barebox/commit/?id=c33636a0f165 (link may not be stable)
[7/7] ARM: stm32mp: retire non-FIP stm32mp_bbu_mmc_register_handler
      https://git.pengutronix.de/cgit/barebox/commit/?id=df119b0af6bd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



