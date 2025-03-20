Delivery-date: Thu, 20 Mar 2025 13:06:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvEfE-001sYB-2I
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 13:06:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvEfD-00065K-HA
	for lore@pengutronix.de; Thu, 20 Mar 2025 13:06:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zfQi9lrGevmKXSsDzbh7hcHN5O+FhbdHKTdXX8Prw2g=; b=fNbaGm6bcIwYUugxL72eWNzi+c
	Uta02FWCHClroPUasG2YN8Ifp6V5UEyIoWuFfXDvHiZi+c81/W9pug1MNo4iOj5yoVk8nccjECMNe
	O4FWpAfb/HYSQaVe0jFQxmQ20glQnV1PVUrJvSl5BMVuhaA5LTO2mE5AmVisYh1tq4LrgrAKfJSyI
	+E/ym2EbAMNejU5bU1UU/4Xq/YCGr2E7fe9d7JNs71ddf4uS26aybQwESxknj362AefpycX2zg9to
	iqTgZqVlEEEkGLbmzxTFsXOtWN31aT7bE0e265WcRREWZU7agy9Lxr5BCpy7wszG+Nh7zP3LECfye
	oCewyoyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvEeg-0000000C33x-3uuJ;
	Thu, 20 Mar 2025 12:05:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvELi-0000000BzAE-39hd
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 11:46:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvELh-00011Q-Cn; Thu, 20 Mar 2025 12:46:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvELg-000kdX-2X;
	Thu, 20 Mar 2025 12:46:09 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvELh-000pRm-0T;
	Thu, 20 Mar 2025 12:46:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250320051641.1721377-1-a.fatoum@pengutronix.de>
References: <20250320051641.1721377-1-a.fatoum@pengutronix.de>
Message-Id: <174247116914.197531.8685191015163076060.b4-ty@pengutronix.de>
Date: Thu, 20 Mar 2025 12:46:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_044610_797760_2BF772AC 
X-CRM114-Status: UNSURE (   7.31  )
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
Subject: Re: [PATCH master 0/8] treewide: misc fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 20 Mar 2025 06:16:33 +0100, Ahmad Fatoum wrote:
> Just a loose collection of fixes for master.
> 
> Ahmad Fatoum (8):
>   firmware: disable MISSING_FIRMWARE_ERROR for COMPILE_TEST builds
>   include: asm-generic/pointer.h: fix ASM_PTR definition for i386
>   sandbox: do not enable SANDBOX_LINUX_I386 in allyesconfig
>   Documentation: devicetree: fix Sphinx warnings
>   ARM: mvebu: kwb_bbu: add missing header
>   net: phy: fix of_get_phy_mode for XLGMII and beyond
>   vsprintf: fix left indentation when formatting wide string arguments
>   test: self: printf: add tests for formatting wide strings
> 
> [...]

Applied, thanks!

[1/8] firmware: disable MISSING_FIRMWARE_ERROR for COMPILE_TEST builds
      https://git.pengutronix.de/cgit/barebox/commit/?id=f98e851fb44a (link may not be stable)
[2/8] include: asm-generic/pointer.h: fix ASM_PTR definition for i386
      https://git.pengutronix.de/cgit/barebox/commit/?id=aac256131049 (link may not be stable)
[3/8] sandbox: do not enable SANDBOX_LINUX_I386 in allyesconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=3e99ee8d8daf (link may not be stable)
[4/8] Documentation: devicetree: fix Sphinx warnings
      https://git.pengutronix.de/cgit/barebox/commit/?id=e6fadf774de3 (link may not be stable)
[5/8] ARM: mvebu: kwb_bbu: add missing header
      https://git.pengutronix.de/cgit/barebox/commit/?id=2cb75d180cfd (link may not be stable)
[6/8] net: phy: fix of_get_phy_mode for XLGMII and beyond
      https://git.pengutronix.de/cgit/barebox/commit/?id=24a20c4f0919 (link may not be stable)
[7/8] vsprintf: fix left indentation when formatting wide string arguments
      https://git.pengutronix.de/cgit/barebox/commit/?id=e91b0cde02bc (link may not be stable)
[8/8] test: self: printf: add tests for formatting wide strings
      https://git.pengutronix.de/cgit/barebox/commit/?id=9340a6acec7c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



