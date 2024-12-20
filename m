Delivery-date: Fri, 20 Dec 2024 10:22:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOZDa-00AOST-0B
	for lore@lore.pengutronix.de;
	Fri, 20 Dec 2024 10:22:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOZDa-0003pI-1P
	for lore@pengutronix.de; Fri, 20 Dec 2024 10:22:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7AEe+tlGWqKhdVgWaIpw+XMccp36NMegDT3goow4J2Q=; b=Z9HXlCOg8RorYaSiw/l9ymga7Z
	tQQgDKagvOqQToP5uAR+uPm7P5x6eM9C1BAlazDYo4Jj5rg8rBgZqU5I50w2gSXmy4JRHfLAampfY
	ddvmwP2VKFPdeuIBzjO/2BhN26onCLmFdWne0lMHrzxjrHz8K2tr3u8V/TmnXt4mRLxIpHWT9IKeD
	GrUCMiXez8gKQGogeouCOpuIu5iCFzVH0MuUKasqxD/MICjb1r3z/pPNzFscWXiux6EIgd/YPu/DH
	AhpYXLkxUEeYSU2YiIQ+UNnnbE3QAWDr3+E5gUKT4qqdPnzsnxcoL0pbFWth7GhDWMNIM0CBTd8YW
	tMfkTM4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOZD3-00000004PTJ-09Hk;
	Fri, 20 Dec 2024 09:22:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOZD0-00000004PSx-0tpf
	for barebox@lists.infradead.org;
	Fri, 20 Dec 2024 09:22:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOZCy-0003eU-Uv; Fri, 20 Dec 2024 10:22:08 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOZCy-004Lsm-00;
	Fri, 20 Dec 2024 10:22:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOZCy-00DKXP-2I;
	Fri, 20 Dec 2024 10:22:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241209103025.359093-1-s.hauer@pengutronix.de>
References: <20241209103025.359093-1-s.hauer@pengutronix.de>
Message-Id: <173468652870.3177176.18312500057979380925.b4-ty@pengutronix.de>
Date: Fri, 20 Dec 2024 10:22:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_012210_260668_140E59E6 
X-CRM114-Status: UNSURE (   9.89  )
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
Subject: Re: [PATCH] ARM: psci-client: better search for existing psci node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 09 Dec 2024 11:30:25 +0100, Sascha Hauer wrote:
> The PSCI fixup code assumes the psci node is at /psci. This is not the
> case for all boards. TI AM62x upstream dtsi files have the psci node at
> /firmware/psci where the current code doesn't find it and creates a new
> node, so on this SoC we end up with two PSCI nodes.
> 
> Fix this by searching for a node compatible to "arm,psci-0.2" or
> "arm,psci-1.0" instead of assuming a fixed location.
> 
> [...]

Applied, thanks!

[1/1] ARM: psci-client: better search for existing psci node
      https://git.pengutronix.de/cgit/barebox/commit/?id=cf7bdbf85bf8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



