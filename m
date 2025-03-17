Delivery-date: Mon, 17 Mar 2025 13:29:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu9av-000c1r-1T
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 13:29:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu9au-000061-Av
	for lore@pengutronix.de; Mon, 17 Mar 2025 13:29:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bOZSuMYjb7oIs8tkt7ANBeMs4KljTjXE14QzgONElbM=; b=hbiH3hrjssJfiPdRriJyhBTPFr
	eyarnNV+fCZLw7MpBbJUBE1HZkue5MEw56j4Wy150pj2rVNpS3bquxvSY3jdxO2DT74fFkrUWttRB
	KsMSbxFbVBVeyabkrSzWh6Hqx2/oCP24NTAEWDTFwgiUn5U9evkKufD+bsVL/A7MJnyFuH+K4qjcx
	ma8UhbK1WPqlzhZGV/Tp5mdAJ6k4ttK+slNvwgk3XO2UhLnoczZP19J5R4alK5bRCpWXTVi+RjJ8o
	nqNqDydmUno7AFLQWCE5rS/nSzCvkrdkoah5TRoDAaUHBeMkrpNdwAP1fNGklYHnbLqKC59KEUE3m
	BheedHuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu9aT-00000002ZJv-0oYt;
	Mon, 17 Mar 2025 12:28:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu9aQ-00000002ZJD-1bd8
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 12:28:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu9aO-0008Ms-W7; Mon, 17 Mar 2025 13:28:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu9aO-000FEW-1D;
	Mon, 17 Mar 2025 13:28:52 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu9aO-00DTS9-2N;
	Mon, 17 Mar 2025 13:28:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250317113208.1863258-1-a.fatoum@pengutronix.de>
References: <20250317113208.1863258-1-a.fatoum@pengutronix.de>
Message-Id: <174221453273.3211264.6864612304810272816.b4-ty@pengutronix.de>
Date: Mon, 17 Mar 2025 13:28:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_052854_425489_B06E36DA 
X-CRM114-Status: UNSURE (   7.30  )
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
Subject: Re: [PATCH v2 1/2] MAKEALL: support direct options for KCONFIG_ADD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Mar 2025 12:32:07 +0100, Ahmad Fatoum wrote:
> KCONFIG_ADD currently expects a list of files to be merged.
> As MAKEALL is a bash script, let's make use of process substitution
> to create temporary files out of -k CONFIG_foo=bar options.
> 
> 

Applied, thanks!

[1/2] MAKEALL: support direct options for KCONFIG_ADD
      https://git.pengutronix.de/cgit/barebox/commit/?id=b39351c0036f (link may not be stable)
[2/2] MAKEALL: parse kconfig_add out of YAML files
      https://git.pengutronix.de/cgit/barebox/commit/?id=3b288224cc6c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



