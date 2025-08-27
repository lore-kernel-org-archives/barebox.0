Delivery-date: Wed, 27 Aug 2025 17:49:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urIPC-005876-39
	for lore@lore.pengutronix.de;
	Wed, 27 Aug 2025 17:49:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urIPB-0002lh-R1
	for lore@pengutronix.de; Wed, 27 Aug 2025 17:49:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sOHQOJdPaGJPMp5YxOh1kRg31UXVW+P4mZ0T019u2ck=; b=iJTCjf7U7QqrVKoil6b8JGcBRW
	ot8f0SEDTSoUaID26gNKXO28AgFWiu7Wh7u8VwE69HVweCAx5v+DUjONAyjMYw3wGF2QnfVKRXzqt
	P9utiWBJ3rgpZfdwFz8GQFr2EW+CW5pEy/cgx5JOq+bwjK0Tnrh1TUBz2jQRPV2PyIAm3pt7GRYaT
	to1RnI3yiyH9iVLbLC5wcaiRhKUrbVVjX/YMvW/n3IMYdGCpq6hjo5NRn2ciSm33a14JUaGl9WsZ5
	+rA5QTeKllszek6bV+K9lVfO/aIsY0EmEp2/fMwnmU1DMfy55kxZXX/eN6BjXjm0RsdCkk5UmaJP+
	zjdzGrRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urIOR-0000000Fxze-2bhm;
	Wed, 27 Aug 2025 15:48:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urEEM-0000000FFL5-0Fp9
	for barebox@lists.infradead.org;
	Wed, 27 Aug 2025 11:22:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1urEEK-00065V-Kd; Wed, 27 Aug 2025 13:22:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1urEEK-002Nu4-1R;
	Wed, 27 Aug 2025 13:22:16 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1urEEK-0000000HauH-1S3G;
	Wed, 27 Aug 2025 13:22:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
In-Reply-To: <20250822053717.1050752-1-chalianis1@gmail.com>
References: <20250822053717.1050752-1-chalianis1@gmail.com>
Message-Id: <175629373633.4193323.9744071043903087913.b4-ty@pengutronix.de>
Date: Wed, 27 Aug 2025 13:22:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_042218_106169_6D777396 
X-CRM114-Status: UNSURE (   6.85  )
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
Subject: Re: [PATCH] efi: payload: early-mem: add memory type on early mem
 allocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 22 Aug 2025 01:37:17 -0400, chalianis1@gmail.com wrote:
> Add the ability to specify the memory type which mendatory for the
> recent efi versions that have MMU, this will fix a permission fault
> on second level when trying to relocate the barebox or even execting
> the memory code. see the snapshot error log below.
> 
>  SP 0x000000007C6CFF80  ELR 0x000000006C6EA4FC  SPSR 0x60000205  FPSR 0x00000000
>  ESR 0x8600000E          FAR 0x000000006C6EA4FC
>  ESR : EC 0x21  IL 0x1  ISS 0x0000000E
>  Instruction abort: Permission fault, second level
> 
> [...]

Applied, thanks!

[1/1] efi: payload: early-mem: add memory type on early mem allocation
      https://git.pengutronix.de/cgit/barebox/commit/?id=7497c86c5032 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



