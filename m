Delivery-date: Fri, 07 May 2021 12:57:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leyAl-0004I4-Qw
	for lore@lore.pengutronix.de; Fri, 07 May 2021 12:57:31 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leyAk-0004wM-VX
	for lore@pengutronix.de; Fri, 07 May 2021 12:57:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UKv7L96852bwjkQsoBDNNo/7vPZmbkPF4e86wIpGrQw=; b=JeaFJJf5kjWr7C48f5+0RuVYFU
	/oZ9QbjGktBoCQfVOyvvLahp4bRzSL7S+QXiIVCql0XuNFZCetWoX66ItOufv9qCAgYjQIV+Rt9em
	P+ZOeN7w5WpxQtJMGGI3m96TX5b/nUS6vikgnd/3RrjbB6qFjAir6expNqNX0np08GNbHqBQw+y48
	G+9p+2bQAhYc15+I2/ZUM9rTF0wIvYnDdaUz8jtb7Cc8lbqcNyW4mkLU0zSWOA7KZT6Xb93Xpqw8B
	G7GRA1nrek1q7Ay6Ur7eFenwE2C9m/Ms2X2MuJpwZjNa28tp8usjCROs7um+HfbYvApIzXkmB1S1T
	qUSQ+vxw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ley9u-006t9N-M6; Fri, 07 May 2021 10:56:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ley9o-006t82-8c
 for barebox@desiato.infradead.org; Fri, 07 May 2021 10:56:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=XBFCNrBXCqkYQVqH6SdZhQHbGr/KaDtz33WDwMIJFVE=; b=rxRvIV5mPkVezvP1jkDvoqIOjP
 Dnd5HKRm2KQNnEpNssS+Be06dkIpRoJvDqP2GON3lt4iRNzbN7yo3vryeEsgwEEix0060TTeCkIdP
 ++TD4KG2P/S5Y/oXrujkrwquLsoTSBdtptpryi4E9Rxw+kZWPH/3N6wgGMDISvZP5LBE6Bpcv0K13
 rf/z6V7qXTpLr2xx+KY7JJJfmTl++ooQBiU6g4J8ucjWZP/HlpJLJbBMKK5IV6NpQoLGyCqWZBMzR
 7fvT0NqX04dlVFnU/V/G4hyHbm767P+ApMsqTPMxpt5ODtS5KuqVQSKqsAkIcmRiq/xra7eXF179H
 KBSFtkSA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ley9l-006nTh-UD
 for barebox@lists.infradead.org; Fri, 07 May 2021 10:56:31 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ley9U-0004ZW-Mo; Fri, 07 May 2021 12:56:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ley9U-000562-52; Fri, 07 May 2021 12:56:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  7 May 2021 12:56:08 +0200
Message-Id: <20210507105611.17017-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_035629_988817_ADA3B96B 
X-CRM114-Status: UNSURE (   8.10  )
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
Cc: Neeraj Pal <neerajpal09@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] Fix opening empty path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox currently crashes when an empty path is passed to open().
This can be provoked with doing a 'nfs foo ""' on the command line. This
series fixes the issue.

Sascha Hauer (3):
  fs: check for empty name in getname()
  fs: check for valid name in filename_lookup()
  fs: check getname() return value in open()

 fs/fs.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

