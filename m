Delivery-date: Wed, 02 Jul 2025 09:00:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWrSM-00DDbQ-2X
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 09:00:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWrSM-0004aH-6c
	for lore@pengutronix.de; Wed, 02 Jul 2025 09:00:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O/g0+aQXUmq7Wvk5u+LtYfzeAB7QCbTetdX9OuENNWg=; b=BXKSKCgeWRk6IDLyaweEOx/xJP
	fsKxM5i0EjU8Db2BjdJnwH/uV+Bn1F+o//Mq/iBf9pLhHHCPWRXA/2tcMoTL2Zrx6odjIuoe9QhS2
	VxjX2hL3Xg/Jit3SHE6o+U3rwUHZ7Viue7TkuhblkCcOxprMxer3y6KZWZcvMyHCpxCMMa/VE9tEQ
	bpVHfg2kevAgzUtySqFTiPBJVa6hiNQ4md5OCVX8qi+XmsUPDBhVS0avTi7UAua/LbNvgKyv++vni
	hZJyB5rqapOykJ0JMxLC7+tJYlnAHN3+2BXwfwlbOyMC6qTu8JQNQc5ifRGYaZx75VgxqD1nKvrr/
	wcbJ+iCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWrRt-00000007SXZ-2uWr;
	Wed, 02 Jul 2025 07:00:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWrRr-00000007SXB-0Z5y
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 07:00:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWrRp-0004CC-Ko; Wed, 02 Jul 2025 09:00:01 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWrRp-006ORs-1U;
	Wed, 02 Jul 2025 09:00:01 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWrRp-001O9M-1H;
	Wed, 02 Jul 2025 09:00:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: bst@pengutronix.de
In-Reply-To: <20250701085251.148111-1-a.fatoum@pengutronix.de>
References: <20250701085251.148111-1-a.fatoum@pengutronix.de>
Message-Id: <175143960139.331117.9611828764746478861.b4-ty@pengutronix.de>
Date: Wed, 02 Jul 2025 09:00:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_000003_180056_C3BFBA11 
X-CRM114-Status: UNSURE (   7.01  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] commands: sleep: add support for running without
 pollers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 01 Jul 2025 10:52:49 +0200, Ahmad Fatoum wrote:
> This is useful to test how different parts of barebox behave when
> pollers are delayed too much.
> 
> 

Applied, thanks!

[1/3] commands: sleep: add support for running without pollers
      https://git.pengutronix.de/cgit/barebox/commit/?id=1e0f8a89f126 (link may not be stable)
[2/3] poller: add option to detect delayed poller activation
      https://git.pengutronix.de/cgit/barebox/commit/?id=0423ebf2f7a5 (link may not be stable)
[3/3] menu: schedule pollers/workqueues while waiting for menu item selection
      https://git.pengutronix.de/cgit/barebox/commit/?id=a2c5e429594d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



