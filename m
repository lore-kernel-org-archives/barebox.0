Delivery-date: Fri, 06 Dec 2024 10:52:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJV0P-004glb-2o
	for lore@lore.pengutronix.de;
	Fri, 06 Dec 2024 10:52:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJV0P-0005gE-Rf
	for lore@pengutronix.de; Fri, 06 Dec 2024 10:52:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WYFvCVfHrPNKThs4kL52NHkUod19dLumAq9lYAtObDo=; b=RTuAWoMglFe8ABCzS+V50NiRkT
	cnwMbDvq083T2CAZ39Ul0y78av91HUpoRF9eeLvAcmeh0YKzlt9cRYPLuKgWIkt8ba4LEkOkMCPQd
	S5nBz5r1jMCeC8AV7jXxITB6KvA2C6cVTflR3e34nt9sWH6ZS/K6WbaXMS2yNryAupeFg+oEx8doz
	F65/94kO3ITORbdgBlVWLReKALJ9K7fR3FJTqIR+qHEmo4i0URj5cIScEIWS6ca6tJYg4G+bocYKS
	rZ26OUDPkPAy7XSrQoTQmvSY1vAL0bssFp4j1jtjjSzJK6t3rWcGZ2XshmnB/phdzau7ebBZtgALO
	hrXz3W8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJUzk-000000019O0-2Ppq;
	Fri, 06 Dec 2024 09:51:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJUry-000000017cI-28Rw
	for barebox@lists.infradead.org;
	Fri, 06 Dec 2024 09:43:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJUrv-0004CZ-6i; Fri, 06 Dec 2024 10:43:27 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJUru-001yWv-0o;
	Fri, 06 Dec 2024 10:43:27 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJUru-000WRD-35;
	Fri, 06 Dec 2024 10:43:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241205085530.3897385-1-s.hauer@pengutronix.de>
References: <20241205085530.3897385-1-s.hauer@pengutronix.de>
Message-Id: <173347820694.124652.1960384069264322895.b4-ty@pengutronix.de>
Date: Fri, 06 Dec 2024 10:43:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_014330_548958_7DF818EB 
X-CRM114-Status: UNSURE (   9.02  )
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
Subject: Re: [PATCH 1/2] mci: parse upstream boot/gp partition binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 05 Dec 2024 09:55:29 +0100, Sascha Hauer wrote:
> Linux recently added support for device tree partition binding for
> SD/eMMC devices. Linux supports partitioning the main area as well as
> the boot and gp areas. This adds support for the same binding to
> barebox.
> 
> barebox already had support for partitioning the eMMC boot partitions,
> unfortunately with different node names. Try the upstream binding first
> and fall back to the barebox binding if upstream compatible nodes are
> not found.
> 
> [...]

Applied, thanks!

[1/2] mci: parse upstream boot/gp partition binding
      https://git.pengutronix.de/cgit/barebox/commit/?id=15cc1fa00cda (link may not be stable)
[2/2] ARM: dts: Use upstream eMMC boot partition binding
      https://git.pengutronix.de/cgit/barebox/commit/?id=bba5fd59b0a0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



