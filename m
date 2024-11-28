Delivery-date: Thu, 28 Nov 2024 10:30:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGarA-001OkR-0p
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 10:30:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGarA-00062x-6b
	for lore@pengutronix.de; Thu, 28 Nov 2024 10:30:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cFYB3bokeBdjf+LikQJ8R7XjZi3FUIiWT+eJATFLkuw=; b=fXJ5b9gkfpYvCpClgPVvs7VIag
	nLthAHgYSkz1lppUFDtzRp2IVAZS0nIbQdQIAadLiTmUWD6/zpYNJuLUyzn5oGDV5xGoFftwcCArW
	YS6/1b+IwAlSOA3K1n2oE/W/sGd/dbmQIUFnazUvN3entPnrD3puAGV0igxbMlWWfEzpOGHCX65tH
	/jcFopSaxpr0dpDAnu4kHBYCsoTEqmlPYQFEiUWjV3d9Ih7Qws+GENGIFJyThTJsTwxFAcWBN8l1z
	+zx1yo7uka0+03WKLCULIPa2ZfXA57K5ibYJaYgy2vPo6I7vDdsLOZsBDI5eM0UHwKKkxSd3d6e1Z
	23s03uRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGaqh-0000000F98j-0rGE;
	Thu, 28 Nov 2024 09:30:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGaqe-0000000F983-1mmp
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 09:30:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGaqc-0005rM-Vf; Thu, 28 Nov 2024 10:30:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGaqc-000aZU-04;
	Thu, 28 Nov 2024 10:30:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGaqc-00FuuF-2M;
	Thu, 28 Nov 2024 10:30:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241125151246.422255-1-a.fatoum@pengutronix.de>
References: <20241125151246.422255-1-a.fatoum@pengutronix.de>
Message-Id: <173278620672.3793620.6010957391589323467.b4-ty@pengutronix.de>
Date: Thu, 28 Nov 2024 10:30:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_013008_467952_17645D38 
X-CRM114-Status: GOOD (  10.86  )
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
Subject: Re: [PATCH 1/2] MAKEALL: allow users to increase verbosity and
 sidestep logging
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 25 Nov 2024 16:12:45 +0100, Ahmad Fatoum wrote:
> MAKEALL always logs into a LOGDIR, but the output is not very talkative,
> because for compiling, make is always called with -s (silent) option,
> which prevents both V=0 and V=1 from affecting the output.
> 
> To make the output of MAKEALL more usefuly from CI, we want V=0 to have
> an effect (i.e. print messages like `CC     version.o') and all output
> to go to stdout/stderr, because it's more user friendly to have the
> output directly in the Github Actions log instead of being in a zip file
> that needs to be downloaded.
> 
> [...]

Applied, thanks!

[1/2] MAKEALL: allow users to increase verbosity and sidestep logging
      https://git.pengutronix.de/cgit/barebox/commit/?id=6006ae2abf0b (link may not be stable)
[2/2] ci: don't run make in silent mode
      https://git.pengutronix.de/cgit/barebox/commit/?id=6f2d8157e2a6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



