Delivery-date: Tue, 05 Aug 2025 11:07:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujDdf-007F5c-1v
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:07:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujDdf-0008GA-0c
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:07:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lE/B/Rx2yoJvsT8J7sLYrTx4lESn0dnEq85zpvHu7Vs=; b=mL0i68vzai5E8HO+zd2lAK7huZ
	fJNvuvbOHQ43A1JAH2yYrhq6ml2SgUFpYoEwDDAySN63hl4n8fZkAO0UVd3cspw8qknoYZtPbvRa1
	WII1LO3VUZWBk2owt0cfUZPBgQ8H/GwfX7CSM+Zhy8DSsg+9x+KgjEY2RiHTGxpYOOjWWh61KVwB4
	8SCJdGVtoL2n7OtzXJHGIPn9qT3md8oVAeYfIWlzwfP4Evy/ex3GTVlrQZyMzezfd9ob8aLhMOj5N
	klwrVe0Vkm0LDCI6kynBWhI0ENhf0HJV9asgd9C0wfnfXJqMB1Ajhj2QiN0T2E9Ssx15gCKheVkoU
	T4cyovyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDdF-0000000CJ0D-1z7K;
	Tue, 05 Aug 2025 09:06:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujD9J-0000000CCIH-3jAx
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 08:35:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujD9I-0004gU-HB; Tue, 05 Aug 2025 10:35:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujD9H-00C0nB-2m;
	Tue, 05 Aug 2025 10:35:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujD9H-00EgJR-2Z;
	Tue, 05 Aug 2025 10:35:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Johannes Roith <johannes@gnu-linux.rocks>
Cc: barebox@lists.infradead.org, a.fatoum@barebox.org
In-Reply-To: <20250704192658.18037-1-johannes@gnu-linux.rocks>
References: <20250704192658.18037-1-johannes@gnu-linux.rocks>
Message-Id: <175438295579.3499218.10330445674098693089.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 10:35:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_013557_932684_D75CC5D2 
X-CRM114-Status: UNSURE (   6.10  )
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
Subject: Re: [PATCH] Added documentation for the Zynq 7000
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 04 Jul 2025 21:26:58 +0200, Johannes Roith wrote:
> Added documentation and build instructions for the Zynq 7000 and the
> Avnet Zedboard.
> 
> 

Applied, thanks!

[1/1] Added documentation for the Zynq 7000
      https://git.pengutronix.de/cgit/barebox/commit/?id=7a0a2642ce05 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



