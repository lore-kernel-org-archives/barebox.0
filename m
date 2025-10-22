Delivery-date: Wed, 22 Oct 2025 17:55:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBbBu-00Ael2-0U
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 17:55:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBbBt-0002yQ-Kg
	for lore@pengutronix.de; Wed, 22 Oct 2025 17:55:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GNdaNPAOpMw+tQAMG5heBnVcx4Q23GDGQ43sAT1qsUI=; b=iOTG3Ll4Fb7mbqsbaqK1NjHbfz
	m0JCSoL16e2LRcjvY709f+A9DgF353KyBQ8HJUyCjBGwKP+UuozaN9dGNu2vBdup8ZXKSKh41gr1X
	FzTxjybN0X0er7FN78ZWFfq/cPQHL2T9uPihpuUfE+JvQNkijeyIrFuZ4PwKvjKUw+Vpi5F/oE0lj
	MLK7NZOkyCRm9O/Jklw4BOqyb5DGLyP3noDiMmAt8j6af72vlnl/PCX5W6WwRZNgeVNTdd79Tx5FP
	3eLIBf2YzeLKqJPxeZ2aDrtKJavNCSYmpGBVUil2e2ICU+8bjO3sXAAt/YWoMOQreoBG4NWc0Xfwn
	sRovSFVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBbBS-00000003Sgn-44Lj;
	Wed, 22 Oct 2025 15:55:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBbBP-00000003Sg1-0ovP
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 15:55:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBbBN-0002qQ-EN; Wed, 22 Oct 2025 17:55:25 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBbBN-004ume-0o;
	Wed, 22 Oct 2025 17:55:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBbBN-000000020JN-0ntM;
	Wed, 22 Oct 2025 17:55:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251022150842.2222854-1-a.fatoum@pengutronix.de>
References: <20251022150842.2222854-1-a.fatoum@pengutronix.de>
Message-Id: <176114852518.477766.12364758978551934427.b4-ty@pengutronix.de>
Date: Wed, 22 Oct 2025 17:55:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_085527_327542_948EEA62 
X-CRM114-Status: UNSURE (   8.18  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] MAKEALL: do not early abort initial "probe"
 defconfig sourcing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 22 Oct 2025 17:08:41 +0200, Ahmad Fatoum wrote:
> The sed line recently introduced to report the shuffle seed to track down an
> issue introduced an issue of its own: It exits after getting the
> --shuffle argument. This early SIGPIPE means that the sub-make is not
> invoked and the .config is not written...
> 
> Fix this by running sed until the end and just taking the first line.
> 
> [...]

Applied, thanks!

[1/1] MAKEALL: do not early abort initial "probe" defconfig sourcing
      https://git.pengutronix.de/cgit/barebox/commit/?id=9b79d18d8d2a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



