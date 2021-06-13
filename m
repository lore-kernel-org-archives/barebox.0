Delivery-date: Mon, 14 Jun 2021 00:30:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lsYcd-0002bR-3z
	for lore@lore.pengutronix.de; Mon, 14 Jun 2021 00:30:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lsYcc-0001vR-7d
	for lore@pengutronix.de; Mon, 14 Jun 2021 00:30:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mfzo9/hPLtoKRkxLme5cfdKu/Q98Rrsa9tvSQCjZSQk=; b=iw8EpKSh++UnY1
	GXCb/1KpmVgDb8pjiyNZsvQ7gqWL68VjSvZzJHBv2NJjUphQFuGLl2zePW8+yHBVLbQ4Zk/b6YPCo
	4ZDccifMZRhH7Tg+ANyy/fewDHgFOsDSof3Sk4V5HR36fRjQpEhyXebeYTVyyWoAyRtVnlwW3Mbmd
	923Q3vqfDiQjXa9lj/1HeXV9TpBuzy4QTUK+DZAlaaoh+vJx2Lze5FNbC7mJt8yJRBg2oSZmPV5ni
	Bk5M+BbjOqQ5LreXkbNIucb+olgAwzEMEAyRg15PIdAOyYquRcZmW+jj2lNhr7tbszv93C2c4BV+Q
	kofqs97QNvmjKpu0ajPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsYaz-00BUXN-Pr; Sun, 13 Jun 2021 22:28:45 +0000
Received: from out103-8-vmse02.mailcluster.com.au ([103.250.20.8])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsYat-00BUTP-2K
 for barebox@lists.infradead.org; Sun, 13 Jun 2021 22:28:40 +0000
Received: from vmcp03.web-servers.com.au ([116.90.56.28])
 by vmse02.mailcluster.com.au with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marc@cpdesign.com.au>)
 id 1lsYZt-0004XI-Ac
 for barebox@lists.infradead.org; Mon, 14 Jun 2021 08:27:43 +1000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=cpdesign.com.au; s=default; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rwNH7BcLU+rVXte0a2vjQVSlDAzNMe+4yYDIb4j6BJ0=; b=R9YzeC1XVlOUJAKfmc2/f1wMRh
 QO0/36lfWYT1CCzOEdIfcjAcrlZl0DVc5Xel0qyf94rumI+dbiG8oEancccu5+svyO18tV3PbyQg+
 p8Md3BuzUsfdpotBsZrOM0uZf+Hz9Rx4qNqkt5cfGtLCQwH20eYCjevrx0RUtorK2jsdUHYTPXGAy
 H0jGOUTCG3L7RhS2mzl6NLEejY5ttE2BN5rNO2xVFt9iuoa4vneoR6dzU+v/Br3+fEEmnkRhIFhbQ
 jWR9FDTtr5C4sE8NBEFbo8/vVhv1OH7hhuHrb8nMsRY8zp5MXGOCQ6ZCueIp5l+KDj5aqNzmTIgvx
 QlVOMNTw==;
Received: from 60-242-242-93.static.tpgi.com.au ([60.242.242.93]:52578
 helo=linux.local)
 by vmcp03.web-servers.com.au with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <marc@cpdesign.com.au>)
 id 1lsYZk-00Fwoa-9o; Mon, 14 Jun 2021 08:27:28 +1000
From: Marc Reilly <marc@cpdesign.com.au>
To: barebox@lists.infradead.org
Date: Mon, 14 Jun 2021 08:26:39 +1000
Message-Id: <20210613222639.13190-4-marc@cpdesign.com.au>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210613222639.13190-1-marc@cpdesign.com.au>
References: <20210613222639.13190-1-marc@cpdesign.com.au>
MIME-Version: 1.0
X-Authenticated-User: marc@cpdesign.com.au
X-Authenticator: dovecot_plain
X-Originating-IP: 116.90.56.28
X-SpamExperts-Domain: panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Username: 116.90.56.28
Authentication-Results: mailcluster.com.au; auth=pass
 smtp.auth=116.90.56.28@panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.07)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT8qyNmRBY3Apo+u6SFMOWFHPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5zzRQC/PIR0ZeIYukWs6zeuXFWCX8oNdggW7HE9XDTdSavp
 k7Vp2UXVHEQMIct0liKtUyCbQ7eas7pEwlEEecfTswKQDamPN66SYe4XX4xmgJvmHZIaOCPnuqIf
 UsnKQndaIN+MTJ88TTpoG8fQ5knApuGXed8VjoeeEKguXydrkRh+lS1IZOmkeVqtBBDwWUaGKpfT
 IF8fSxNC0LttVkKWygY2ntMpEWJ1klssHd1TrvsDcLC0U2KR6OWH3DJPpNlNxaypTbp28NxghjNo
 pU/Oaqj4KISIRSJ5MfjE8OaunZEyYYf7TmlI3iEcqXK4A61ChHMQHCMEWTX9HEhwSP4/MSl+mev0
 M9cO0xP2892D0Uv5/hXXQF+f2WAemEBBH0NsVeB41VPmQWlT6X4HxPATUHn+gnmsNLchHhymY5JU
 63hy/sIYQHSrltYx0aSLXraWI9Hfbk2V6Si1LAtE8G+At7lfBxMo7ZYPIM8LGtwRU7//0qljMckk
 ipEhs0fF+lrm+ifPs2yIXVaS7j1CpD4sbMC/K6klzbRMjzrXH/SDfWiH1Wgh6RAenBR+licROGYr
 RGW77/m/7TT1ljPLYAlHo93GrHkTZDpX3JXzvqAnRZoUZINQ5JsgpjrIQ+ZfkEwSpE1sG6Z94/Ge
 Q0UKItQafpoooFY4M7RjQ1QYeOer6qdM2kmVq603aW6BgyLXzkUCzsKWYWuwCKXNznpmdv1dr1sQ
 za9mle7ev8IXG78l81nBVGLnTSkhP+UMfpx5k0f5lVMvAPMUcdL1ybRL8rAadVudx8rzFowB87CJ
 bkawLFFfEoXm0/FPF8PR0w363lk4pUScEZHFruLkqAqUpQ92YnNGFdRN3CtPPBjSHkIxZRCWOxjY
 AJtzLXrvWkpeAoeqbx9cPcGR31mI6M1Ucaz2oSyaA1TzQpMNBxbB7RLiYIrYRweYGhtvVN66c5GC
 nah0CDG0r+34QtTJiEdfiY7uePQ44lqMDpyryPGheI8wLqPdSBUkH1KMRs8VVbvpdorZT2Gmbldn
 DEeqRkf38YRFrK8flN6a4n79d1I47GmMvA==
X-Report-Abuse-To: spam@vmse01.mailcluster.com.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210613_152839_135404_58F0F79B 
X-CRM114-Status: GOOD (  10.27  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] ARM: beaglebone: init MPU speed to 800Mhz
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This sets the core processor speed to 800Mhz (from 500). Doing this helps
speed the boot up a bit until the CPU freq govenor takes over.

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 arch/arm/boards/beaglebone/lowlevel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 91d143e41..31211448f 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -126,7 +126,7 @@ static noinline int beaglebone_sram_init(void)
 
 	/* Setup the PLLs and the clocks for the peripherals */
 	if (is_beaglebone_black()) {
-		am33xx_pll_init(MPUPLL_M_500, DDRPLL_M_400);
+		am33xx_pll_init(MPUPLL_M_800, DDRPLL_M_400);
 		am335x_sdram_init(0x18B, &ddr3_cmd_ctrl, &ddr3_regs,
 				&ddr3_data);
 	} else {
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

