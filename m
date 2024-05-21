Delivery-date: Tue, 21 May 2024 08:22:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9Itd-00BntV-2f
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 08:22:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9Itd-0006dM-9q
	for lore@pengutronix.de; Tue, 21 May 2024 08:22:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=njlqH4hT3rsqMn64CRAYLy7ppivtIxDhZvM9YGE0mag=; b=jUpK7hS2hU79Pk8p7g43Yswt2k
	ceYx82T6YIl3rBVDQl67YZlXEaYKGIQ2RS0nI3IglXZ+eyuhZ8LtJzNXog2DV0kq50HqAHZaYI3+s
	t+8QUkELJ04G1BKxXJjZ5TBk9w34YCA5y9xZMFrRWnUrWlGd9zSTXwOPjv6h+yTpK3r8/jBqiG4q6
	CX+HhM9Jli0xlHFcHE8Y65wiU5XifH/7iVQ4LToBgigRh4oxUIWC5DPW7S9TytsOGmSNrtccuJ78T
	vAVdh3GegNuGfl6Z7u730Ua6z3HnamxHmrb9Nec8NOCcc86skupt6nYQ1E0ar3GCs7D+wPYH8z/Hd
	Z0WcoLzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9ItE-0000000GT5r-3P6C;
	Tue, 21 May 2024 06:22:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9It9-0000000GT4j-3982
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 06:22:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9It8-0006VT-4k; Tue, 21 May 2024 08:22:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9It7-002Lsy-OV; Tue, 21 May 2024 08:22:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9It7-00602b-2F;
	Tue, 21 May 2024 08:22:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240517074843.768275-1-a.fatoum@pengutronix.de>
References: <20240517074843.768275-1-a.fatoum@pengutronix.de>
Message-Id: <171627253769.1430096.14530373771006393610.b4-ty@pengutronix.de>
Date: Tue, 21 May 2024 08:22:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240520_232219_824214_CB0A1464 
X-CRM114-Status: UNSURE (   5.64  )
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
Subject: Re: [PATCH] pbl: compile PBL decompression code optionally
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 17 May 2024 09:48:43 +0200, Ahmad Fatoum wrote:
> There's no point in compiling PBL decompression code when
> CONFIG_HAVE_IMAGE_COMPRESSION is not selected, so reflect that in Kbuild
> to save some build time.
> 
> 

Applied, thanks!

[1/1] pbl: compile PBL decompression code optionally
      https://git.pengutronix.de/cgit/barebox/commit/?id=05cc671bbebb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



