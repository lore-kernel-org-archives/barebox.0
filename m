Delivery-date: Fri, 27 Sep 2024 12:43:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RJ-003N1I-2k
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 12:43:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RA-0005dH-Tz
	for lore@pengutronix.de; Fri, 27 Sep 2024 12:43:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0dqqDSYsl2Gvu25NUOTulLGWO9YvtZYmcVrNQLkHTrg=; b=zXj0W9V5nSn+B7lpkJAtmV1m/1
	2wBNreCfiIo4KCxcOw7gxYVH+nmLQyJUYKX1oXOg7IDIzT2t7sUHvXr9qrlMG+X+kMQz4dIG/0Uha
	pO/WtDAzhacpKT1yJxjPluFDfI4q+j0Vlq2XWomszBG0ao2S8WIV1gyO63RN4tVATWZzbgo71xver
	bILYvCs4KKpw4PgIRDVbmXW5XCqX37LQ5rRrd/jS4L82NwDmUhIc7qyInqI2ownOudJJmLXPZ60cl
	b4j3JR9kAzWDk5hhU+Xa79ozagvVMaoQlqNgYR8miSehO4zKAdEj0/uAMpAKGk88++2LfXUmUT75l
	aRM8mtIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su8QH-0000000Aqla-21Bo;
	Fri, 27 Sep 2024 10:42:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8N2-0000000Aq9m-2Ple
	for barebox@bombadil.infradead.org;
	Fri, 27 Sep 2024 10:38:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=0dqqDSYsl2Gvu25NUOTulLGWO9YvtZYmcVrNQLkHTrg=; b=JVm9nJU6giW8vul9Nd+gb+mimS
	ZIL549wtt13o5TE1fdHcRBC8B395m1aEVBaQNKdjtf5vkTXvILYy/c4xyQ19lsZFqmdX0CHzAykRN
	2QCXimV+bxo4TYxSAMGpO4IVj+kSQPeFt0qTBISmXs/GHxBBzyDAgTwfcWLqSdZtfCSLyOCEpjx9A
	v8D21sTn4vRHqYTLw2fNoI7xHrUPXib6pDVzAp3eY3RvRIjMmihQphsfXZxHdtHt7gJArBAicNPfF
	ncP2TWc5pfkVbgpwoeGpzDr6aA6BWbeWFhF1AyseuSUs8WPCPsOzWsARXPER61MlJfuJ9who13NAw
	qRVj05VA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8My-00000002KaY-2XeB
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 10:38:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8My-0003A8-82; Fri, 27 Sep 2024 12:38:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Mx-001u3j-Rn; Fri, 27 Sep 2024 12:38:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8My-000PRH-0n;
	Fri, 27 Sep 2024 12:38:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240925-graphics-v1-0-f1fe5d2cceec@pengutronix.de>
References: <20240925-graphics-v1-0-f1fe5d2cceec@pengutronix.de>
Message-Id: <172743351980.97772.17089069133326901813.b4-ty@pengutronix.de>
Date: Fri, 27 Sep 2024 12:38:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_113841_290847_8BCB2D70 
X-CRM114-Status: UNSURE (   6.02  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] graphics updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 25 Sep 2024 16:34:48 +0200, Sascha Hauer wrote:
> This series fixes some bugs and oddities in the graphics routines I came
> across when testing the upcoming Rockchip VOP2 driver.
> 
> 

Applied, thanks!

[1/5] graphic_utils: Clip to screen boundaries
      https://git.pengutronix.de/cgit/barebox/commit/?id=8214fb8caf3b (link may not be stable)
[2/5] commands: splash: honour line_length
      https://git.pengutronix.de/cgit/barebox/commit/?id=697fe6f432c6 (link may not be stable)
[3/5] gui: fix alpha blend
      https://git.pengutronix.de/cgit/barebox/commit/?id=602707db639f (link may not be stable)
[4/5] fbconsole: make background pixels transparent
      https://git.pengutronix.de/cgit/barebox/commit/?id=b471540e6def (link may not be stable)
[5/5] fbconsole: actually store rows/cols
      https://git.pengutronix.de/cgit/barebox/commit/?id=4f8f69ade14f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



