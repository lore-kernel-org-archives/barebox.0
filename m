Delivery-date: Mon, 20 Oct 2025 14:59:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTt-009ts3-0v
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:59:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTl-00016b-UI
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:59:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y1XbFmbDRNklvRRWhGJFPSyBQ/cRPcWB9EdP9cFGiaM=; b=Ot3Jbc2ux2ifHj1mshkRuxBl+c
	MDZikLVjWaTI9xXv1E/lYmftDMEv0Bj21elGnEettLLu56vGMOmY+btOlvaJR3KdHJWtehJCTChYP
	TiD9iwtsKwtNOexHZoJJmoHjDn0+LmyAR+MGNZl4UzR+e5p+Qx5G4DmtpEDeYK6t7jvfQP8KUes9a
	v17wP2Uz3389LNnLzNZbJJprmhDaHTDgbDMEBQICUfPUJh8FH6OU1/MNKSGe9yGpSrplZRPzWNS/H
	zKpqY+1M2am9RlGTxJWc3SjGRLQc98KgHn0h264AD6Y4mcoXF/0nP9i49vld49bIV0zSt4rD+s1lA
	JP1HgwKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSy-0000000Dfew-0tnK;
	Mon, 20 Oct 2025 12:58:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSo-0000000DfLo-1KVS
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 12:58:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=Y1XbFmbDRNklvRRWhGJFPSyBQ/cRPcWB9EdP9cFGiaM=; b=qcGM9aW3OGmP0CybKbj5DHgIPb
	pUxfV777SBEYqIUHLsg+DtuLwgRIPHjiOyW2sceICat+PLs58nzyrmpky2HOseAQ89DFxOjprHc0Q
	xTQHc3s6Y1BtmbcXtk5GC1qoT13lcs8aI/sdBlECNK5WEFFLJ8M5KIefn0i4RhQzBzyy/L8yo+u1V
	0MqWMZp+PZL1yqOEUol/aDmFGjPurCTqGZ1xMKOeKibW+6cKuuGzDk+CcgdoNiC+Ci57tt6rPXglp
	AdT94fXhUGS/NxV6+enkj+1/rq8VwfXr2R3BYSfGhwotxxTIkL8mmltErlOmcCHgE+Fl+spUI3OXP
	hWtgDCrg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSi-00000007hdP-2ACO
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSe-0008Dz-9S
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:04 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAnTz-004X3y-14;
	Mon, 20 Oct 2025 12:51:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAnTz-0000000A3Zi-16eQ;
	Mon, 20 Oct 2025 12:51:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20251015090956.2298649-1-a.fatoum@pengutronix.de>
References: <20251015090956.2298649-1-a.fatoum@pengutronix.de>
Message-Id: <176095747926.2397015.11671401890515051679.b4-ty@pengutronix.de>
Date: Mon, 20 Oct 2025 12:51:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_135809_855255_517F440D 
X-CRM114-Status: UNSURE (   6.89  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] security: hide CRYPTO_BUILTIN_DEVELOPMENT_KEYS
 behind INSECURE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 Oct 2025 11:09:33 +0200, Ahmad Fatoum wrote:
> CONFIG_HAS_INSECURE_DEFAULTS is meant for options that may be insecure
> by default and need extra care when used in secure deployments.
> 
> CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS can't be used in a secure manner
> at all and the help text spells it out, so it's more appropriate to have
> it explicitly depending on INSECURE.
> 
> [...]

Applied, thanks!

[1/1] security: hide CRYPTO_BUILTIN_DEVELOPMENT_KEYS behind INSECURE
      https://git.pengutronix.de/cgit/barebox/commit/?id=e8bf031f85ac (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



