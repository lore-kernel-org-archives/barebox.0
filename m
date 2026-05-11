Delivery-date: Mon, 11 May 2026 09:45:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMLKA-000U59-1c
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 09:45:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMLK5-0001mm-PF
	for lore@pengutronix.de; Mon, 11 May 2026 09:45:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5bIDYyyCeALDKY5aQ5tQJadXwZ+Ov9jZuDpR3slQEBA=; b=DnCAYKW0ZjjWTtsER/ms1DSVAq
	X2bFnzfQFyuRQMECaPRUKJaZ8SKgwR0ZFhtdc0+o+0jLxD2pQ/7ZuXdP2v/3vJIJAV8n7kl+Eu9tF
	jUdUWV+Uurbq8oaeWLRbJmqwbXnlZc8am90826wxXQ4mBcybsG0dXECvmhS6CzFk7Jo2nslAop7YF
	f62wAWCmqYRb/kfEAXfoyG6HkXyv/Ep9WErPPsfLrXA+z8zU3vBBcfMUgRV4SBRRobZ9I82rA/9DD
	mXeXZKD7lSVTOvY/bZ2eXzXzpEnNhMn0UwX9szCsnpbVzqSltlrFxGUMtYDgUL/0fe5gbR72WtFqv
	k653PW3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMLJf-0000000Cdpi-22RR;
	Mon, 11 May 2026 07:44:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMLJc-0000000CdpF-2XTS
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 07:44:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMLJa-0001h3-Ts; Mon, 11 May 2026 09:44:34 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMLJa-000DQr-00;
	Mon, 11 May 2026 09:44:34 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMLJa-0000000DL8m-2peM;
	Mon, 11 May 2026 09:44:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>, 
 Fabian Pflug <f.pflug@pengutronix.de>
In-Reply-To: <20260430-v2026-04-0-topic-tlv-doc-v2-1-0147c587d600@pengutronix.de>
References: <20260430-v2026-04-0-topic-tlv-doc-v2-1-0147c587d600@pengutronix.de>
Message-Id: <177848547467.3179515.5153183827770476759.b4-ty@pengutronix.de>
Date: Mon, 11 May 2026 09:44:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_004436_654491_AF85DFD3 
X-CRM114-Status: UNSURE (   6.61  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] doc: tlv: add images and custom format
 documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 30 Apr 2026 17:19:34 +0200, Fabian Pflug wrote:
> Improve the documentation by adding some images to make the
> interdependencies clearer and add an example on how to define custom TLV
> data format.
> 
> Images converted to Graphviz by Jonas Rebmann <jre@pengutronix.de>
> 
> 
> [...]

Applied, thanks!

[1/1] doc: tlv: add images and custom format documentation
      https://git.pengutronix.de/cgit/barebox/commit/?id=40762963eaef (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



