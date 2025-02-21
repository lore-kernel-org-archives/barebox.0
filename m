Delivery-date: Fri, 21 Feb 2025 11:36:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlQOh-0054ku-1L
	for lore@lore.pengutronix.de;
	Fri, 21 Feb 2025 11:36:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlQOg-0003hH-9E
	for lore@pengutronix.de; Fri, 21 Feb 2025 11:36:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tDeDNdGjVPuiyLf5v9NndeKlz8kMH2OvmiXuFbOShk0=; b=aQ+YveR51oGB9NB5rSBBeo1KML
	/giyxQ2JpjU2IzEORcRWJxWdwJ7JZgOJ//jUn9Cp+NS0IbHGKPuj7cSY/7/waPLVKHMa5Dyn0JW9j
	ovXU3L7ADA+itVdYuJV+HZ12YyCaC8mfkptdzDG328ZxvhnR0/AOkyI19tjt6z5FvBmAbdDhqR/E7
	XFDM9l5UI7Oub2sPUrmtwiR3zB/wavehxcN8lY8a0lU2HySf07+FTnjfDjZ0FAKsXKGJRLG03HsyY
	H+hi+G4wyYMCOe+/SvHMg39D8WGJKZ6lryzY+Y7pzcM1MFHNe+0ThSh91iSgg3oeLkNbirRh7XNni
	ZW4NXuoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlQO2-00000005CT6-3zPi;
	Fri, 21 Feb 2025 10:36:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlQAn-00000005A5O-0Qb6
	for barebox@lists.infradead.org;
	Fri, 21 Feb 2025 10:22:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tlQAl-0001YM-Ck; Fri, 21 Feb 2025 11:22:19 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tlQAl-0025Gv-0g;
	Fri, 21 Feb 2025 11:22:19 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tlQAl-005lBZ-0T;
	Fri, 21 Feb 2025 11:22:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: ejo@pengutronix.de
In-Reply-To: <20250220064612.865757-1-a.fatoum@pengutronix.de>
References: <20250220064612.865757-1-a.fatoum@pengutronix.de>
Message-Id: <174013333913.1372990.11745460185790676726.b4-ty@pengutronix.de>
Date: Fri, 21 Feb 2025 11:22:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_022221_143753_E41F8BEE 
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/2] scripts: define _GNU_SOURCE for every user
 tool build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 20 Feb 2025 07:46:11 +0100, Ahmad Fatoum wrote:
> Defining _GNU_SOURCE via userccflags (for target tools) and KBUILD_HOSTCFLAGS
> (for host tools) works, but needs to be repeated in subdirectories like i.MX
> as well. As we make ample use of the asprintf GNU extension anyway, let's just
> define it in the top-level makefile for build of all user code.
> 
> 

Applied, thanks!

[1/2] scripts: define _GNU_SOURCE for every user tool build
      https://git.pengutronix.de/cgit/barebox/commit/?id=6b0121ddc44b (link may not be stable)
[2/2] scripts: common.h: define loff_t on musl
      https://git.pengutronix.de/cgit/barebox/commit/?id=f0c67c9477c9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



