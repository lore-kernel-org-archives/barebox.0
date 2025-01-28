Delivery-date: Tue, 28 Jan 2025 11:06:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tciU5-005Tar-2W
	for lore@lore.pengutronix.de;
	Tue, 28 Jan 2025 11:06:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tciU5-0001Cv-TY
	for lore@pengutronix.de; Tue, 28 Jan 2025 11:06:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gKSyTSkb1ly7iNxzVGmFHvy8x82G8eA2oL1zh+w1LeA=; b=WDvR/bPszfkS55ikA9JGP08sBh
	JFCWkScPRKlJNopcJ4flkz08ApByjUGK9loCy1HmyOXP3fqRn6LsZYwMbAjwTSms+k4SZkyqdMMOJ
	wzEi5eRGFPhxgjEm33FIlaCWG0bW3jG30NfdgpqfuwUDCcAq0nN4s/wz5vvDKigE7+sQrWZ3gAP1Q
	bK4gQmXT8WrZKolO1aadItlQBKvnamP+M2CXpjk8OjNea5iWGSg4z4mb/9l6j3RCIVm1LlU5INSA/
	1hlKLoQXlHt8sB3pHFgW9jFDDBRQFg1vJGjXxSeDn0XkzaTDBMZois2TuqF6rBa/OEJzKRSTCw6Io
	cKbT5QsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tciTi-00000004c28-0UVg;
	Tue, 28 Jan 2025 10:05:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tciTH-00000004byS-3pEf
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 10:05:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tciTG-00010y-Ge; Tue, 28 Jan 2025 11:05:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tciTG-002HGq-0W;
	Tue, 28 Jan 2025 11:05:26 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tciTG-00287i-0J;
	Tue, 28 Jan 2025 11:05:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Khem Raj <raj.khem@gmail.com>, 
 =?utf-8?q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>
In-Reply-To: <20250127195109.3928003-1-a.fatoum@pengutronix.de>
References: <20250127195109.3928003-1-a.fatoum@pengutronix.de>
Message-Id: <173805872609.507867.4394905453349143893.b4-ty@pengutronix.de>
Date: Tue, 28 Jan 2025 11:05:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_020527_951682_619838E9 
X-CRM114-Status: UNSURE (   6.94  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH RFT v3] scripts: define _GNU_SOURCE for all source
 files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 27 Jan 2025 20:51:09 +0100, Ahmad Fatoum wrote:
> musl doesn't define loff_t, unless _GNU_SOURCE is defined, which
> we don't do everywhere and glibc didn't mind.
> 
> This led to build errors with musl when code makes it into
> scripts/ that uses loff_t. This was already fixed once e.g. in commit
> c0d065fb0aa0 ("scripts: bareboximd: remove usage of loff_t").
> 
> [...]

Applied, thanks!

[1/1] scripts: define _GNU_SOURCE for all source files
      https://git.pengutronix.de/cgit/barebox/commit/?id=8ed8a260437b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



