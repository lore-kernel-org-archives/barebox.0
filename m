Delivery-date: Wed, 23 Oct 2024 14:44:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3ajL-007sjA-2p
	for lore@lore.pengutronix.de;
	Wed, 23 Oct 2024 14:44:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3ajL-0000PY-AU
	for lore@pengutronix.de; Wed, 23 Oct 2024 14:44:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ve4RxJx8wjG9LpRXh8B8MYLY1RJxL/UuQLa6ZJVdPTo=; b=foEWEP2fybp7GljBCQUeB/E1Xa
	34QNAygqIVU5ltu7N+rz+zV4vofN7zvUnDBg0pMTwSO0BiKrpFA2NbPELYZ4VAWApMrUCZCOEVynn
	NpAcPx5VfRF9fVGQ0ZE17sOLKlCyAgx7CGCzwOdZJCfWqP5NwydcFSPPal5aiJ5+f9obnbnwBrPUI
	pQzQQsa5BohxqqL+7MYgnyjalEzqxx1hWdJ/vRq916a9gxlUEqXFstzNjOfXp+QfUR0AbwIH40TD8
	I4/hOhZECYn95IXXZgV7A8blhrkvAYAGBRvAq4UBweNYkGNy9oeu7+2nKaIqRubn4odIF2aySFbTF
	/U4Wp2Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3ain-0000000EMh1-39U7;
	Wed, 23 Oct 2024 12:44:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3aiN-0000000EMba-3Ro6
	for barebox@lists.infradead.org;
	Wed, 23 Oct 2024 12:43:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3aiM-0000GH-Ly; Wed, 23 Oct 2024 14:43:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3aiM-0002Hk-18;
	Wed, 23 Oct 2024 14:43:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3aiM-00GIDy-0y;
	Wed, 23 Oct 2024 14:43:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
Cc: barebox@lists.infradead.org
In-Reply-To: <20241022162726.166093-1-abdelrahmanyossef12@gmail.com>
References: <20241022162726.166093-1-abdelrahmanyossef12@gmail.com>
Message-Id: <172968743030.3883281.6402522647140543847.b4-ty@pengutronix.de>
Date: Wed, 23 Oct 2024 14:43:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_054351_894420_8C4774B7 
X-CRM114-Status: UNSURE (   5.65  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] partitions: efi: fix GPT header size exceeding
 allocation size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 22 Oct 2024 19:27:26 +0300, Abdelrahman Youssef wrote:
> The buffer gets allocated with the block device of size SECTOR_SIZE, but an
> ill-formed GPT header_size may exceed it resulting in heap-overflow.
> 
> 

Applied, thanks!

[1/1] partitions: efi: fix GPT header size exceeding allocation size
      https://git.pengutronix.de/cgit/barebox/commit/?id=a9c6ad764144 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



