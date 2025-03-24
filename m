Delivery-date: Mon, 24 Mar 2025 09:32:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twdEp-003Vyr-19
	for lore@lore.pengutronix.de;
	Mon, 24 Mar 2025 09:32:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twdEo-0005Zy-8c
	for lore@pengutronix.de; Mon, 24 Mar 2025 09:32:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0Sv9k9sXQ+780r6m25eDKJ6KUGSDnkE9fMOkrrzA8GE=; b=InW+T/4Yb6Rj0gCSK9ySnztSkO
	a1yU/GPc2xFei41DROyfo4PUGwQg8ovg1ImWbGPSE7B5QDDoimhsStebQUKGE6GrUvSbxFbmXXUr/
	cM2o9LWhAsUNORefgzFksgNZfXdWyg3YkFta9qwXEWDoofDf5gTMMGAFP+ixAQVgBrL31Tv3QJno7
	N4daRO4O4xpbZMKKxvUzDEs3XlfTvPfcWf4AMMnAYPeszwnOv31VcIDYDJcI4RYcztjeW7qfeJSnE
	sM2ksLbQkNCB6Yi4VbECXHsZsJDiGdMooYfwyw7AuCfok0rFc0PKb9pmUmwONJ7gxBoWoZkhtenOQ
	03PKcWDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twdEH-00000002amC-495q;
	Mon, 24 Mar 2025 08:32:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twdCx-00000002aas-3Den
	for barebox@lists.infradead.org;
	Mon, 24 Mar 2025 08:30:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdCw-0005Lf-BV; Mon, 24 Mar 2025 09:30:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdCv-001NW4-2Q;
	Mon, 24 Mar 2025 09:30:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdCw-007ARL-0L;
	Mon, 24 Mar 2025 09:30:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250320052114.1732651-1-a.fatoum@pengutronix.de>
References: <20250320052114.1732651-1-a.fatoum@pengutronix.de>
Message-Id: <174280505410.1708268.6827945109482476993.b4-ty@pengutronix.de>
Date: Mon, 24 Mar 2025 09:30:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_013055_815510_2AB33BB2 
X-CRM114-Status: UNSURE (   8.06  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] scripts: define le32_to_cpup and friends for
 host/target tools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 20 Mar 2025 06:21:13 +0100, Ahmad Fatoum wrote:
> We already define le32_to_cpu and friends, but were missing so far the
> p-suffixed variant, which accepts a pointer.
> 
> This is easily implemented with a bit of macro boilerplate, so let's do
> that.
> 
> 
> [...]

Applied, thanks!

[1/2] scripts: define le32_to_cpup and friends for host/target tools
      https://git.pengutronix.de/cgit/barebox/commit/?id=abc44245f7e7 (link may not be stable)
[2/2] booti: sanity check image magic before parsing header
      https://git.pengutronix.de/cgit/barebox/commit/?id=63e9dbd07542 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



