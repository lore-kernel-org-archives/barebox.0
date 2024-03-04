Delivery-date: Mon, 04 Mar 2024 11:29:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rh5Zz-008Abu-2N
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 11:29:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rh5Zz-0003XF-4V
	for lore@pengutronix.de; Mon, 04 Mar 2024 11:29:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lYSL0D9lQ0Tmon7EtxBsciK24NAKP3v+G3JN2VQCBUU=; b=xupEjazjgp6ClmPeJWqnhRU7xa
	EzwjEt02Eg0kYp3y4LzRvBZMqZDVoIhf/Gc8oGypmL6xXCZyCskOtY6+Yt5mWGpuujU+iwUQBY13A
	WWOTf6VPsq324fPobnckwYicEc2oH2U+S0Wej1WAIfPiwemCZq1bp1VhXFw04lXyaIefVheAqEvFg
	xP4VMjoLnyowZvzKkUoM2foPh82H3y5X7XLAFeCwUAE13fSWTgYU29NTH5tiGl9ctiuKlsPGqNob8
	kA2xNYig4wdY8MyfAekWOx0Quf96nqfiqGQ/R4D+dYomswOiIzwmuAWosl1mnmk+DOA1oPJveukm5
	TjfhFkWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh5ZG-00000008bhX-3H2P;
	Mon, 04 Mar 2024 10:29:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4uk-00000008UJ2-1qUU
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 09:47:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rh4uj-0002xt-6Y; Mon, 04 Mar 2024 10:47:17 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rh4ui-004KCE-QE; Mon, 04 Mar 2024 10:47:16 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rh4ui-00BWOU-2P;
	Mon, 04 Mar 2024 10:47:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240301111915.2439646-1-s.hauer@pengutronix.de>
References: <20240301111915.2439646-1-s.hauer@pengutronix.de>
Message-Id: <170954563674.2746097.17917270952192365500.b4-ty@pengutronix.de>
Date: Mon, 04 Mar 2024 10:47:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_014718_903913_6DCC7360 
X-CRM114-Status: UNSURE (   8.19  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: ele: remove unnecessary argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 01 Mar 2024 12:19:15 +0100, Sascha Hauer wrote:
> The get_response argument to imx9_s3mua_call() is always set to true by
> the callers. It must be like that because in the ELE API Reference Guide
> every call into the ELE has a response. Drop the unnecessary argument.
> 
> 

Applied, thanks!

[1/1] ARM: i.MX: ele: remove unnecessary argument
      https://git.pengutronix.de/cgit/barebox/commit/?id=967f220a2a63 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



