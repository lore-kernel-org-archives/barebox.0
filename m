Delivery-date: Mon, 04 Mar 2024 10:20:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rh4UQ-0086Bx-2t
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 10:20:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rh4UN-0004kQ-M9
	for lore@pengutronix.de; Mon, 04 Mar 2024 10:20:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4Xr/5p/fMIzL+9BhQFpLcarADF+bx2GcEcxq/dUJ/n0=; b=Oz5cyEf6cdBAXZVAqx4Y3iZxyg
	t8WqF7gQ5yNsq9GP9+EOtnpyMXG2ZamnTtD8kvl8kC/g5Wr55kv6vYEbJiBtk8S/pMq4+NmGPv4sD
	ixIYR86YV+O2G9AeR7sfpREbc1El9SXftEp+j80n1Z5cyHg5m4vf9yuqdUrZ0fqgGIIU86Tihuj0g
	zhyVXlfRhJYlJHnt9Opmum4BDHBf2l+9wEFLAncibfJYsvIn2j+N6YZQRvOCotF1GrOetJsf5enOA
	3tpF2BjQllcA1OPc14jeqzEflo9cmT77kalyWIDeRAJUvAn6hn3GzcF+k8kW900Fvtkg83pfsVNYp
	ervNerEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4Tv-00000008KeL-3nRu;
	Mon, 04 Mar 2024 09:19:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4Tq-00000008KcW-0mrn
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 09:19:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rh4Tp-0004W7-1d; Mon, 04 Mar 2024 10:19:29 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rh4To-004K1r-LC; Mon, 04 Mar 2024 10:19:28 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rh4To-00BVd2-1v;
	Mon, 04 Mar 2024 10:19:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240229162322.1480141-1-a.fatoum@pengutronix.de>
References: <20240229162322.1480141-1-a.fatoum@pengutronix.de>
Message-Id: <170954396859.2743159.396773980146347609.b4-ty@pengutronix.de>
Date: Mon, 04 Mar 2024 10:19:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_011930_392803_E341F2AC 
X-CRM114-Status: UNSURE (   9.62  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] mtd: don't try to detect UBI in too small flash
 partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 29 Feb 2024 17:23:23 +0100, Ahmad Fatoum wrote:
> The detect callback will try to detect an UBI volume inside a partition.
> 
> This can misbehave for partitions without UBI:
> 
>   - For partitions smaller than 512 bytes, detect fails with -EINVAL,
>     because it wasn't possible to read as much
> 
> [...]

Applied, thanks!

[1/1] mtd: don't try to detect UBI in too small flash partitions
      https://git.pengutronix.de/cgit/barebox/commit/?id=023cae6caa63 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



