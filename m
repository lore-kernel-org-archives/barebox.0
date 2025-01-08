Delivery-date: Wed, 08 Jan 2025 15:18:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVWsv-000lqu-2B
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 15:18:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVWsv-0005fC-Ll
	for lore@pengutronix.de; Wed, 08 Jan 2025 15:18:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LdMRG9MKRQCfhmSFwKQp8lpNU9wXnQ7U/EnYPFs1tHc=; b=X0uAX7pkASH6tUFsJ2UEtRfseV
	9o4u03lkRAdDUV/B6NRzLh5mOxmP9VWI4vZLfeld8tEqjSRsL7wJECL2oiIo0vbjJcSecReRTShd7
	ZPWPPTTCpdFOZk6cYcdrvE4Drw3p8e3WmFsQuGK/PW6mAzgs9TYZ3DojK/44Tjk0qprvR9wlHtIw/
	jsrPlrXcgolmPBmeJCShhPTLWUTwdDNibLAWcXs3SPdgjZxc24SSJKVVw/j/0gHsTdReyPgwYIqbd
	gL+FFl8lWdoKBT7WsZi5Moni5MLrb4aTn+P0jaAs3YNBT9Qyo9vGE5uSjIo5AtDUPLwqEVrkZqm0e
	3tsUyIig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVWsO-00000008laH-3ZeV;
	Wed, 08 Jan 2025 14:17:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVWsL-00000008lZu-28C3
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 14:17:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWsK-0005To-0t; Wed, 08 Jan 2025 15:17:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWsJ-007XJV-0C;
	Wed, 08 Jan 2025 15:17:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWsJ-000IkD-2U;
	Wed, 08 Jan 2025 15:17:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250108091425.911629-1-a.fatoum@pengutronix.de>
References: <20250108091425.911629-1-a.fatoum@pengutronix.de>
Message-Id: <173634585576.72038.6755404394364664527.b4-ty@pengutronix.de>
Date: Wed, 08 Jan 2025 15:17:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_061737_549361_285E282D 
X-CRM114-Status: UNSURE (   6.84  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/2] test: self: ramfs: add regression test for
 recursive opendir
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 08 Jan 2025 10:14:24 +0100, Ahmad Fatoum wrote:
> Recursive opendir with parent and child directory having the same name
> is currently broken. Add a failing test, which will be fixed in the
> follow-up commit.
> 
> 

Applied, thanks!

[1/2] test: self: ramfs: add regression test for recursive opendir
      https://git.pengutronix.de/cgit/barebox/commit/?id=41a3864eac71 (link may not be stable)
[2/2] fs: fix resolving paths when directory name repeats
      https://git.pengutronix.de/cgit/barebox/commit/?id=adbd003e2d65 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



