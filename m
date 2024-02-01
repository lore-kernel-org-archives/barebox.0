Delivery-date: Thu, 01 Feb 2024 16:10:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVYi7-00FoTL-1d
	for lore@lore.pengutronix.de;
	Thu, 01 Feb 2024 16:10:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVYi8-0005Qr-4N
	for lore@pengutronix.de; Thu, 01 Feb 2024 16:10:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4WRgz4PMl/Ox+fcF/8DT6ZD//rfQpy9Um35BXbAtCFI=; b=vjT3IB1/EEjM5dQXANRpUJ+mAi
	AA5kvDFQjwVXDgMe313BzMjZC7iVDVBazhkLBL9dhG4H0LMUGL3IRAo/5fpUpVyrPXukI/bGPd5fI
	889hmx2bSVxc1wyQ9HDBtJB9CDckqebBrmZQ4kAImt0gTQLaU+06HhKJtg0gui4dlD7bR3If8Abao
	kyvK7SRZFaE+gx3aQduM8FiUZtBJzetmWasTXTXLVUsI4rJ8nwU/eDkBu3PVXbRWRwzqddosFhn/5
	Itsoaqg2WT+wX8276B3B/6CIbCXwU7wcP7i8ktH7vtlXKFS7Isli876IQnAKLLBr6Ywl5XPqZZ0y6
	+PWXWH9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVYhd-00000008O2R-3p4A;
	Thu, 01 Feb 2024 15:10:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVYha-00000008O26-1vYn
	for barebox@lists.infradead.org;
	Thu, 01 Feb 2024 15:10:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVYhZ-0005O6-9F; Thu, 01 Feb 2024 16:10:05 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVYhY-003sg4-T0; Thu, 01 Feb 2024 16:10:04 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVYhY-00Er8V-2h;
	Thu, 01 Feb 2024 16:10:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240201-fix-fdt-memory-safety-v2-0-267b7b8813fd@pengutronix.de>
References: <20240201-fix-fdt-memory-safety-v2-0-267b7b8813fd@pengutronix.de>
Message-Id: <170680020483.3540828.478548680865440914.b4-ty@pengutronix.de>
Date: Thu, 01 Feb 2024 16:10:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_071006_533152_E6DB83A2 
X-CRM114-Status: UNSURE (   9.70  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 0/2] of: fdt: fix memory leak and oob writes in
 fdt_ensure_space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 01 Feb 2024 12:28:48 +0100, Stefan Kerkmann wrote:
> I have encountered the oob write while attempting to modify a large FIT
> image with of_property. While hunting for the root cause I noticed that
> there is a potential memory leak in fdt_ensure_space as well. Both is
> fixed in this series.
> 
> 

Applied, thanks!

[1/2] of: fdt: fix memory leak in fdt_ensure_space
      https://git.pengutronix.de/cgit/barebox/commit/?id=dd36494ae201 (link may not be stable)
[2/2] of: fdt: fix oob writes with large fdt properties
      https://git.pengutronix.de/cgit/barebox/commit/?id=96628249f26e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



