Delivery-date: Fri, 20 Dec 2024 10:05:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOYwW-00ANyA-36
	for lore@lore.pengutronix.de;
	Fri, 20 Dec 2024 10:05:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOYwW-0000VI-U9
	for lore@pengutronix.de; Fri, 20 Dec 2024 10:05:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N6cM/9xS02FvnT47QK/D2ogATIvuctYuy2Ji5yZEqrs=; b=i+8dJUf3Rl4xQeCA1S51kwhjU9
	2GQflYIglKWGqWeSWQRFtWmotaD6LgNcVkGSZoCqiCb0wFQOTkcWUyfP2/ayLzxVPMHV2SoPgcuqn
	zi+i5N4l/4HCkRnkwxfbs+2v3Ha5t+aPLMNZ0jE9zegImisAnJbeszZbpJ1Cz1ZV4ZZP6mTbEiHUV
	SDJgPDyzJeov4+qBwCIhwmelB3nBEOa/kmEk2pIlo/3NUvBnQLstPbsENEnU6Q3CpEeiChgQAlTWd
	nOR6ypvD4JC2vsQuOWnWqTx9oK5eG0uboSA+EuUIQqtEYNEbOO/0TqEJfsKcjC7wgd2TpvFQula+g
	/MRyloVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOYw6-00000004MkE-3hgc;
	Fri, 20 Dec 2024 09:04:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOYw3-00000004Mit-3AGg
	for barebox@lists.infradead.org;
	Fri, 20 Dec 2024 09:04:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYw2-0000MG-LP; Fri, 20 Dec 2024 10:04:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYw1-004Lqp-1t;
	Fri, 20 Dec 2024 10:04:38 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYw2-00DEon-0x;
	Fri, 20 Dec 2024 10:04:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Lucas Stach <dev@lynxeye.de>
In-Reply-To: <20241213150855.263388-1-dev@lynxeye.de>
References: <20241213150855.263388-1-dev@lynxeye.de>
Message-Id: <173468547829.3155194.2476662951101841099.b4-ty@pengutronix.de>
Date: Fri, 20 Dec 2024 10:04:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_010439_794109_7B319229 
X-CRM114-Status: UNSURE (   7.62  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] environment: don't return raw device when file-path is
 specified
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 13 Dec 2024 16:08:55 +0100, Lucas Stach wrote:
> Environment nodes that specify the file-path property expect the
> environment to be stored in a file system.
> 
> Returning the raw device path when CONFIG_OF_BAREBOX_ENV_IN_FS is
> disabled in such a case is not a good idea, as saving the env may
> then unexpectedly overwrite unrelated device content. Bail out in
> case a file-path is specified, but we have no env in FS support.
> 
> [...]

Applied, thanks!

[1/1] environment: don't return raw device when file-path is specified
      https://git.pengutronix.de/cgit/barebox/commit/?id=f4283f6d9f15 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



