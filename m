Delivery-date: Fri, 27 Jun 2025 17:09:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVAiE-00BepY-2l
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 17:09:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVAiD-0004kx-Oi
	for lore@pengutronix.de; Fri, 27 Jun 2025 17:09:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uLH/UBMIPYjdJZvnX3vBR75xU2D1xAWEZopX424AO3E=; b=bitQ8wRhC/t5ekXcco/zqEzqsu
	AIgK8sr59nU1i+LwhmyPxpsm1dK1UVf0RjHq3ESgwn59dYmg+nob4N8LRlaStxBVaFRMgUn2sHIRO
	1js+F0y8tjwB7vDSY3RPQIqUYRpdGwT0mmdH0OAcLcrqJ1sXig8WL6sTRqy9ei+RQTM54bJRuWY31
	mv0+A12hvsA+fXd10mHQXmthKVLoq918+GqoS6ElO7Wu5Ymk57utyptWlnHKHsAFoMkoaQn+TlGwg
	nm1l43BT/ash/4SqEpYxaaATCp8WHUuJv4VEOOSERhWbWVvHSz9dB2/in9PsSgScAypjx5zyobZ7h
	qTMGFERw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAhm-0000000F11Z-0Kce;
	Fri, 27 Jun 2025 15:09:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAGG-0000000EwD8-19cf
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 14:41:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uVAGE-0007Js-UL; Fri, 27 Jun 2025 16:41:02 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uVAGE-005dJf-2O;
	Fri, 27 Jun 2025 16:41:02 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uVAGE-0053mj-29;
	Fri, 27 Jun 2025 16:41:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: sha@pengutronix.de
In-Reply-To: <20250624152148.2230298-1-a.fatoum@pengutronix.de>
References: <20250624152148.2230298-1-a.fatoum@pengutronix.de>
Message-Id: <175103526266.1206162.11317005851242378400.b4-ty@pengutronix.de>
Date: Fri, 27 Jun 2025 16:41:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_074104_317068_7FC3C19C 
X-CRM114-Status: UNSURE (   8.76  )
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
Subject: Re: [PATCH master] fs: fix file creation by not pointing file
 dentry at parent dir
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 24 Jun 2025 17:21:48 +0200, Ahmad Fatoum wrote:
> A last-minute regression fix to allow unmounting file systems in some
> situations unfortunately introduced a regression of its own:
> Creating new files with O_CREAT associated a file descriptor's struct
> file with the dentry of the parent directory instead of the dentry
> of the newly created file.
> 
> Opening already existing files worked fine though, leading to e.g.
> problems when saving a fresh environment to a directory:
> 
> [...]

Applied, thanks!

[1/1] fs: fix file creation by not pointing file dentry at parent dir
      https://git.pengutronix.de/cgit/barebox/commit/?id=a3e40011d23a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



