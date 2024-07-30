Delivery-date: Tue, 30 Jul 2024 09:53:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYhfX-004OZq-1m
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 09:53:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYhfX-0001nq-0U
	for lore@pengutronix.de; Tue, 30 Jul 2024 09:53:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R+dMYIS6zQKFYDA4hxvxZU4xZXBAf0tonzAE+sYCIPw=; b=dHJToC9PZKepyzcf9AMMCp2YCI
	GSMvOJw612TViAjtTttR2mDEo1nEofLWc/vC9ECXgxPmBHeZfmkWi5/WN0S1sSt2GNWb2K3fF2arq
	wIya2gCUy3mQYbO0t8qAaFxBqD8V20t1WW4e8f/yriZpsp0cdqpwwOnl+ecspuec40nUYnpTpAaLd
	TYfum9JEinxJKZ+HWiyyS9iusawhzIRewho+9ZKYQaVC6ni5m8iYHcMrQCrUwtzHSMOCiqcYNFDcL
	DOnRaC+AQBiaVWoUZubhPE3A0ABYdTdwAowpT8oNYAPm+myuGetOQFHq4uZ6CWTbILIoNRUxphl4U
	8Y++v5WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhf5-0000000E75Y-2MaZ;
	Tue, 30 Jul 2024 07:52:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhdw-0000000E6SA-1VkG
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 07:51:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhdu-0001Vm-Oq; Tue, 30 Jul 2024 09:51:34 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhdu-003EZZ-BS; Tue, 30 Jul 2024 09:51:34 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYhdu-004RBd-0v;
	Tue, 30 Jul 2024 09:51:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240729135137.1457150-1-a.fatoum@pengutronix.de>
References: <20240729135137.1457150-1-a.fatoum@pengutronix.de>
Message-Id: <172232589428.1057758.16780392329655715162.b4-ty@pengutronix.de>
Date: Tue, 30 Jul 2024 09:51:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_005136_654483_3120525C 
X-CRM114-Status: UNSURE (   6.34  )
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
Subject: Re: [PATCH] fixup! ARM: cpuinfo: add option to print early memory
 map
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 29 Jul 2024 15:51:37 +0200, Ahmad Fatoum wrote:
> ARM: cpu: uncompress: fix endmem passed to print_pbl_mem_layout
> 
> The function expects the end of memory and not a size as second
> argument.
> 
> 

Applied, thanks!

[1/1] fixup! ARM: cpuinfo: add option to print early memory map
      https://git.pengutronix.de/cgit/barebox/commit/?id=51488a39ef5b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



