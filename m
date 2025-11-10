Delivery-date: Mon, 10 Nov 2025 09:21:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIN9K-00HJWl-2B
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 09:21:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIN9K-0005ZF-5O
	for lore@pengutronix.de; Mon, 10 Nov 2025 09:21:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JD52qaF3Dmhfshvsc3dNrwicdVn4R/y4GQxL/AGgoCE=; b=DS704lFcEWRZN/F66TpoJh5Rjy
	b7CVDPzCOSqHKhYLL0PN6cdC0JO/Z/22vfJH+77LPjWX87JIr6DPghn4UKwg95eFPx2al91UllGbx
	VpSieeBCa+CVnRFs6ge30364BvvfQWAqdHmy6oQu1dZHJBMyq0Wqc9OY7qyQv9/Pux5lOZjQkpX5/
	ZlcjZhzJvVQBjIc+huEWInqZTCWIhzDTftlga8jn4lnB55EhLQ8g7v8P9Ry7NEsG0edNSZslH+7mm
	V4afBAtxHnfLrZbRQMZMFtP1wYQ/HbvSTH5UTJSlYQgIW6x8wN0wcCTqULm7sq0QtOB5TGO53cn6C
	BUs4xZlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIN8y-00000004yQN-2ZNk;
	Mon, 10 Nov 2025 08:20:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIN8t-00000004yPR-0iHH
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 08:20:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIN8r-0005Uj-Ct; Mon, 10 Nov 2025 09:20:49 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIN8r-007zPu-0g;
	Mon, 10 Nov 2025 09:20:49 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIN8r-000000049Cy-2Tmr;
	Mon, 10 Nov 2025 09:20:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251107141725.2590394-1-a.fatoum@pengutronix.de>
References: <20251107141725.2590394-1-a.fatoum@pengutronix.de>
Message-Id: <176276284914.988669.5316356582057719823.b4-ty@pengutronix.de>
Date: Mon, 10 Nov 2025 09:20:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_002051_211600_6B87433F 
X-CRM114-Status: UNSURE (   6.09  )
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
Subject: Re: [PATCH master 1/5] efi: payload: drop unreferenced
 efi_do_execute_image()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 07 Nov 2025 15:17:18 +0100, Ahmad Fatoum wrote:
> This function exists in efi/payload/bootm.c as efi_execute(), where it's
> actually used, so drop this unused copy.
> 
> 

Applied, thanks!

[1/5] efi: payload: drop unreferenced efi_do_execute_image()
      https://git.pengutronix.de/cgit/barebox/commit/?id=78932e01e492 (link may not be stable)
[2/5] filetype: introduce separate filetype_x86_efi_linux_image
      https://git.pengutronix.de/cgit/barebox/commit/?id=a0459bb7a881 (link may not be stable)
[3/5] efi: payload: handover: fix filetype match
      https://git.pengutronix.de/cgit/barebox/commit/?id=956a91bcb79c (link may not be stable)
[4/5] efi: payload: reinstate error message when booting non-EFI stubbed kernel
      https://git.pengutronix.de/cgit/barebox/commit/?id=ba1aabfee4a6 (link may not be stable)
[5/5] efi: payload: align kernel boot status messages
      https://git.pengutronix.de/cgit/barebox/commit/?id=0633a4db9d23 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



