Delivery-date: Wed, 13 Nov 2024 12:34:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBBdU-001PZD-3A
	for lore@lore.pengutronix.de;
	Wed, 13 Nov 2024 12:34:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBBdU-0002qs-CD
	for lore@pengutronix.de; Wed, 13 Nov 2024 12:34:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3abPzK1G87KBLSZvw+WW/pQ/rXbjYMRfLQzppgxouoU=; b=ClWwO3EWM4NECHyNh6EPSxNdHe
	/1ynsqQDdlf1woEGq6RUhPWCTzz7kQUOgscgCDILXqvlbEuWrUkUP3tmgkW4ER2VJ8T/mijmPEXWI
	/G+K9XZNaSIV67LsrCqcTJjMfzSxJSR2t7YimJXP/AxVhDIWln7dT9Uu1tj3N4Xb94mY2E7bclK2/
	T+I9aJPFaWVJG9PGyhXD4Lc4U2Ysv2j6em6HivyzML9ov2/MqijMTmZw5qoiNUpSn3RMnUWqAwOSC
	RdQ+92DgRRbIlkLdgTi3f6hFN3sWchq8F5HSv0nP7PfSeE+Bt7K7iBuD7ZtBDkggWNbUBFd2a59Wx
	f1wdh/XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBBd1-00000006biw-1T2X;
	Wed, 13 Nov 2024 11:33:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBBcy-00000006biO-2Vu4
	for barebox@lists.infradead.org;
	Wed, 13 Nov 2024 11:33:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tBBcp-0002bu-D3; Wed, 13 Nov 2024 12:33:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tBBcp-000ZD9-0e;
	Wed, 13 Nov 2024 12:33:31 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tBBcp-006yu6-0N;
	Wed, 13 Nov 2024 12:33:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241112-k3-watchdog-v1-0-ceb254779735@pengutronix.de>
References: <20241112-k3-watchdog-v1-0-ceb254779735@pengutronix.de>
Message-Id: <173149761111.1663468.15693197747963537265.b4-ty@pengutronix.de>
Date: Wed, 13 Nov 2024 12:33:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_033340_672108_F9AAF243 
X-CRM114-Status: UNSURE (   9.97  )
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
Subject: Re: [PATCH 0/3] watchdog: Add TI rti_wdg support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 12 Nov 2024 10:16:03 +0100, Sascha Hauer wrote:
> This series adds support for the rti_wdg found on TI K3 SoCs. The
> timeout for this watchdog cannot be reconfigured once started which
> doesn't fit well into our current watchdog_set_timeout() API which
> both pings the watchdog and starts it. For this reason this series
> introduces an optional watchdog_ping() function which can be used
> for this type of watchdog.
> 
> [...]

Applied, thanks!

[1/3] watchdog: cleanup timeout_cur parameter
      https://git.pengutronix.de/cgit/barebox/commit/?id=d80f51ba7e68 (link may not be stable)
[2/3] watchdog: add watchdog ping support
      https://git.pengutronix.de/cgit/barebox/commit/?id=77547d6b7772 (link may not be stable)
[3/3] watchdog: add rti_wdt support
      https://git.pengutronix.de/cgit/barebox/commit/?id=adad2dfd6659 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



