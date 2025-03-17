Delivery-date: Mon, 17 Mar 2025 10:06:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6QW-000YNJ-0P
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 10:06:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6QV-0003cK-1j
	for lore@pengutronix.de; Mon, 17 Mar 2025 10:06:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U3iRM4Xw1DWWWIZwtBtiodEPJFfWn5JlnKiFl3rFxs4=; b=zF6RgpXkeWde99ASe3riKJ4Mww
	S9sW3H3TS3Y2w4NSiVqQal5phFQOrZAwzS1lz8kl7Hs49c/5tDb/aVt/MKOt1HrItPdgA+S7T5no8
	J/JDN5YLEFoKq8wKdbTkS6wi4pe2meZGQbX0doQjpx7uz7rrLsNuQcsd2rtTJDo/WxQXEQCatvMAT
	Q+QdshwxVelsVtp6KNonESpj7uvCt4bBMYrxNBBDeaf4HKy2mFYLM53+35Tu2zx7rHEfKxhq7P3wA
	mt6WhXzj2IyLgyBaODiHhaI5uOmeOOdWwwEC3KWgzOFJzX97v3ic1S4SKht0rHNKU1C/QhP3zVwt/
	2JbZ4C4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6Q3-00000001rR6-33jO;
	Mon, 17 Mar 2025 09:05:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6Q0-00000001rQV-2JaX
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 09:05:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6Py-0003S1-W8; Mon, 17 Mar 2025 10:05:55 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6Py-000Dgo-1F;
	Mon, 17 Mar 2025 10:05:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6Py-00H3la-2P;
	Mon, 17 Mar 2025 10:05:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
In-Reply-To: <20250315135245.2729171-1-o.rempel@pengutronix.de>
References: <20250315135245.2729171-1-o.rempel@pengutronix.de>
Message-Id: <174220235474.4066001.6991372267478942347.b4-ty@pengutronix.de>
Date: Mon, 17 Mar 2025 10:05:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_020556_603527_76E0BF85 
X-CRM114-Status: UNSURE (   7.67  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] commands: Add `ip` command for listing interfaces,
 addresses, and routes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 15 Mar 2025 14:52:45 +0100, Oleksij Rempel wrote:
> This patch introduces the `ip` command, providing functionality similar
> to Linux’s `ip` tool, catering to users with strong Linux muscle memory.
> It supports:
> 
> - `ip l` / `ip link`   - Show network interfaces (state, MAC address)
> - `ip a` / `ip addr`   - Show assigned IP addresses and netmasks
> - `ip r` / `ip route`  - Show routing table, including default gateway,
>                          interface-specific routes, DNS, and server IP.
> 
> [...]

Applied, thanks!

[1/1] commands: Add `ip` command for listing interfaces, addresses, and routes
      https://git.pengutronix.de/cgit/barebox/commit/?id=35e565ec63ab (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



