Delivery-date: Fri, 01 Mar 2024 10:21:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfz5I-001QVo-0P
	for lore@lore.pengutronix.de;
	Fri, 01 Mar 2024 10:21:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfz5H-0007md-IX
	for lore@pengutronix.de; Fri, 01 Mar 2024 10:21:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aRLs8mSOLLBB7+xVmVOQavcvtOto1/fg29TKK5O4RPw=; b=wsyQmR/wFqlTTMODeiIgz/XuN+
	4nLPaQyeDRLe9EOmP7YTC+sJtRos917A/o2kUVNVn/HYo/wmguz+9xCU9j1ZhYhgXxPwixgkCk/v7
	oe4rH1Uc2Sg7yfc2ZRcVpXzS0SqCLs4JXZqKYuOkdfszSo9Cw2d+zdysn8gTdoabMr4sEDPOKrBuo
	YAfmRsGLN5hXFnxcyxdkma6Nd0zd3FZxWCx5irc72ZjJnQoBCvGvDKnVUK0KmpetoiJHwx7eJEByO
	UtV57cGVMZ6/+FpkDaVcrD2jXLQQG0u+InrSA23P8LP9grdIYsj4F7mFCqbMYZveYRCDSZntX1Iuk
	7CWWs58A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfz4q-0000000H7Qg-0O1C;
	Fri, 01 Mar 2024 09:21:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfz4l-0000000H7PP-402c
	for barebox@lists.infradead.org;
	Fri, 01 Mar 2024 09:21:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfz4k-0007fs-Lw; Fri, 01 Mar 2024 10:21:06 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfz4k-003kis-9K; Fri, 01 Mar 2024 10:21:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfz4k-00A6TX-0j;
	Fri, 01 Mar 2024 10:21:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: mfe@pengutronix.de
In-Reply-To: <20240228180319.2739412-1-a.fatoum@pengutronix.de>
References: <20240228180319.2739412-1-a.fatoum@pengutronix.de>
Message-Id: <170928486622.2408150.14863514447534758546.b4-ty@pengutronix.de>
Date: Fri, 01 Mar 2024 10:21:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_012108_048924_1DD80578 
X-CRM114-Status: UNSURE (   7.81  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] optee: don't warn about missing OP-TEE header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 28 Feb 2024 19:03:20 +0100, Ahmad Fatoum wrote:
> OP-TEE header is checked once in PBL, saved into scratch area after
> verification and then checked again in barebox proper.
> 
> The check in PBL fails silently, but the check in barebox proper that
> should always follow, because the header isn't written to the scratch
> area is printed with error log level.
> 
> [...]

Applied, thanks!

[1/1] optee: don't warn about missing OP-TEE header
      https://git.pengutronix.de/cgit/barebox/commit/?id=d69c84346b30 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



