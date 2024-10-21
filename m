Delivery-date: Mon, 21 Oct 2024 07:49:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2lIF-006xII-15
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 07:49:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2lIE-0006O3-P0
	for lore@pengutronix.de; Mon, 21 Oct 2024 07:49:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q4qLDAdXKaBr0cTBXMJg+LoAG1NoEWMP3RWv2JBRMao=; b=X04uXbqDtGDVf+/njrveOMpEF5
	ndqCfs/5bxSe5PNHNDmcLX7Dv1dxtz9WNEm2s+8QxgpnYG5koV1wP5nhF2nrfQxXHzJOy7xkOEvS+
	NK9hKWl9XsSn6MzyzISnqsXOJ8mS6PHMvT1m9NI13yG9OJ4NUtViANeBsI7dxhb+15vl5EOt6kUqz
	ZjrPLSHgEr7KLB9/qEb/k9pVK6t+N8RIz+bwg9ujxC+gOquPBzWd0tClrG4qxVwufLexLGxJp/WZ/
	fg/tHVGlHm5oRlM8j2VPk9eDd9+rJc+wYFSWtW8kGSAfytGsVox8bWT13ZBPe7zLrgIeO79p3jLsn
	zAnXzyCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2lHR-000000067Vp-1GkV;
	Mon, 21 Oct 2024 05:48:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2lHO-000000067Um-0Nbg
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 05:48:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2lHJ-0006Iv-JF; Mon, 21 Oct 2024 07:48:29 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2lHJ-000ds3-1C;
	Mon, 21 Oct 2024 07:48:29 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2lHJ-00F0hj-10;
	Mon, 21 Oct 2024 07:48:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Abdelrahman Youssef via B4 Relay <devnull+abdelrahmanyossef12.gmail.com@kernel.org>
Cc: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
In-Reply-To: <20241018-overflow-v5-1-6a438ff92ca2@gmail.com>
References: <20241018-overflow-v5-1-6a438ff92ca2@gmail.com>
Message-Id: <172948970931.3577456.16742595893305716740.b4-ty@pengutronix.de>
Date: Mon, 21 Oct 2024 07:48:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241020_224834_161311_6D033001 
X-CRM114-Status: UNSURE (   6.65  )
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
Subject: Re: [PATCH v5] common: buffer access out-of-bounds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 18 Oct 2024 20:13:31 +0300, Abdelrahman Youssef via B4 Relay wrote:
> in file_detect_type() to detect file of type socfpga_xload you need at least
> 68 bytes bytes, so we need to check if we have enough bufsize.
> So I moved it after checking if `bufsize >= 256`.
> 
> 

Applied, thanks!

[1/1] common: buffer access out-of-bounds
      https://git.pengutronix.de/cgit/barebox/commit/?id=dda64a15ea02 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



