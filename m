Delivery-date: Fri, 23 Aug 2024 09:58:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shPBd-00CVoT-02
	for lore@lore.pengutronix.de;
	Fri, 23 Aug 2024 09:58:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shPBc-0006iC-EA
	for lore@pengutronix.de; Fri, 23 Aug 2024 09:58:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jAecQFaHEYhEvai96Sp1p8VI6Y4NXtw0TpPAPStoxfM=; b=fbmxkZ4PIroX8CrHYvJ4NfUr/W
	idx2Kr7OG71PgLFZw0Z9d9nme0LKGKo2awren1ovkiM6vnOs6t2B7630fg2HT3QtpU7IqdLRl3peo
	PnmfI92+Ip4rnynGRhOhQy+amiOPinYnMuh2PCjKDVLOcjkARmWyN1F6wXxIa/NMksO/cv1A25TO1
	9R/1LxUw2x9cD5c/qXlCytlOpCFKMLnj0CwrD1D6lQEqfL4PB6zzpDRmv6lXs4Pj2UXHnwufjYbWQ
	W1EkY8f/PjJFFwEzWsT6jSzKIFs853I+52tBIxDwJCsUMgbr8ZTco4Dx2MzwHZs+w/tMoMtBW7rw6
	WEOFjvDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shPB2-0000000FjRg-3rzw;
	Fri, 23 Aug 2024 07:57:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shPAz-0000000FjRG-20rc
	for barebox@lists.infradead.org;
	Fri, 23 Aug 2024 07:57:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1shPAx-0006cC-CV; Fri, 23 Aug 2024 09:57:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1shPAw-002RAd-QP; Fri, 23 Aug 2024 09:57:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1shPAw-008smR-2Q;
	Fri, 23 Aug 2024 09:57:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Stafford Horne <shorne@gmail.com>
In-Reply-To: <20240822165633.3726922-1-a.fatoum@pengutronix.de>
References: <20240822165633.3726922-1-a.fatoum@pengutronix.de>
Message-Id: <172439985874.2117184.17088977068542734386.b4-ty@pengutronix.de>
Date: Fri, 23 Aug 2024 09:57:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_005741_550024_D7A3E84B 
X-CRM114-Status: UNSURE (   9.05  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] openrisc: dts: describe all 4 UARTs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 22 Aug 2024 18:56:34 +0200, Ahmad Fatoum wrote:
> Starting with QEMU v7.1.0, the openrisc_sim machine features 4 serial
> ports. This was introduced with QEMU commit 777784bda468 ("hw/openrisc:
> support 4 serial ports in or1ksim"), which also made the last console
> (serial@90000300) the default.
> 
> This is still the case as of v9.1.0-rc3, but I submitted a patch to
> restore serial@90000000 as default. Until that's merged, let's just
> activate all consoles after describing them in the device tree.
> 
> [...]

Applied, thanks!

[1/1] openrisc: dts: describe all 4 UARTs
      https://git.pengutronix.de/cgit/barebox/commit/?id=b2a21df3b07b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



