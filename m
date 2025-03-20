Delivery-date: Thu, 20 Mar 2025 13:13:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvElp-001st8-0l
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 13:13:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvElo-0008Dg-4w
	for lore@pengutronix.de; Thu, 20 Mar 2025 13:13:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W5FFmePUnGMSm6k9dC57mrPTDZRPTNe+i9rBBbYj8gw=; b=X3yPg/MJeLnNBLfBNF0VQ4PwwS
	AO77uNhJEmR7tIXsvOBOvcUwTfRp78JqFK9gk3u4TjHYI5Pb6qAEn6T7UHyolDrq2dd5wAtUpQuVY
	qCJXf8eXArEJ0jNygVMJh3YYZdEIqZ9kMIUscvH6tEfL94OKEO6oLEAfVXQ584qHrVAQHAJhXFjHt
	wo6ZMT4YH9GljnqxNwqtkSx6OON+iPFbisvytdyWMB12zZ8ZlbVnNjrpcMQPuayFCcFqjv+zOb8Ob
	lmx+Mf42Boha6T9mpQ3rKc+4OiOBHii39NTj/A/hTaB1PkCZ4lpcmIaAKRAGEUVWHQcUSCWTSz/mo
	FnVl/ziw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvElN-0000000C4j2-3UgY;
	Thu, 20 Mar 2025 12:12:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvEf1-0000000C3BI-3WQe
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 12:06:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvEf0-0005zE-Ih; Thu, 20 Mar 2025 13:06:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvEez-000kvg-2x;
	Thu, 20 Mar 2025 13:06:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvEf0-000qty-0t;
	Thu, 20 Mar 2025 13:06:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250320110521.190945-1-s.hauer@pengutronix.de>
References: <20250320110521.190945-1-s.hauer@pengutronix.de>
Message-Id: <174247236627.203123.4982940980055752702.b4-ty@pengutronix.de>
Date: Thu, 20 Mar 2025 13:06:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_050607_885936_CB42076E 
X-CRM114-Status: UNSURE (   5.29  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] linux/printk.h: fix typos
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 20 Mar 2025 12:05:21 +0100, Sascha Hauer wrote:
> Fix typos in dev_*_once macros to make them usable.
> 
> 

Applied, thanks!

[1/1] linux/printk.h: fix typos
      https://git.pengutronix.de/cgit/barebox/commit/?id=60ea85061eac (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



