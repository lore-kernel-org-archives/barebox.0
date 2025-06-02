Delivery-date: Mon, 02 Jun 2025 09:43:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLzpD-002srR-32
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 09:43:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLzpD-0005ki-De
	for lore@pengutronix.de; Mon, 02 Jun 2025 09:43:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ebLw/OyO9dO/fMisquMDU62tt/+kWx7Ca+X9FOjoOps=; b=QiYaKzLLX32+g2hvfPTRm3oCjB
	kwK2PeY+OmhUpVSO9oPrrAFlEFYHHlL664GHa5nPxQc/lq+PZVUKYP+2HhulqEOkS22c+Pv7FJhpX
	TlHBb0dKsgtzbhJ7ANjfH9cBtEBNf1sHuyqdl7OdnOdfF75ARId+Ydn5N2826l3ZiUgLn7OwZXFvX
	eWJtyUxU6OEGaTc1wkiQpaoBtf3jy2n7AauThXwwkF0gNVqyyWfgHLo78rUihaJEt3lyuMUQlp6pm
	BohdluUqiPNC+9klf0VkX6zgFx4vQLNVX9rWCuvXvQlDQzIDCynCyt5Zij6VNBHM7qVFbhkbN+CLN
	KSkQhNmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLzoh-00000006vac-2u8R;
	Mon, 02 Jun 2025 07:42:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLzoe-00000006vZu-448O
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 07:42:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uLzoV-0005V4-PC; Mon, 02 Jun 2025 09:42:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uLzoT-001Psk-2o;
	Mon, 02 Jun 2025 09:42:29 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uLzoT-003VIE-2a;
	Mon, 02 Jun 2025 09:42:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250601210002.562733-1-a.fatoum@barebox.org>
References: <20250601210002.562733-1-a.fatoum@barebox.org>
Message-Id: <174885014979.835242.10671066393114590302.b4-ty@pengutronix.de>
Date: Mon, 02 Jun 2025 09:42:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_004241_015174_451BB57F 
X-CRM114-Status: UNSURE (   7.14  )
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
Subject: Re: (subset) [PATCH 1/5] fbconsole: use symbolic names for ANSI
 colors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 01 Jun 2025 22:59:58 +0200, Ahmad Fatoum wrote:
> Instead of hardcoding color indices, let's define symbolic names and use
> them throughout. This makes it clear that we are using different default
> colors, which will be fixed in the follow-up commit.
> 
> No functional change.
> 
> 
> [...]

Applied, thanks!

[1/5] fbconsole: use symbolic names for ANSI colors
      https://git.pengutronix.de/cgit/barebox/commit/?id=57d83a39bba3 (link may not be stable)
[2/5] fbconsole: darken shade of non-bright white
      https://git.pengutronix.de/cgit/barebox/commit/?id=33c13215a36e (link may not be stable)
[3/5] fbconsole: add support for aixterm bright colors
      https://git.pengutronix.de/cgit/barebox/commit/?id=c286f7e0efa0 (link may not be stable)
[4/5] fbconsole: use only one default color
      https://git.pengutronix.de/cgit/barebox/commit/?id=b4c59c0c9753 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



