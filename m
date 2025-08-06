Delivery-date: Wed, 06 Aug 2025 06:56:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujWCU-007WqM-0e
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 06:56:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujWCT-0005FP-N1
	for lore@pengutronix.de; Wed, 06 Aug 2025 06:56:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1GVai2p483hAQwXilWbss3Rx5Kn/mGYsl8vn68eugYA=; b=pUxAS50BDMpjron6m4P4uLGG42
	0j4iFQeH0R0vfo+Wq9i7/Ty8TM0zJCBFV9xr+32zjOjqQ8Bk5XHoB1m2gbC3di498ym0QNctslq5U
	d9M3KrWGCPJGcbCQPHonxYzfFMgo4v6libbFaF98ODw6cnJD2poW7BNFVG3JDUgYjugqbL7sHV8cB
	7qFndU2YlUlOAKYCDHsAlAQPEd61ZboMOki95U17DDQcKnVUp4WmhgOYqZUH2Yu5NZLVcxRPmp9X/
	j0hQrjH+43sKtB6ZHSqxD5MY/MJWZuaIw2h2P1co6BCJb4NLiMcOOzw1NxdGCD4atd6gsUDa8DZX8
	cs6WLLJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujWC7-0000000EIYn-02Ca;
	Wed, 06 Aug 2025 04:56:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujWC4-0000000EIYD-039X
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 04:56:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujWC2-00059s-Qy; Wed, 06 Aug 2025 06:56:02 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujWC2-00C9Wr-1e;
	Wed, 06 Aug 2025 06:56:02 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujWC2-000lV1-1R;
	Wed, 06 Aug 2025 06:56:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Stefano Manni <stefano.manni@gmail.com>
In-Reply-To: <20250805072537.3484221-1-s.hauer@pengutronix.de>
References: <20250805072537.3484221-1-s.hauer@pengutronix.de>
Message-Id: <175445616244.181986.16429687902953801596.b4-ty@pengutronix.de>
Date: Wed, 06 Aug 2025 06:56:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_215604_058699_AEED6450 
X-CRM114-Status: UNSURE (   7.78  )
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
Subject: Re: [PATCH] cdev: fix mtd partition handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 05 Aug 2025 09:25:37 +0200, Sascha Hauer wrote:
> devfs-core.c implements the partition handling only for devices that are
> not MTD devices. MTD devices have their own partition handling in
> drivers/mtd/partition.c, see the special case in __devfs_add_partition()
> for MTD devices. This means for MTD devices we have to pass the original
> cdev to the ops, not the master cdev.
> 
> 
> [...]

Applied, thanks!

[1/1] cdev: fix mtd partition handling
      https://git.pengutronix.de/cgit/barebox/commit/?id=52aa463c0662 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



