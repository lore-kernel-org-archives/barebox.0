Delivery-date: Tue, 04 Jul 2023 11:11:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGc3z-00Eajz-1F
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 11:11:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGc3w-0003Z2-OY
	for lore@pengutronix.de; Tue, 04 Jul 2023 11:11:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UxLswGjANPcEYlaCCQqVVtENxPvcnYpzAW7fMTK5EUo=; b=hLbbSX6L1NBRg+cfQs0VlKsfmh
	vCn8X2HlsO7i+mQmZYMUjsJ3SYg4kJTLv4xtMdGhZzCX1acM9exq0RRCCdo495aJ39RrDZvq5T9XZ
	pFj1V06+Z0JriqvHCOGGEv5sT48BjOVhtSOqjWdlbWBKrapiqSWG+fFKDG+qg68nwq+32dhLlnSvo
	ncavWD8rDtpEWo8uH2CNurEuntj+jiyfkJPY+e6lTDuFotLwYtK7V+z1bRGCMTdQ1xawOxbuVbpms
	FqwZ5EjWdTyGVsjjRqtZbzi3pG0WVenXcce3JYtAKADDXx1WVkp8prortRsRTi9aq9RrPlBQjgKKx
	ZGvLniDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGc2j-00Cfdu-1l;
	Tue, 04 Jul 2023 09:09:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGc2f-00CfdL-2D
	for barebox@lists.infradead.org;
	Tue, 04 Jul 2023 09:09:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGc2e-0003AE-8V; Tue, 04 Jul 2023 11:09:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGc2e-0007pc-0o; Tue, 04 Jul 2023 11:09:48 +0200
Date: Tue, 4 Jul 2023 11:09:47 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230704090947.GH15436@pengutronix.de>
References: <20230703140834.GR18491@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230703140834.GR18491@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_020949_722595_968E4FA2 
X-CRM114-Status: GOOD (  11.33  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: v2023.07.1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

There is a last minute bug in the v2023.07.0 Release, so here is
a stable tag for that version.

Firmware files compiled into the barebox image are not properly
aligned in the binary resulting in corrupted firmware files, so
when your image needs firmware compiled in, please use v2023.07.1
instead.

Sascha

----------------------------------------------------------------
Ahmad Fatoum (2):
      firmware: fix alignment of firmware images
      firmware: use portable newline escape

Sascha Hauer (1):
      Release v2023.07.1


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


