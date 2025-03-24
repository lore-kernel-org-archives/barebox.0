Delivery-date: Mon, 24 Mar 2025 09:35:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twdHr-003W1c-1G
	for lore@lore.pengutronix.de;
	Mon, 24 Mar 2025 09:35:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twdHq-00065Y-9O
	for lore@pengutronix.de; Mon, 24 Mar 2025 09:35:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wBwvI++vrVlQ2P2YPMpqDTi0OiFfixL/bQktJKo1Qdo=; b=lbzP1a0QRiq38hb5gjbTP+b+qG
	69SY+2oA9pJXKwV238Njm29JlSlMyFouf/VqBgOSu3rALpsUDnkKLNq26VzgYf4IbpKZpM7r07Hza
	K3Eifi/qb2f1DuIuXGnyfD1IXl7EGxqyT4yJmBEmNegHmT00OulgI7kZRkK6Zj4P1UGd+qpPLlZSx
	kC1G/2U/JFoJYrmtmCHGncGLsZmhdabCzcqRCvC9gS7A0BXvZBSZEDdSXetn/YPQOMcTcPDe/tFfp
	BBsNBHr66rMthysEwWgL91lK7seEjnkpZNrK9Mn+ZumzPpjEDZ67CPmMNQPlGv3IsV0GGqEGS2HxY
	/PwhmTDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twdHG-00000002bCE-0dDx;
	Mon, 24 Mar 2025 08:35:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twdGt-00000002b8k-1DfW
	for barebox@lists.infradead.org;
	Mon, 24 Mar 2025 08:35:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdGk-0005o0-2l; Mon, 24 Mar 2025 09:34:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdGj-001Naw-1X;
	Mon, 24 Mar 2025 09:34:49 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdGj-007B48-2g;
	Mon, 24 Mar 2025 09:34:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250320052059.1732184-1-a.fatoum@pengutronix.de>
References: <20250320052059.1732184-1-a.fatoum@pengutronix.de>
Message-Id: <174280528983.1710680.4736779118803380266.b4-ty@pengutronix.de>
Date: Mon, 24 Mar 2025 09:34:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_013459_333835_61BAED10 
X-CRM114-Status: UNSURE (   6.05  )
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
Subject: Re: [PATCH v2 1/3] complete: give device_param_complete a flags
 parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 20 Mar 2025 06:20:57 +0100, Ahmad Fatoum wrote:
> We currently always complete device parameters with either a dollar sign
> in front or an equal sign after. In preparation for allowing completions
> with neither, give env_param_complete() a flag.
> 
> 

Applied, thanks!

[1/3] complete: give device_param_complete a flags parameter
      https://git.pengutronix.de/cgit/barebox/commit/?id=0645f4077a9e (link may not be stable)
[2/3] env: add envvar_for_each helper for variable iteration
      https://git.pengutronix.de/cgit/barebox/commit/?id=448b9d5ea617 (link may not be stable)
[3/3] commands: add varinfo command
      https://git.pengutronix.de/cgit/barebox/commit/?id=b1e45718bb15 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



