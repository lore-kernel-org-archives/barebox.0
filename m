Delivery-date: Mon, 14 Oct 2024 15:36:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LFW-004HCe-1z
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:36:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LFW-0004UB-2x
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:36:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IdCi1/0B3rkb1w5Opt9cmnkzNgXxO5YS6tdb/S8yP54=; b=jttDe8kNnH6ndefLJBz3zxElpG
	Bjo2ZfwRzY2JS5W1eUzi1ERrq4KY2wNIakh6MgscKjV1KRrTm1HAIspOffmKM+q3TWWesucSol41x
	eJ9t/jgak8Ccog58TfD9aJZKhyDP3DzJrDVG9YzNwjYf3/IgrOmurTIHpJLwbW30+8HvOGSOHbQL3
	I0ZOUSYyZYnUWunuNuQOT2H0oKdfrlH1/QVr70csKSstM05snLspbJ5+bUit0K8tJLFJiXoIHuhQ7
	bqgxCzhEgIJQUC7SdHrcXrWHeFPOwTlBdi1Nb7GSdlyUywcmpAFmFIiPwKDimhfRfpwLeM3WmuZSN
	w0o/cP2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LF3-00000005JVh-2QCv;
	Mon, 14 Oct 2024 13:36:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0K4V-000000053zB-2Siq
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 12:21:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0K4T-00047f-NG; Mon, 14 Oct 2024 14:21:09 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0K4T-001mui-Ap; Mon, 14 Oct 2024 14:21:09 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0K4T-002y4P-0u;
	Mon, 14 Oct 2024 14:21:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: uol@pengutronix.de, ejo@pengutronix.de
In-Reply-To: <20241009130546.3913672-1-a.fatoum@pengutronix.de>
References: <20241009130546.3913672-1-a.fatoum@pengutronix.de>
Message-Id: <172890846928.707554.14336514620846483415.b4-ty@pengutronix.de>
Date: Mon, 14 Oct 2024 14:21:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_052111_666373_BA6BEF3B 
X-CRM114-Status: UNSURE (   6.34  )
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
Subject: Re: [PATCH] FIT: improve error message when uncompressing
 non-compressed files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 09 Oct 2024 15:05:46 +0200, Ahmad Fatoum wrote:
> If due to user error, an uncompressed kernel is added into a FIT image,
> but compression = "gzip" is specified, a quite cryptic message results:
> 
>   ERROR: FIT: cannot handle filetype ARM aarch64 Linux image
>   ERROR: FIT: data couldn't be decompressed
>   ERROR: Loading dtb image failed with: Function not implemented
> 
> [...]

Applied, thanks!

[1/1] FIT: improve error message when uncompressing non-compressed files
      https://git.pengutronix.de/cgit/barebox/commit/?id=22e42e849896 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



