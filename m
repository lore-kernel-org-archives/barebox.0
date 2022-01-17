Delivery-date: Mon, 17 Jan 2022 10:00:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9Nsf-004Qtq-3W
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 10:00:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9Nsd-0003IF-Le
	for lore@pengutronix.de; Mon, 17 Jan 2022 10:00:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mIekkJidmepEE3JIcwJtaFiG1tZYJjUziSBhDsjGl/4=; b=bvPsYAuU8k145l
	vM0L4vKMtEAbUhaqmh9WsK5Ct+5N9YXkqCSFy4LH+Jmux2/z1YAqzrK4EuavqF+iJDFKydsRJVDG3
	pYN0ttReH3Ad+v7Ml2QlIrzRuxCis/a+ij62lbNhBHh7AInKI6++K9W280sIU1snPsjYfOtPpiqEh
	B4oFphKiKjCTrGO57EgiIUo25keAEO0x4H5o+1TBCyGj8miu3Zb+nBWu1i/SBR1eJ0pXghajldguI
	Yh+YdUzNrTokrFOIJmDusQubvlQvAmAFSUs16bL+XkZz1fINfxPQYHRgv3iTXE14cs/dt6mzozlV4
	P+Ksko/oBjZJKtQaPYWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9NrI-00EBVW-7f; Mon, 17 Jan 2022 08:59:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9NrC-00EBUC-Qc
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 08:59:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <jbe@pengutronix.de>) id 1n9Nr9-0002vI-Jl
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 09:59:15 +0100
Received: from [2a0a:edc0:0:900:1d::45] (helo=ginster)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <jbe@pengutronix.de>) id 1n9Nr8-00Amne-F1
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 09:59:13 +0100
Received: from jbe by ginster with local (Exim 4.94.2)
 (envelope-from <jbe@pengutronix.de>) id 1n9Nr6-0009VE-ST
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 09:59:12 +0100
From: Juergen Borleis <jbe@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 17 Jan 2022 09:59:06 +0100
Message-Id: <20220117085908.36460-1-jbe@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_005918_900907_2FF35CFA 
X-CRM114-Status: UNSURE (   4.32  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Add core driver for PMIC rn5t568
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This change adds the core regmap based access driver and its corresponding watchdog
for the former Ricoh (now: Nisshinbo Micro Devices Inc) rn5t568 PMIC device.

Supported features are: watchdog, PMIC based power cycle and reset source detection.

Singed-off-by: Juergen Borleis <jbe@pengutronix.de>



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

