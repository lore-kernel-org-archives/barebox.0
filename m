Delivery-date: Tue, 12 Nov 2024 10:18:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAn2j-000xSH-1T
	for lore@lore.pengutronix.de;
	Tue, 12 Nov 2024 10:18:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAn2i-0007IC-RM
	for lore@pengutronix.de; Tue, 12 Nov 2024 10:18:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rH7SGhe36DJSE5IA4HI5Jvk1E4PchVruhzhpA6nYXsk=; b=FyWOPdJzKvoHd3j2kYLhWpl0Cd
	MTwn0ybNNn76xSikp0e3DAmaplr47iBO/QzWz9YjfffJSe3Da5PNDXtUJyHE56oTYTCMp+sQ9Bx+d
	8nV7tyn3F3Y44jTekyfCMTGPO8Qvp8y2itfU7CL2Usy0WSy/0ilLpWMbs8Qpb0Om1DrSytmydnmcD
	kJvZw9cPBKQXwLLnW/VoZegnMCJ61cI2rJsYBUzBJy+zIqiuNd7GH4MCZaYC0fzUnPVQ0OOleoBfM
	QX4C0izBO9uGW5YZc7neBlZ2HMDf/bEebiz3MdBUKQeZArWzQIl3Z49ORabmxobT7Nqw0avcKTuje
	vJ1bciKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAn2J-00000002n9P-1LMX;
	Tue, 12 Nov 2024 09:18:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAn2G-00000002n8e-2VRk
	for barebox@lists.infradead.org;
	Tue, 12 Nov 2024 09:18:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAn2E-00079s-9j; Tue, 12 Nov 2024 10:18:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAn2E-000O0r-0N;
	Tue, 12 Nov 2024 10:18:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAn2E-00GbEX-08;
	Tue, 12 Nov 2024 10:18:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Holger Assmann <h.assmann@pengutronix.de>
In-Reply-To: <20241108105751.1872681-1-h.assmann@pengutronix.de>
References: <20241108105751.1872681-1-h.assmann@pengutronix.de>
Message-Id: <173140308604.3956020.13911543536122039785.b4-ty@pengutronix.de>
Date: Tue, 12 Nov 2024 10:18:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_011808_668343_27285C30 
X-CRM114-Status: GOOD (  10.70  )
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
Subject: Re: [PATCH] ARM: dts: i.MX8MP: disable NPU node if hardware is
 missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 08 Nov 2024 11:57:51 +0100, Holger Assmann wrote:
> Besides its power domain, the NPU node itself also needs to be disabled
> in the kernel device tree if no respective hardware is present at the
> SoC.
> 
> The power domain has already been dealt with by upstream commit
> 924101c81d6e ("ARM: i.MX8MP: add feature controller support for Plus").
> This patch adds the necessary entry for the NPU node.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: i.MX8MP: disable NPU node if hardware is missing
      https://git.pengutronix.de/cgit/barebox/commit/?id=a93c184fb15c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



