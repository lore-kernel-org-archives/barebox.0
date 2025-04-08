Delivery-date: Tue, 08 Apr 2025 07:08:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u21Ce-009qX4-2D
	for lore@lore.pengutronix.de;
	Tue, 08 Apr 2025 07:08:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u21Ce-0000kJ-5X
	for lore@pengutronix.de; Tue, 08 Apr 2025 07:08:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NRL3rDsiTODIBBFGsUnyFDwzv0iNjv8Vkwg2u3UFFyw=; b=Rmxb+DP9AYn52yfdP5G/XI+ltp
	69OxGcW+2ZWgAXOu/r0uizZ/0Z4BrRslecB8BcUUKI2NF9LoOUkbq4VgArK7wCLT5so/TSr39/7qs
	Xqw0bpF1xxzjmzTLjhSovetiRmIq6dahUCo+At8eL3QV5EiVcUCpxE0HOwIqAH3N7fAtlP79Z847+
	avalRSUgAjVkTZdlHEh8VGd+MpAn9Zz2ZMZ10fLIRGjUTxgRE1lblW6+S0g7buWm/F1434SzvhBSq
	F3O9uXcAwo/LT1WfdtILk3l8G3d4uXuMzxBM+52w/49uCIhH45qWB8moz5Uh0c7HkPcgi4PKJHaen
	6y6Br2Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u21C4-00000002kl0-1n0O;
	Tue, 08 Apr 2025 05:08:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u21C1-00000002kkL-2yWD
	for barebox@lists.infradead.org;
	Tue, 08 Apr 2025 05:08:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u21C0-0000YC-I4; Tue, 08 Apr 2025 07:08:12 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u21C0-003sR9-1C;
	Tue, 08 Apr 2025 07:08:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u21C0-002GS8-0z;
	Tue, 08 Apr 2025 07:08:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250407130610.2865974-1-s.hauer@pengutronix.de>
References: <20250407130610.2865974-1-s.hauer@pengutronix.de>
Message-Id: <174408889230.539705.12763474177536528837.b4-ty@pengutronix.de>
Date: Tue, 08 Apr 2025 07:08:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_220813_749390_497A0997 
X-CRM114-Status: UNSURE (   6.27  )
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
Subject: Re: [PATCH] commands: boot: document bootchooser option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 07 Apr 2025 15:06:10 +0200, Sascha Hauer wrote:
> The boot command takes "bootchooser" as boot source, but this has never
> been documented in the help text. Add documentation for this.
> 
> 

Applied, thanks!

[1/1] commands: boot: document bootchooser option
      https://git.pengutronix.de/cgit/barebox/commit/?id=cdab3bb8c915 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



