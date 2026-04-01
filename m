Delivery-date: Wed, 01 Apr 2026 17:36:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7xcD-007XBX-1O
	for lore@lore.pengutronix.de;
	Wed, 01 Apr 2026 17:36:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7xcC-0007tR-TG
	for lore@pengutronix.de; Wed, 01 Apr 2026 17:36:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZakKuyu+RjebHcYXMItSwhlrMe14W51BpnxNQRDLA2k=; b=qmwMNlUUQhfvoGMMW35vJar6jN
	vEaj4Lwqzj+bdayfc7Ms0uFMP6bMNc0dDT9iI6E17mSDmGxFdcnojr0bOPNnH5TUgLogCMiQWGPFL
	VqK1+MlaCk3XrO6jE4QV/MzGgFydoR+teQB7ATvOzIbpv1+glDMl2yQVO1GwQpza1tP3eJkhHxzIR
	pyYzkkxonhq2avo8Jcd6TxAuWB1+Z+YyAnS59Xe5JeeSh5bdIW9OtR+3Leewo0DSkmWV2Lg7QkiRb
	K9u5waAlRlp62Tl6ZdBc3DbqrN+ZgOg4MB4/RcwVc5v8AC8bApStQ0Iuho2o3JDuyKztF8+opD4xN
	r0wFQt4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7xbf-0000000FeBW-3ufT;
	Wed, 01 Apr 2026 15:35:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7xbc-0000000FeAX-1wMV
	for barebox@lists.infradead.org;
	Wed, 01 Apr 2026 15:35:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w7xbZ-0007iJ-BQ; Wed, 01 Apr 2026 17:35:41 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w7xbZ-003EM2-0X;
	Wed, 01 Apr 2026 17:35:41 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w7xbZ-00000002ceU-0PbP;
	Wed, 01 Apr 2026 17:35:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260401151227.2097733-2-a.fatoum@barebox.org>
References: <20260401151227.2097733-2-a.fatoum@barebox.org>
Message-Id: <177505774109.625224.4963725815452764317.b4-ty@pengutronix.de>
Date: Wed, 01 Apr 2026 17:35:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_083544_506768_7AAC21F3 
X-CRM114-Status: UNSURE (   7.16  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] security: policy: implement age verification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 01 Apr 2026 17:07:14 +0200, Ahmad Fatoum wrote:
> With barebox providing a UEFI environment, scheduling green threads
> and running DOOM, barebOS is ever more becoming a reality.
> 
> But with great power, comes great responsibility - in the form of
> government mandated age checking.
> 
> Fortunately, barebox's security policy framework already cleanly
> separates policy from mechanism: Sconfig options define what is
> permitted and IS_ALLOWED() guards enforce it at runtime.
> 
> [...]

Applied, thanks!

[1/2] security: policy: support age verification
      https://git.pengutronix.de/cgit/barebox/commit/?id=b8ca49771821 (link may not be stable)
[2/2] security: policy: add first age verification
      https://git.pengutronix.de/cgit/barebox/commit/?id=1b02a8f091e6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



