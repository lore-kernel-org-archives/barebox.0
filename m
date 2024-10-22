Delivery-date: Tue, 22 Oct 2024 10:22:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3AA5-007OPn-0T
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 10:22:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3AA4-0005Ll-K2
	for lore@pengutronix.de; Tue, 22 Oct 2024 10:22:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H6Lv5Zj9xNQk1izBnyTPSbB9vvStDvm8CJnx8z3jtYY=; b=KfoPxT7rgmjzjhxUpG2W2UAdQ3
	NLSjDzXyJ2tEunhxpwbkPW+jNE43Lshqhk/xfHuq5OzL4H06hThOigAG+s5E5y/mvltPDls1GoUyG
	BG/jY9M79VHDF9JxmZaFsa/OXKLl2Ye0WFGDTIqARTJjf0+PwIpo+ic4JJ2/AII5MSH3U2j6qyFyR
	l8abKlMin9MUAUrG7LtR4pul5cdoVj2MtHEnFSYm6omywqgoTqcUt8dn9K/AkUKYsULjsgBK7NeNv
	n0dliPRL2BJZDNde4LGysdODfOEW1I/I3KlFDJxQuUog85ykL3jxDC9hG25eGkpvE0ib8ZIe2hlaE
	te+e9i2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3A9J-0000000A9C9-2q2J;
	Tue, 22 Oct 2024 08:21:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3A7B-0000000A8lU-3FBy
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 08:19:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3A7A-0004yN-5l; Tue, 22 Oct 2024 10:19:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3A79-000pfQ-1S;
	Tue, 22 Oct 2024 10:19:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3A79-00C8PI-1H;
	Tue, 22 Oct 2024 10:19:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20241021-phytec-nfs-automount-v1-1-20787c288563@pengutronix.de>
References: <20241021-phytec-nfs-automount-v1-1-20787c288563@pengutronix.de>
Message-Id: <172958517939.2892205.982885111856865078.b4-ty@pengutronix.de>
Date: Tue, 22 Oct 2024 10:19:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_011941_846271_5DC81D4D 
X-CRM114-Status: UNSURE (   5.82  )
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
Subject: Re: [PATCH] automount: add nfs section to board automount scripts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 21 Oct 2024 17:22:58 +0200, Jonas Rebmann wrote:
> When nfs automount was introduced in b31b7cf7e8b6, board specific
> automount scripts where not updated
> 
> 

Applied, thanks!

[1/1] automount: add nfs section to board automount scripts
      https://git.pengutronix.de/cgit/barebox/commit/?id=4798d193af4e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



