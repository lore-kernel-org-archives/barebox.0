Delivery-date: Fri, 28 Feb 2025 12:49:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnyrn-0082h1-1c
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 12:49:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnyrm-0003lV-CK
	for lore@pengutronix.de; Fri, 28 Feb 2025 12:49:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GyejOQf3rhM725jNR+rVYZDn4kvF373FX9Fwg5TafAA=; b=OKc1UUDJaPUyvh4jXDpxcjmY5B
	JHzgSikhO53ZNCDljq1fQ77vvIIYC9i7w/MHwT99fCBP6zguMrF6my4DK0WI7etJabYfiJCvZ1+YA
	NQtBZ4AmULxJK3h5zRI/F/Z4bPj7v5Y18wU5cZWIzJJD1f24gkVUbvisdc2yAjaFAsiR7mH3WfwfP
	i5TcBEZIR8Lh4R5tluirYhks9DYqhyd7lyKqBHhHCLDUwfwzAE4Ost6MLfcd3uhipcXxpXc64kqKR
	l8EntVc5gmOPwpGIVQWN8MFTxNVMv3PZg37/S3pq6mmT0lca7Trh9avReRfIf0oB75UvPWCPY943E
	pcWJXcJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnyrD-0000000AnfC-2DAu;
	Fri, 28 Feb 2025 11:48:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tny4M-0000000Ag4i-34KB
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 10:58:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tny4L-0006Rs-J0; Fri, 28 Feb 2025 11:58:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tny4L-003HOf-1H;
	Fri, 28 Feb 2025 11:58:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tny4L-0061Fy-16;
	Fri, 28 Feb 2025 11:58:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250228094836.1401338-1-s.hauer@pengutronix.de>
References: <20250228094836.1401338-1-s.hauer@pengutronix.de>
Message-Id: <174074029333.1434641.14768496192575603136.b4-ty@pengutronix.de>
Date: Fri, 28 Feb 2025 11:58:13 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_025814_775525_00C463D0 
X-CRM114-Status: UNSURE (   5.95  )
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
Subject: Re: [PATCH] parted: add partition type msdos to help text
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Feb 2025 10:48:36 +0100, Sascha Hauer wrote:
> Partition type can be either "gpt" or "msdos", but only the former was
> listed in the help text. Add the latter.
> 
> 

Applied, thanks!

[1/1] parted: add partition type msdos to help text
      https://git.pengutronix.de/cgit/barebox/commit/?id=02a7aa117778 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



