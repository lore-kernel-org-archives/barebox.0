Delivery-date: Tue, 15 Oct 2024 08:56:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0bTk-004Z1b-0A
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 08:56:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0bTj-0001g8-AP
	for lore@pengutronix.de; Tue, 15 Oct 2024 08:56:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PhG/OdLPZGPijwy2bS4m3AbNBhlRCaA4j7wMK753enM=; b=fJBD/nOOZheqTeokMZ6r+RY/s9
	IMqHSdLt2ED1m7r4rUri8Sgrie9FoihqV8QT+OYJ6lNXHFTm72OXYIiOf2Kn7eekcNbTaWdH/Z8T4
	IAezyj4Sw8eQV1LL3Ni+gm9bfB0rPiLkG6/z0M/Z+xyKeF9aA4SbVtb0LSOxsnp5CVxqZmkXRUEcn
	MHpsTRkDNg2d0rB7pvHJGTlmqMdGi8QUPsMJSTodcQiYpY+ieJaAxyPAlUzfdqMqm4WTBKuHjIhCn
	1FcMM5e2vCXsJmE1Xlrb0Pg8stWaYsGJzgpWNJ0+FKsnvZ2LP7fgqQ3HAaCo/iAo+50RmTmf8XIMl
	h6j8SkSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bTE-00000007HKO-2ow0;
	Tue, 15 Oct 2024 06:55:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bT9-00000007HIb-3BHD
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 06:55:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bT8-0001Yh-AJ; Tue, 15 Oct 2024 08:55:46 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bT7-001yF3-Tp; Tue, 15 Oct 2024 08:55:45 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bT7-004Apw-2p;
	Tue, 15 Oct 2024 08:55:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
In-Reply-To: <20241014113540.2817987-1-a.fatoum@pengutronix.de>
References: <20241014113540.2817987-1-a.fatoum@pengutronix.de>
Message-Id: <172897534587.994906.6894445005837864849.b4-ty@pengutronix.de>
Date: Tue, 15 Oct 2024 08:55:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_235547_835532_20C87019 
X-CRM114-Status: UNSURE (   6.72  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] sandbox: lds: fix relocation in read-only
 section warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Oct 2024 13:35:40 +0200, Ahmad Fatoum wrote:
> To address an "ELF has a LOAD segment with RWX permissions" warning
> during the sandbox build, the RO_DATA_SECTION was marked READONLY.
> 
> At least with Debian GCC 12.2.0-14, this just brought us a different
> warning:
> 
>   /usr/bin/ld: common/memory.o: warning: relocation in read-only section `.initcall.9'
>   /usr/bin/ld: warning: creating DT_TEXTREL in a PIE
> 
> [...]

Applied, thanks!

[1/1] sandbox: lds: fix relocation in read-only section warning
      https://git.pengutronix.de/cgit/barebox/commit/?id=9833da898934 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



