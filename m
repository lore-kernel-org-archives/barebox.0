Delivery-date: Tue, 16 Jan 2024 07:51:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPdIg-001TYA-1e
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 07:51:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPdIh-0003xa-7h
	for lore@pengutronix.de; Tue, 16 Jan 2024 07:51:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JU7frECjaiK+3lcYQ2OpjQVw9sZx0KuJjEdcUlgrBdM=; b=NdqptNMGR4wzpe5JmG72A+ZjWF
	mkexY+LgNyHYPhr3zhhgFyCltNLCZmKFX3glhxg6nbBD2X/wcQSuIWOWm++7GHP4SuGVSSN17eq1X
	HFeb4aXbmB6Cu5d/zXmvF8en0RS1cUgNscV69uGV8SNdvRc5kzXOi5GHsc2dAPrQsvMtSLSyfT0t9
	deac6VbPGsoxDvRDo2TArYsw+DUHWvYX9nqB0L6E70CyT6i3Hvfr/uX+mSIyoSfCtiwl3IJzAwone
	5a01zrdBvqTJS/fHzP76h/+KBfCVtrVXrVnP5H/d9tirszluZxaOpqIGnui9OJOH4cOJmS86uSg5f
	tJgtsciw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPdHN-00B943-2F;
	Tue, 16 Jan 2024 06:50:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPdHJ-00B91l-0I
	for barebox@lists.infradead.org;
	Tue, 16 Jan 2024 06:50:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rPdHC-0003rh-OU; Tue, 16 Jan 2024 07:50:22 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rPdHC-000BIO-Bz; Tue, 16 Jan 2024 07:50:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rPdHC-005AJu-0y;
	Tue, 16 Jan 2024 07:50:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20240112-fix-habv4-event-report-v2-0-1c91bc857935@pengutronix.de>
References: <20240112-fix-habv4-event-report-v2-0-1c91bc857935@pengutronix.de>
Message-Id: <170538782229.1231301.10618967542723483845.b4-ty@pengutronix.de>
Date: Tue, 16 Jan 2024 07:50:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_225029_132461_38910813 
X-CRM114-Status: UNSURE (   8.90  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 0/2] Use HABv4 report_event implementation for
 imx8mm and imx8mn
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 12 Jan 2024 16:21:06 +0100, Stefan Kerkmann wrote:
> This series corrects the HABv4 rom vector table and syncs it with the
> offical NXP documentation and switches the imx8mm and imx8mn socs from
> the `imx8m_read_sram_events` ram parsing implementation to the one found
> in the HABv4 rom. Calling the boot rom previously caused hangs which was
> the root cause for the ram parsing workaround, with the corrections to
> the API these hangs were no longer observed.
> 
> [...]

Applied, thanks!

[1/2] habv4: correct habv4 rom vector table
      https://git.pengutronix.de/cgit/barebox/commit/?id=8f8178a8a82a (link may not be stable)
[2/2] habv4: use hab rom implementation of report_event
      https://git.pengutronix.de/cgit/barebox/commit/?id=1853e97dc325 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



