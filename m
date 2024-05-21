Delivery-date: Tue, 21 May 2024 09:15:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9Jij-00Brpn-0j
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 09:15:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9Jii-0000Je-LX
	for lore@pengutronix.de; Tue, 21 May 2024 09:15:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qANb0WLyXu5dL78ZkaAXAfncBiiNqpxcCFQHsuvPyV4=; b=l2wKbqS33W/eqre7/UMG9Rl/iq
	ppVpHoATc0/c30u6ilHIcp1LoHDfelJRnTYlw7Akag2vz+ISfi1yyNtaOyVSwpITzhuUSsXkggqYC
	QM2RojwMryFkpem6FAx6S26iVEl3YQqsp1ZUmzfTQ53BZrhXMeBhWYo80cPYupLRl1URhU08XIwHz
	lm574ooJ8Tx/NUrej5oJGO1tlQJ2MQMD7ef6lDNqTNvzTCi+2AflkgZyJ25zbBogIpAN6ASWbyM+2
	yYdFRDAtBLaH5Xl6oewLDc/oyIRL5xMRDKjq8gw4ag8v3FRSsHHu6/O0Dlp4DCHdprX4t2vICcYwf
	9wdT7gGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9JiF-0000000GZsq-21S2;
	Tue, 21 May 2024 07:15:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9JiC-0000000GZs4-2GgA
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 07:15:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9JiB-00007d-4Q; Tue, 21 May 2024 09:15:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9JiA-002MEC-O0; Tue, 21 May 2024 09:15:02 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9JiA-00639i-2B;
	Tue, 21 May 2024 09:15:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240517062225.3302101-1-a.fatoum@pengutronix.de>
References: <20240517062225.3302101-1-a.fatoum@pengutronix.de>
Message-Id: <171627570267.1442055.14526116822570968353.b4-ty@pengutronix.de>
Date: Tue, 21 May 2024 09:15:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_001504_618916_12D092CE 
X-CRM114-Status: UNSURE (   6.14  )
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
Subject: Re: [PATCH master 1/2] ARM: cpu: start: align uncompressed DTB
 size to 4 bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 17 May 2024 08:22:24 +0200, Ahmad Fatoum wrote:
> KASAN reports that decompression exceeds the bounds of the allocation
> and my DT size isn't 4-bytes aligned. Align the allocation size to fix
> this.
> 
> 

Applied, thanks!

[1/2] ARM: cpu: start: align uncompressed DTB size to 4 bytes
      https://git.pengutronix.de/cgit/barebox/commit/?id=ce38eef3c056 (link may not be stable)
[2/2] RISC-V: start: align uncompressed DTB size to 4 bytes
      https://git.pengutronix.de/cgit/barebox/commit/?id=249164bc555f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



