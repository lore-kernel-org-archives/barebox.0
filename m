Delivery-date: Fri, 21 May 2021 18:36:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lk88H-0004p2-UK
	for lore@lore.pengutronix.de; Fri, 21 May 2021 18:36:17 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lk88H-0000nm-8u
	for lore@pengutronix.de; Fri, 21 May 2021 18:36:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9j0zX+LaEV67yutc1EPXWDJ+CENpALaC8hmH26wBEyI=; b=iTvE9RtCZPELas
	cL1ul9lOQ1jPX+3U3e6YmpcpdMCHPyWNtd1yt9+Sihau+DrCONmXwWXHI/ID8m6vQw+mFhij1jtRN
	VOS3ASjYvwLupSqfiefn1PAtHRrHF9LB+yyKh9dJAz0dtjpTp7K+/5qiU71pg5If28xjxueySdHoc
	74apkAVtAaGwpXMOjNDP2YbjAyncXKcrrD/GGprUROcWKg59mohYVXmP5U8MYNLGhzru92sZd/4Wl
	WC79lrTJ3CxbyI/4ksfy3HNpUvorOJ8e3PKoaI725EWXa0H+r27BeP/o7FAzZyRoZ8Mwec2Qn++ke
	jroPXYWrAWbmIB0hLZ2A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lk878-000GxN-My; Fri, 21 May 2021 16:35:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lk86p-000Guh-5C
 for barebox@desiato.infradead.org; Fri, 21 May 2021 16:34:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=FZaTAntXe+eLjhdQZ3AxWzHV1ABV5thoY49m83v0X8Y=; b=NdP1W/UMjIpgnkyb9zI8l3wO8l
 DZczWoCgbS6YCWyphkRPyGjlXUwtu6F1HjhmLOU3xIXUnKCf0BOlo5mnMpFDw/lXtbzf2575rN8Nj
 a5F78Y/LMdtXV4WwMW4dgBABLJLCK/tZ3qy4yWKBKiUGMA0eMZKjNFVgSNZW3n0/xzbZwMwFPaMkm
 9sZfO2wx3KYA4P0x/7Qhr8RebEwIpMsr9g4rxYa3uDDmex/NXPQn9z+8FsrIrRdOF5f2k/DlRJ+S1
 QQevPCUWDsDc16Ymx7h0PRlj0iBgiCXPjvjHhXzt0FtL8wuImnmEazmE7trqhJ0X6lAv42sgE3Xjy
 Go1o0cMg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lk86m-00HHUP-En
 for barebox@lists.infradead.org; Fri, 21 May 2021 16:34:45 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lk86g-0000M9-EM
 for barebox@lists.infradead.org; Fri, 21 May 2021 18:34:38 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lk86g-0004XJ-4h
 for barebox@lists.infradead.org; Fri, 21 May 2021 18:34:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 21 May 2021 18:34:31 +0200
Message-Id: <20210521163435.17365-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_093444_514066_E8289FB9 
X-CRM114-Status: UNSURE (   8.29  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] Change printf behaviour
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

my current project needs barebox as quite as possible since it has
strict boot time requirements. Unfortunately barebox was still a bit to
talkative after setting the default loglevel to 4 (warn). Therefore I
made these changes which saved ~40ms during a normal blspec boot.

Regards,
  Marco

Marco Felsch (4):
  commands: mount: replace printf by pr_info
  common: boot: replace printf by pr_info/warn variants
  common: bootm: replace printf by pr_err/info
  common: oftree: replace printf by pr_info

 commands/mount.c |  2 +-
 common/boot.c    |  4 +--
 common/bootm.c   | 88 ++++++++++++++++++++++++------------------------
 common/oftree.c  |  2 +-
 4 files changed, 48 insertions(+), 48 deletions(-)

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

