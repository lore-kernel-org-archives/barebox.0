Delivery-date: Fri, 19 Jul 2024 08:46:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUhNl-000kvs-0J
	for lore@lore.pengutronix.de;
	Fri, 19 Jul 2024 08:46:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUhNk-0007p9-H5
	for lore@pengutronix.de; Fri, 19 Jul 2024 08:46:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pYSr1FrN6fhpxnnwcBuuzudv3ean99uhtjlkhxg9Cp8=; b=q1NFWWikD47N10Wc2glT9t8wCs
	uqnA/yJfqMxWvSIxNzV7Wjx/YXbCbHTCDlORW0cyaGXeZ+Lb6jUYK8cYpj10+q1JOzFiRZlPrXL2o
	LaUeEne4TBbG/n7AvhS1cSsBdg8mcFLN9uz1NnJp/BSH7/hciBS2r5b7KcHrA3A2N1SsAGH4Tz+O2
	nVKzALyRbFpHoECJXd/9zFTGBxTM3gVkK3HLswIeibEawoFOXSiYCq4a9IWgoxC3aksG2eripe57R
	JjOBNWvUhKKZ+6ha5GhNFpHAjv0dkClWNggwPapdImwGLVz5EnPTAaXSCDoIVcWceIPzxFGnNayCc
	HD6TZs2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUhNI-00000001qV3-2jDG;
	Fri, 19 Jul 2024 06:45:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUhN2-00000001qQm-3wIt
	for barebox@lists.infradead.org;
	Fri, 19 Jul 2024 06:45:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUhN1-0007jy-Kd; Fri, 19 Jul 2024 08:45:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUhN1-000cl5-7p; Fri, 19 Jul 2024 08:45:35 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUhN1-002RrJ-0Z;
	Fri, 19 Jul 2024 08:45:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240717072913.2830995-1-a.fatoum@pengutronix.de>
References: <20240717072913.2830995-1-a.fatoum@pengutronix.de>
Message-Id: <172137153517.583728.17101920325337604729.b4-ty@pengutronix.de>
Date: Fri, 19 Jul 2024 08:45:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_234537_008588_DD240C91 
X-CRM114-Status: UNSURE (   5.79  )
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
Subject: Re: [PATCH master 1/3] environment: don't leak environment path
 buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 17 Jul 2024 09:29:11 +0200, Ahmad Fatoum wrote:
> LeakSanitizer on sandbox reports that we always leak the environment
> path. Restructure the code, so this is avoided.
> 
> 

Applied, thanks!

[1/3] environment: don't leak environment path buffer
      https://git.pengutronix.de/cgit/barebox/commit/?id=48cead76ce50 (link may not be stable)
[2/3] partition: fix use of uninitialized variable in error message
      https://git.pengutronix.de/cgit/barebox/commit/?id=8ff2477b5bb6 (link may not be stable)
[3/3] of: fdt: harden against corrupted reserve map entries
      https://git.pengutronix.de/cgit/barebox/commit/?id=002bb5e97fa9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



