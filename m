Delivery-date: Fri, 07 Mar 2025 09:00:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqSdN-00AvWS-1k
	for lore@lore.pengutronix.de;
	Fri, 07 Mar 2025 09:00:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqSdL-0005sp-9A
	for lore@pengutronix.de; Fri, 07 Mar 2025 09:00:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Nbp2KdgcaotOHj1jBl2/w94ZstzwSekqyuKMdG4v+DI=; b=pTf+VOvJc6IcliJIq5o9KVFin3
	yUPCGwASDdHFSl+jPZeoInefIXgySe6+TqgisPY2lxOHJYkZUeP/VEkxQATDF5HcYaY5XUd+clmIu
	JhQbvBzdp43aL9kPsqnlLX6hBeEOF+toFA7bQP1xGFOITUoZZehKszitDdf6EAwlY5nxr0vbdzGlf
	CuvD8MoRjE0jCf/4UuLGxvb1TWpoeQ5foRtIWa0xt+4/KdCvlILTXN0H75ArQ7SfiGvIfZZlqc1cx
	rUvHMv4S0HQ4NBGgI/RH3Zcwrcfh5B22vQPXe1IOwB9ujARaef3LR7xllLbwl3kv2ug9xizLNuSUx
	WTX+iaHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqSct-0000000DUGW-1N8b;
	Fri, 07 Mar 2025 08:00:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqScr-0000000DUFX-0toP
	for barebox@lists.infradead.org;
	Fri, 07 Mar 2025 08:00:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tqScp-0005ke-T5; Fri, 07 Mar 2025 09:00:07 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tqScp-004Rwc-2J;
	Fri, 07 Mar 2025 09:00:07 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tqScp-0045IL-25;
	Fri, 07 Mar 2025 09:00:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250305131121.3985854-1-a.fatoum@pengutronix.de>
References: <20250305131121.3985854-1-a.fatoum@pengutronix.de>
Message-Id: <174133440764.973644.18378279852503854528.b4-ty@pengutronix.de>
Date: Fri, 07 Mar 2025 09:00:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_000009_258738_C144E06D 
X-CRM114-Status: UNSURE (   8.55  )
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
Subject: Re: [PATCH master] nfs: rename global.net.nfsport to
 global.nfs.port
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 05 Mar 2025 14:11:21 +0100, Ahmad Fatoum wrote:
> There's already precedence in global.tftp.windowsize, so global.nfs.port
> is probably a better name than squeezing it into global.net.
> 
> This parameter is not yet in any release, so the fallout is fairly
> limited.
> 
> While at it, mention it in the documentation.
> 
> [...]

Applied, thanks!

[1/1] nfs: rename global.net.nfsport to global.nfs.port
      https://git.pengutronix.de/cgit/barebox/commit/?id=1b2126866258 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



