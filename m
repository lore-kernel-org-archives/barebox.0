Delivery-date: Wed, 30 Apr 2025 11:34:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uA3pt-000mec-2d
	for lore@lore.pengutronix.de;
	Wed, 30 Apr 2025 11:34:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uA3pt-00082t-9R
	for lore@pengutronix.de; Wed, 30 Apr 2025 11:34:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EhVpJV8sFzqCCtjdqgOdGnyL5xQerMT+kxFTdSABaKQ=; b=WREBhivMIXyoPowHjXAsgz+jiZ
	sf3jHofUiTqAY/D6iX5S7HzegAKi6nyqhbujfoRNFAJl0hw0jrKAS3SShqS0wLaC0l8vR8lE/+4tQ
	nulfOcibCQlaxQmBP8/NsQCHXcylcGYok+hyC0KJSzXV03wNIxi/aXW2AEv6t8L0OyMADKXTc6DTS
	zsBdzSxh91hKTDL2kgixk5W1k1msaJPlcgI9KJwVgzEWQw8nRFPxsiUxvh3sBmMy4fviFw49H0e5H
	Lw/ybdoe1kHmmGz9TjM1x1s2iNL/VU+iHniXu0LKNYh+qRT3cCZMPdfYtFVJqNHijPVop2zwFtUy3
	kJKg+9ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA3pO-0000000CNhb-1jzb;
	Wed, 30 Apr 2025 09:34:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA3fn-0000000CLiL-0B0q
	for barebox@lists.infradead.org;
	Wed, 30 Apr 2025 09:24:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uA3fl-0003cm-LG; Wed, 30 Apr 2025 11:24:09 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uA3fl-000PJE-1V;
	Wed, 30 Apr 2025 11:24:09 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uA3fl-00E3fd-1I;
	Wed, 30 Apr 2025 11:24:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250428125217.1931365-1-a.fatoum@pengutronix.de>
References: <20250428125217.1931365-1-a.fatoum@pengutronix.de>
Message-Id: <174600504939.3350642.12436527348420763203.b4-ty@pengutronix.de>
Date: Wed, 30 Apr 2025 11:24:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_022411_083838_970F5FC3 
X-CRM114-Status: UNSURE (   7.96  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH 0/6] fastboot: fix handling of non-existent
 partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 28 Apr 2025 14:52:12 +0200, Ahmad Fatoum wrote:
> To allow flashing an image with a partition table followed by an image
> for a specific partition, the fastboot implementation was changed to
> evaluate partitions on demand.
> 
> This introduced issues around handling of non-existent files, which
> should be resolved by this series.
> 
> [...]

Applied, thanks!

[2/6] fastboot: introduce fastboot_tx_print_var() helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=fd879de6553d (link may not be stable)
[3/6] fastboot: don't populate partition variables unconditionally
      https://git.pengutronix.de/cgit/barebox/commit/?id=93476ef90999 (link may not be stable)
[4/6] fastboot: only populate variables explicitly asked for
      https://git.pengutronix.de/cgit/barebox/commit/?id=1259c0c6dc21 (link may not be stable)
[5/6] fastboot: factor out fb_file_getsize
      https://git.pengutronix.de/cgit/barebox/commit/?id=5328221bf356 (link may not be stable)
[6/6] fastboot: check for file existence before flashing/erasing
      https://git.pengutronix.de/cgit/barebox/commit/?id=123b5c937841 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



