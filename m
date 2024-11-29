Delivery-date: Fri, 29 Nov 2024 13:00:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzfF-001qN6-17
	for lore@lore.pengutronix.de;
	Fri, 29 Nov 2024 13:00:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzfE-0000qt-HR
	for lore@pengutronix.de; Fri, 29 Nov 2024 13:00:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cyrj3e2//C3TCyocmiWAFhEaJ/edkDGjUFb8CqcsW1U=; b=0ZXsUrMMaLSv8tMm3dnZYepqoE
	ufcnH8e2qiz8tOlaUk1sOvdR+72bcKqRpRQQkmHXOJ8W6irGn4zYzQd3sDlSlo+5i2sOvB6dK4pOK
	YGaxPT0LRUfBlREDsnfLMFUQJUOSyeR04mODnzujc//vtFUNMFb3GOVq1c8IWNPzkMaqsV1unLTqi
	oaG77RvnAGaT9ADNy2bxCh1iOLxKOgJ+t0zJ/zuctFsiW5U/51ALhooKPDJoIuocNfgV+C+LjsA+V
	I6UR6F60StwKgUoGHeDWC170a4FZTOgh9wTK0nGPoxRFuW6REuR8dobwAw4vh4KHolPaEIZm7FIor
	N8LgGRdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzer-0000000015t-2zly;
	Fri, 29 Nov 2024 11:59:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzeo-0000000015U-416J
	for barebox@lists.infradead.org;
	Fri, 29 Nov 2024 11:59:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzen-0000gf-H6; Fri, 29 Nov 2024 12:59:33 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzem-000mLD-1r;
	Fri, 29 Nov 2024 12:59:33 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzen-000x7j-0u;
	Fri, 29 Nov 2024 12:59:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241125152927.546493-1-a.fatoum@pengutronix.de>
References: <20241125152927.546493-1-a.fatoum@pengutronix.de>
Message-Id: <173288157327.227234.6616084829960963757.b4-ty@pengutronix.de>
Date: Fri, 29 Nov 2024 12:59:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_035934_999130_97539DFF 
X-CRM114-Status: UNSURE (   8.52  )
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
Subject: Re: [PATCH 0/7] add proper strdup_const support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 25 Nov 2024 16:29:20 +0100, Ahmad Fatoum wrote:
> We currently implement strdup_const as strdup, which is correct, but
> leaves the benefits of a proper implementation on the table:
> Reducing allocations for .rodata strings, which have static storage
> duration anyway.
> 
> This series implements a proper strdup_const that avoids allocations in
> that case.
> 
> [...]

Applied, thanks!

[1/7] sandbox: hostfile: strdup device tree node names
      https://git.pengutronix.de/cgit/barebox/commit/?id=5693aac77e21 (link may not be stable)
[2/7] lds: implement is_barebox_rodata
      https://git.pengutronix.de/cgit/barebox/commit/?id=24ada94d67ae (link may not be stable)
[3/7] string: implement proper strdup_const/free_const
      https://git.pengutronix.de/cgit/barebox/commit/?id=84f699019564 (link may not be stable)
[4/7] treewide: replace basename with kbasename
      https://git.pengutronix.de/cgit/barebox/commit/?id=c71f25b2b5f2 (link may not be stable)
[5/7] treewide: use strdup_const where appropriate
      https://git.pengutronix.de/cgit/barebox/commit/?id=00943daac8d1 (link may not be stable)
[6/7] fs: efi: replace allocation with local buffer
      https://git.pengutronix.de/cgit/barebox/commit/?id=cfbf80529c4c (link may not be stable)
[7/7] cdev: fix string leaks in devfs links
      https://git.pengutronix.de/cgit/barebox/commit/?id=2f8bac45ed59 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



