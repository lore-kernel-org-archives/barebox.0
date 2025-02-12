Delivery-date: Wed, 12 Feb 2025 15:06:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDNw-001SFH-0F
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:06:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDNu-0000Xy-UN
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:06:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a/Ph45a0QnzKq+blgXFN5Mc9kyce/21zVV++DBllqDI=; b=LEHZv/XnjirAgLyXfGrxqjpyjW
	VQtttP1clA+TQTVJr5wPI5j3fZsibR5mUFrk2rqs0Q73lPFgMlP2Jwc6xe5X+zDdd0YgHhcVUXnbo
	Y6GyyqsnieDt0/u+XLeZghH1L5bcSN2gYak5ucYkNdO8JoBo+OlJkQLQUzQBhON95Xwh9oLTMwLmX
	10rfurQHknfTiLk6NXFebLZLKneMaSPZJ2+2AAsqR8LR4UeRVWRjIAlJU/FzekB8YHtQN4Eaotw2z
	40YETCK4qwqrVVyEXMf6V0KlIQnhuh2H5KQnTJ0qwlPgVJckWaTAmYLadjNFh8uRGkR5ShQ7o9bw4
	s80yT5ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDNF-00000007bRF-1SIh;
	Wed, 12 Feb 2025 14:05:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDNC-00000007bQH-493N
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:05:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDNB-0000M0-O3; Wed, 12 Feb 2025 15:05:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDNB-000b1O-1o;
	Wed, 12 Feb 2025 15:05:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDNB-00Adox-1b;
	Wed, 12 Feb 2025 15:05:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Michael Grzeschik <m.grzeschik@pengutronix.de>
In-Reply-To: <20250128152211.1146024-1-m.grzeschik@pengutronix.de>
References: <20250128152211.1146024-1-m.grzeschik@pengutronix.de>
Message-Id: <173936915349.2536344.7904597867573674112.b4-ty@pengutronix.de>
Date: Wed, 12 Feb 2025 15:05:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_060555_030801_CA093E3B 
X-CRM114-Status: UNSURE (   9.58  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX93: allow board code to configure the bl33
 loadaddr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 28 Jan 2025 16:22:11 +0100, Michael Grzeschik wrote:
> Add parameterized __imx93_load_and_start_image_via_tfa function to
> load_and_start the image on arbitrary load addresses. This should be
> taken with caution since it requires to configure the TF-A correctly as
> well, therefore the function is prefixt with '__'.
> 
> One use case of the new helper is to place OP-TEE at the very beginning
> of the DRAM and barebox afterwards.
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX93: allow board code to configure the bl33 loadaddr
      https://git.pengutronix.de/cgit/barebox/commit/?id=93788c1b4d41 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



