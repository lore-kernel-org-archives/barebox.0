Delivery-date: Mon, 02 Dec 2024 14:51:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI6pr-0036dA-1L
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 14:51:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI6pr-0003UM-DI
	for lore@pengutronix.de; Mon, 02 Dec 2024 14:51:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u3Pm39V/1y2zQkfrVLpnPR/a45skipenqO2Auu2PXwM=; b=pFM1lnIOy0gzNBooYVE3F7eczj
	lVqZxmwgfv1YHO18mw/n5n/DDJeBH++1XIQPNEBFL5MW04W4WrKG+oaT9cyeZdUgCXoV1kJ+tFSLJ
	SHROLcP4F4bFEprQcsz2eIPoLF4PxqavGNDIDE2U00nQyqXsJbhQ7el908TVrRLp6aKUn+RtJQsZ/
	p60ffdyGCheouqFI0A7+jAhZKJY5DQV3NbNXlxqi2KciqInqS+WbHHQ77Z+nCV24SLm5Ll8sxg0sO
	OTVSOPemVLebq/EEcUNLRLBhjRhRYtyKHp9yZnpn/Mm/35VfDjPGCuQKmka0+EZ8z0NH5MkfZk3Ne
	RZk/cC3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI6pH-00000006IqG-3dHh;
	Mon, 02 Dec 2024 13:50:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI6pF-00000006Ipi-0V68
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 13:50:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tI6pD-0003Ku-K0; Mon, 02 Dec 2024 14:50:55 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tI6pC-001J6l-27;
	Mon, 02 Dec 2024 14:50:55 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tI6pD-00GR2k-16;
	Mon, 02 Dec 2024 14:50:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241202124232.1813897-1-a.fatoum@pengutronix.de>
References: <20241202124232.1813897-1-a.fatoum@pengutronix.de>
Message-Id: <173314745533.3917029.15123587216857838950.b4-ty@pengutronix.de>
Date: Mon, 02 Dec 2024 14:50:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_055057_160425_E4867B83 
X-CRM114-Status: UNSURE (   8.37  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] checkpatch: fix detection of barebox root
 directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 02 Dec 2024 13:42:32 +0100, Ahmad Fatoum wrote:
> In v2024.09.0, we switched from our old README to a new fancy
> README.rst. What was missing though, was adjusting scripts/checkpach.pl
> as it uses the existence of a number of files, including the README file
> to decide whether a directory is the top-level barebox directory or not.
> 
> Rename README to README.rst and while at it, change the error messages
> to not output a confusing:
> 
> [...]

Applied, thanks!

[1/1] checkpatch: fix detection of barebox root directory
      https://git.pengutronix.de/cgit/barebox/commit/?id=1d6b85a11f75 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



