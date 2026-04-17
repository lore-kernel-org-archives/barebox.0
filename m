Delivery-date: Fri, 17 Apr 2026 12:40:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgd3-00DAAz-3A
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 12:40:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgd3-0007iV-CO
	for lore@pengutronix.de; Fri, 17 Apr 2026 12:40:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3goAktmSqA7IvyTFUwLbIroUVlxh+XRKGgizpCcwqxE=; b=Uurdrm4PijFc1WKW0ku0UVfQsF
	IWKgX/5fuhDzROnDlmkmY+59QNFS7LtkCd13vCzF0LTOxouQCz5CsZgiR3LowadoWBCrXZevwdDXS
	S9vfv4NI8fLpjnK+guiLF43tKHA7W2wP2oM1s0kCPHQALU/E/n2IKeduAJ7aoAEkVl1AcEWC0KOR5
	0r19ywrWvNwQ31j9ZQUtSzbBDv2EaS2KaotfvAWT3ucsGTkZIcwqk4c4H81Vt8WyZAxaCMBm9Jfae
	Jve/Y5tdhpNfzfMFWWaYag3ZigIXaGl/I3MeYBKWwKMWBcDBQMmgTMYH79ShWLjTfdBQNPsjX1m8p
	1FtvKJUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgcf-00000003v06-2e6U;
	Fri, 17 Apr 2026 10:40:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgcY-00000003uy1-48DL
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 10:40:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDgcX-0007S6-Ee; Fri, 17 Apr 2026 12:40:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDgcX-005plq-0k;
	Fri, 17 Apr 2026 12:40:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDgcX-00000000euC-0iAy;
	Fri, 17 Apr 2026 12:40:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
In-Reply-To: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
Message-Id: <177642242116.157093.4627407847590900281.b4-ty@pengutronix.de>
Date: Fri, 17 Apr 2026 12:40:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_034023_039563_FAEF61CC 
X-CRM114-Status: UNSURE (   5.58  )
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
Subject: Re: [PATCH 00/10] net: prevent buffer overflows in UDP packets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 02 Apr 2026 08:36:39 +0200, Sascha Hauer wrote:
> Our UDP handlers all use a UDP packets length without checking if it
> fits into the incoming ethernet frame. Create a net_eth_to_udp() helper
> which does the bounds checking and use it throughout the code.
> 
> 

Applied, thanks!

[01/10] net: add net_eth_to_udp() helper for validated UDP extraction
        https://git.pengutronix.de/cgit/barebox/commit/?id=a5c8c5b28678 (link may not be stable)
[02/10] fs: tftp: use net_eth_to_udp() for packet parsing
        https://git.pengutronix.de/cgit/barebox/commit/?id=336a561b8276 (link may not be stable)
[03/10] net: dhcp: use net_eth_to_udp() for packet parsing
        https://git.pengutronix.de/cgit/barebox/commit/?id=590413b42fe3 (link may not be stable)
[04/10] fs: nfs: use net_eth_to_udp() for packet parsing
        https://git.pengutronix.de/cgit/barebox/commit/?id=3f3844baaae8 (link may not be stable)
[05/10] net: dns: use net_eth_to_udp() for packet parsing
        https://git.pengutronix.de/cgit/barebox/commit/?id=7e445fc4f390 (link may not be stable)
[06/10] net: sntp: use net_eth_to_udp() for packet parsing
        https://git.pengutronix.de/cgit/barebox/commit/?id=d650913f3a9f (link may not be stable)
[07/10] net: netconsole: use net_eth_to_udp() for packet parsing
        https://git.pengutronix.de/cgit/barebox/commit/?id=895ee90de389 (link may not be stable)
[08/10] net: fastboot: use net_eth_to_udp() for packet parsing
        https://git.pengutronix.de/cgit/barebox/commit/?id=cbe8a28183d0 (link may not be stable)
[09/10] net: fastboot: stop using net_eth_to_udp_payload() for PACKET_SIZE
        https://git.pengutronix.de/cgit/barebox/commit/?id=2d89ebc47f26 (link may not be stable)
[10/10] net: remove unused net_eth_to_udp{hdr,_payload,len}() helpers
        https://git.pengutronix.de/cgit/barebox/commit/?id=bd46061883c4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



