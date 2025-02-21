Delivery-date: Fri, 21 Feb 2025 08:34:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlNYd-0051gh-1c
	for lore@lore.pengutronix.de;
	Fri, 21 Feb 2025 08:34:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlNYc-0004JN-9f
	for lore@pengutronix.de; Fri, 21 Feb 2025 08:34:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TEXmFOFXcJHBF2w3TDWPffyU6TUUlTlVZw0xFHrBBNM=; b=ltfsnAAn39ZuxBtKj6jUo4ioDv
	gzbBNdiEGegQkWohHzZctP53L8MCmnFoJjhMjCAaBOGDXNBHcT2hkan0kinvP08jMThyeaNGfcU2r
	HCq8bNzFAPsUDy53uygin8mm8WCQ41PC/R3437M6l/B/HHuOq0yPlN2ePAsDl525n/8ZkoS6d0yD5
	TqIea7/Tk4CQ9xpMf+aJF2MpL7FoV9QdSkBMWMaza0SC9knfS67MKqdo5BXuy1xTkhg5bgsNhLMPO
	STf8DQ7G6a26KNZTvrZYW8egYUbD6i+Zx5wOjkDeGQ0x+z/2MAYtVSrN4XkNLQ8dTgfDTm0FYQFH4
	62pjtUFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlNXv-00000004X1F-0oXo;
	Fri, 21 Feb 2025 07:34:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlNXr-00000004Wzb-2iyC
	for barebox@lists.infradead.org;
	Fri, 21 Feb 2025 07:34:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tlNXl-0004D8-Jw; Fri, 21 Feb 2025 08:33:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tlNXl-00240Q-1M;
	Fri, 21 Feb 2025 08:33:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tlNXl-009sU3-19;
	Fri, 21 Feb 2025 08:33:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Jonathan Bar Or <jonathanbaror@gmail.com>
In-Reply-To: <20250219141844.1912413-1-s.hauer@pengutronix.de>
References: <20250219141844.1912413-1-s.hauer@pengutronix.de>
Message-Id: <174012323334.2354255.16758545638294107895.b4-ty@pengutronix.de>
Date: Fri, 21 Feb 2025 08:33:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_233359_689950_46F4E7CF 
X-CRM114-Status: UNSURE (   9.12  )
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
Subject: Re: [PATCH 0/5] Filesystem memory corruption fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 19 Feb 2025 15:18:39 +0100, Sascha Hauer wrote:
> These are some fixes for memory corruptions that can occur on corrupted
> or manipulated filesystems.
> 
> In case you use one of the affected filesystems in a secure boot chain
> you should apply these patches.
> 
> Normally you shouldn't use a barebox filesystem in a secure boot chain,
> but instead use FIT images on a raw partition. We never made this explicit
> though. Ahmad has done this recently:
> 
> [...]

Applied, thanks!

[1/5] CVE-2025-26722: fs: squashfs: Ensure positive inode length
      https://git.pengutronix.de/cgit/barebox/commit/?id=6281a871e2c6 (link may not be stable)
[2/5] CVE-2025-26724: fs: cramfs: fix malloc(size + constant) buffer overflow issues
      https://git.pengutronix.de/cgit/barebox/commit/?id=f86e528c8fba (link may not be stable)
[3/5] CVE-2025-26723: fs: ext4: fix malloc(size + constant) buffer overflow issues
      https://git.pengutronix.de/cgit/barebox/commit/?id=51eea5c16fd2 (link may not be stable)
[4/5] CVE-2025-26725: fs: jffs2: fix malloc(size + constant) buffer overflow issues
      https://git.pengutronix.de/cgit/barebox/commit/?id=e7397340359d (link may not be stable)
[5/5] CVE-2025-26721: fs: pstore: fix malloc(size + constant) buffer overflow issues
      https://git.pengutronix.de/cgit/barebox/commit/?id=7563f5722dfd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



