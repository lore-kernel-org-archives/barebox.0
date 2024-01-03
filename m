Delivery-date: Wed, 03 Jan 2024 19:36:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL665-002O80-2g
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL65w-0007JZ-Ee
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=urFU9aTWXoKfBuX45dYqmrjzg9LkLe3OObps5IRovG8=; b=CdTaoBU0DshsSf4PEncX3iOOtN
	GabhLRxFFNpieMWfUyfZNuC2JIcNUsrAXM2xYMkyRMDa3K7fF8ukWNXqoohW49oVEwcxQAKcC3jGF
	sKc5vnaT7MIqGzkpOcedSsfHRLMWAVSrFLTNePJn8ExoXxFAKtzMAuo7LGTE+ERKDLW9SOQlJ5RNg
	wmCpzFx1DCSZiexeQkagAczHFKy26p5bF8e7TxGiatY0vSEBN6JkDowGcs2xIRe3POcfd5MSmdsgY
	UbYp5GeW1rBjTAvLigyQgCdWJVTNRLBbxvru/m+gmlAM9owTssEH5atOsfQ4tMouSFaLc8moLjFCr
	GgqOQEaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL64L-00Bkxt-2H;
	Wed, 03 Jan 2024 18:34:21 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61K-00BhOB-2V
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=urFU9aTWXoKfBuX45dYqmrjzg9LkLe3OObps5IRovG8=; b=F6+wL5Amxz/hBuMO18qCTseLVn
	q+Phzt5U99ioT6O78Na/GQAHbINqb/t/6/R2xrpgd7H6S4XhTj5g/LtT/Tg5LBLrZrT/x8JEl50nb
	tZVcVJx4bPx+xWtYuU+vq1xM0v9B0hDjO6LR369SmIZyg3jvWRfPlWQ6F+si1xylbNiCGM48JAcgH
	hXbO2pro6DZj04T65vkzZGcu8ic1DIdk8xMfyguHTBny8CiSuEb6TajglE/TYczC50Rp0joG6CzNR
	nF9RJq1vZRAJHQljVMWdnnru82F8lkFt8yjGT+HBkSe91P5bq9KDC3cfwUS9DrDmV9vA+D1/gjK05
	AgU0FfIQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rL61D-00DIlw-Df
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 18:31:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-0001UG-H3; Wed, 03 Jan 2024 19:30:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-000AuI-3x; Wed, 03 Jan 2024 19:30:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k2-001j4X-2S;
	Wed, 03 Jan 2024 19:13:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:00 +0100
Message-Id: <20240103181312.409668-41-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183108_932399_381129F6 
X-CRM114-Status: UNSURE (   9.01  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 040/112] fs: initialize struct nameidata::last
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The last member is normally written by link_path_walk(), before being
read by __lookup_hash, among others.

In the special case of calling open() on "/", link_path_walk() will
terminate early without setting the last member, leading __d_alloc
called by __lookup_hash to read uninitialized memory.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/fs.c b/fs/fs.c
index bd6b9f504adb..74ece0e9a7d0 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1631,6 +1631,7 @@ struct filename {
 
 static void set_nameidata(struct nameidata *p, struct filename *name)
 {
+	p->last = slash_name;
 	p->stack = p->internal;
 	p->name = name;
 	p->total_link_count = 0;
-- 
2.39.2



