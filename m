Delivery-date: Mon, 20 Oct 2025 14:59:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTe-009toi-0X
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:59:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTV-0000me-Q6
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:59:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IgYIn+qxtk6zeqWKlNiudf8MjJPx9gvZS8GUtR3dp4c=; b=waKDfIb/FrTIr6bkmBbwNulDeX
	T1sNILEgTha08aamLPrMIsPqxSVY8CjWqrFl+o5D2yu4yn/6Nrmr5e+Us8NJmvSplIEYX7qxnrZDB
	FJAnWRG6NhJMx4Uhc72MvZV8m6cA+dZUujqvoWmqJfVqFQHnauV4vsnRjRnLUK0wmBSp2n5tL5h1H
	46+J7MywyQJl9Bf2BQFc6qTlZ6yaskfC5M+DQiaBcCuZQDiZPB3xfOOQvPvSeh4QR0RfJR5ko5nkD
	Wub31Kejm8Bs1zrEvGQD/av0O5KO7HSFpEov8bQO9tZe30Z+iiHzD2IYwko6Jw83MmFFbf6mq1dQP
	ejHeiLZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSm-0000000DfIO-0is9;
	Mon, 20 Oct 2025 12:58:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSf-0000000Df7S-3XNz
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSe-0008E4-FG
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:04 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAnaZ-004X6u-0R;
	Mon, 20 Oct 2025 12:58:07 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAnaZ-0000000A48E-0Imw;
	Mon, 20 Oct 2025 12:58:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251015083512.4099259-1-a.fatoum@barebox.org>
References: <20251015083512.4099259-1-a.fatoum@barebox.org>
Message-Id: <176095788706.2399151.8150235133974163588.b4-ty@pengutronix.de>
Date: Mon, 20 Oct 2025 12:58:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_055805_909758_89F159B4 
X-CRM114-Status: UNSURE (   6.99  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] fs: factor out final file open logic out of
 openat()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 Oct 2025 10:34:15 +0200, Ahmad Fatoum wrote:
> The final open logic will be reused for the tmpfile logic in a
> follow-up commit, so factor it out into a function with semantics
> similar to the Linux equivalent.
> 
> No functional change intended.
> 
> 
> [...]

Applied, thanks!

[1/2] fs: factor out final file open logic out of openat()
      https://git.pengutronix.de/cgit/barebox/commit/?id=3a63fc70b88d (link may not be stable)
[2/2] fs: allocate inodes for O_TMPFILE-created files
      https://git.pengutronix.de/cgit/barebox/commit/?id=e5591127b7d3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



