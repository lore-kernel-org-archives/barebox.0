Delivery-date: Tue, 21 May 2024 09:14:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9Jho-00BrkJ-08
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 09:14:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9Jhk-0008Nu-8v
	for lore@pengutronix.de; Tue, 21 May 2024 09:14:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EB19lUUZzH8c5HyhUee6VPjGKM6UFArmrxFzPtFE0fk=; b=sfqh6Jz3iPSVLJxfMfAmLrepo+
	4f2yCoCWx1ag1wBaNgIKlpoB+mpEQ523TBXVO8kaf5o/vlQu3+g28/ON0cy81XfC8XoECcW04n/sU
	UMxeVzrRDWpysy3doFC53Of5nqNBnRI9uCWDsk8p/PAmld0BgI5t4ybiq5aCpDnXUIQ0+0zGeZX43
	eQgqCV3Q5PrGcPzq6gSugdzkqhrX+LhBhOwho2Q28JYJacAAZuEyha/oPk6smk6grM5m9fkg2JZX1
	4JPTWYIhXGayWzdmE9KkRXhj/cmBHVxHIMwN97++oeWfSJ2HO2voe/Gk0BnrwlI2F/U5Zf+kYQu03
	wV196YqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9JhA-0000000GZg1-1bqX;
	Tue, 21 May 2024 07:14:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Jh6-0000000GZfL-1OTW
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 07:13:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Jh4-00087a-Mm; Tue, 21 May 2024 09:13:54 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Jh4-002MDq-AM; Tue, 21 May 2024 09:13:54 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Jh4-0062zh-0p;
	Tue, 21 May 2024 09:13:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240517061057.3299857-1-a.fatoum@pengutronix.de>
References: <20240517061057.3299857-1-a.fatoum@pengutronix.de>
Message-Id: <171627563425.1441440.10774084414276714207.b4-ty@pengutronix.de>
Date: Tue, 21 May 2024 09:13:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_001356_494512_C26ABAA5 
X-CRM114-Status: UNSURE (   6.17  )
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
Subject: Re: [PATCH master 1/2] ARM: document PBL barebox memory layout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 17 May 2024 08:10:56 +0200, Ahmad Fatoum wrote:
> Apparently, we have an overlap between ramoops/barebox proper
> and the early malloc area. Before fixing that, let's add a diagram
> explaining the current state of affairs.
> 
> 

Applied, thanks!

[1/2] ARM: document PBL barebox memory layout
      https://git.pengutronix.de/cgit/barebox/commit/?id=c9af0d2b5e57 (link may not be stable)
[2/2] ARM: fix overlap between ramoops area and early malloc area
      https://git.pengutronix.de/cgit/barebox/commit/?id=d1cc8a4045a0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



