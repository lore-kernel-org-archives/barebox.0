Delivery-date: Wed, 02 Jul 2025 14:29:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwaE-00DISP-1D
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 14:29:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwaD-00089p-SH
	for lore@pengutronix.de; Wed, 02 Jul 2025 14:29:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9am06CrolMbhmhWSuKa23dR1Jmo05cuSn/9tQxkbosE=; b=q+fVTUI8lW7HYsHkieYyz4e5KB
	895LDtvVvQ4z6dh0KPcUcHjBpmA68I8iAschiJDE6cd/cD4P2wE4R/0yVJ9vWhUIs6ajqc8I32yfn
	N6cp9pCZ/MhUknDCMJJ7eioNgy+8J/CFfMCaErKpgHg77dp8d0B6a+a0tknCusiE5IiZx6/+Mo7KG
	8+p9paRuEElxYgDrk2ttm6YvY3S2a2g+O9Qou13/nDkTRldCSfgeHbpj1C8zdNCgkYrDw13GxcnEp
	NGrNUw7BosLXezFVou0P4bKeI9fK7hUboK26ZTsj5yo1380b1sQt1Ipa9k6XXl1bq6qwofzNwI0Xk
	ioTQJChg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWwZm-00000008K4Q-1tGP;
	Wed, 02 Jul 2025 12:28:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWvxG-00000008C8g-2F1A
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 11:48:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWvxF-0005Ej-89; Wed, 02 Jul 2025 13:48:45 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWvxE-006Qix-3B;
	Wed, 02 Jul 2025 13:48:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWvxE-00EVwc-30;
	Wed, 02 Jul 2025 13:48:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250702102841.2196311-1-a.fatoum@pengutronix.de>
References: <20250702102841.2196311-1-a.fatoum@pengutronix.de>
Message-Id: <175145692492.3459217.1228935072654599913.b4-ty@pengutronix.de>
Date: Wed, 02 Jul 2025 13:48:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_044846_577475_6FC55AB9 
X-CRM114-Status: UNSURE (   7.05  )
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
Subject: Re: [PATCH master] Documentation: migration-2025.07.0: note env
 part change on 6ullevk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 02 Jul 2025 12:28:41 +0200, Ahmad Fatoum wrote:
> The total is still 1M, but userspace that wants to modify the barebox
> environment could end up overwriting parts of barebox instead, so
> mention that for completeness.
> 
> 

Applied, thanks!

[1/1] Documentation: migration-2025.07.0: note env part change on 6ullevk
      https://git.pengutronix.de/cgit/barebox/commit/?id=aa5dd7fea873 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



