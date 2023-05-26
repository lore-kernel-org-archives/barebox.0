Delivery-date: Fri, 26 May 2023 10:18:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2Sek-00Eo7T-Nm
	for lore@lore.pengutronix.de; Fri, 26 May 2023 10:18:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2Sei-0004Zk-3g
	for lore@pengutronix.de; Fri, 26 May 2023 10:18:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RxQ2nDKbPnuluuni5VutUgJwJPabrpK3R/zYufO3kR0=; b=utg+OZM6CWZIYpeJz2n8WCm9T1
	8oD1pTxEEhSHOh93eB1sfKMqa7f3s5RzYys0Cnn2ITGYJgTA7sFJWJRsv/6rDEtxOSquwwyVpB8Cx
	4z+XjQm2ZXrg1yvG/pk+GI9JvpD5tnITL7ddvV2vcmNWFm+xy9hO1qpTtkwBMy2ehQwF0T0ecpzwL
	OfXDEvcXThm8qfZBpbD8Y4G9DDejQ2SJ4ZtAjxRafxZwn2ZMYOvGYfFoNgSqr+yaST0+wdojUnXIr
	vduEN36Fv0UgQkBbAeDYBcpNuvOuSWveNtxcKtY2udJlXeMt2ryYhMk/MHhMQNkSsFkcc8KSpcoz+
	/GGu6S3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Sdt-001Zos-2r;
	Fri, 26 May 2023 08:17:45 +0000
Received: from vmse02.mailcluster.com.au ([2401:fc00:0:14::6])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Sdr-001Ziy-0j
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 08:17:44 +0000
Received: from vmcp03.web-servers.com.au ([116.90.56.28])
	by vmse02.mailcluster.com.au with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q2Scm-00083x-N3
	for barebox@lists.infradead.org; Fri, 26 May 2023 18:16:49 +1000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=cpdesign.com.au; s=default; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=RxQ2nDKbPnuluuni5VutUgJwJPabrpK3R/zYufO3kR0=; b=PcSG2N2zfni8tMnyEUoWljBAOo
	ttONFWhPKcQ2jgiqV+0AWkzfp0k0i2BGT6I5l2Lc0xVZWSkBUBuJP6p9icefhdSyXam5jIeGnkw0x
	AICahvde+VzmGgfnKoBGxvQFrMZnDDx0wyIf65vhS/0FTayt18ExT+v3cG+7eXAsMzdYp9X0Uu5Do
	8l/bOi/ohkge5yQha/aTork0FAs+Rh/SlWU07iNfQbPSyIpA4PmMP3PG9eIdiW9oxHfVGxVlsliXk
	LuwcEyQwiZFtpI7l1MyOFagy628obz0RNSozUSLwVeh1vvYJnNk5WWwYnbRO3Hdgj129O3RpfXfB1
	14Hp5/KQ==;
Received: from [125.254.26.114] (port=48824 helo=localhost.localdomain)
	by vmcp03.web-servers.com.au with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q2Sc0-00FdRf-0c;
	Fri, 26 May 2023 18:15:48 +1000
From: Marc Reilly <marc@cpdesign.com.au>
To: barebox@lists.infradead.org
Date: Fri, 26 May 2023 18:15:41 +1000
Message-Id: <20230526081541.29415-1-marc@cpdesign.com.au>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-User: marc@cpdesign.com.au
X-Authenticator: dovecot_plain
X-Originating-IP: 116.90.56.28
X-SpamExperts-Domain: panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Username: 116.90.56.28
Authentication-Results: mailcluster.com.au; auth=pass smtp.auth=116.90.56.28@panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.02)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT8dFiAHLHFHoTaTbV3rvLggPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5zzRQC/PIR0ZeIYukWs6zeuXFWCX8oNdggW7HE9XDTdSavp
 k7Vp2UXVHEQMIct0liLORHQWABhI8YygpOMExXOjswKQDamPN66SYe4XX4xmgJvmHZIaOCPnuqIf
 UsnKQndaIN+MTJ88TTpoG8fQ5knApuGXed8VjoeeEKguXydrkSpUidRDvhULdPLXIoXP6ZiGKpfT
 IF8fSxNC0LttVkKWygY2ntMpEWJ1klssHd1TrvsDcLC0U2KR6OWH3DJPpNlNxaypTbp28NxghjNo
 pU/Oaqj4KISIRSJ5MfjE8OaunZEyYYf7TmlI3iEcqXK4A61ChHMQHCMEWTX9HEhwSP4/MSl+mev0
 M9cO0xP2892D0Uv5/hXXQF+f2WAemEBBH0NsVeB41VPmQWlT6X4HxPATUHn+gnmsNLchHhymY5JU
 63hy/sIYQHSrltYx0aSLXraWI9Hfbk2V6Si1LAtE8G+At7lfBxMo7ZYPIM8LGtwRU7//0qljMckk
 ipEhs0fF+lrm+ifPs2yIXVaS7j1CpD4sbMC/K6klzbRMjzrXH/SDfWiH1Wgh6RAenBR+licROGYr
 RGW77/m/7TT1ljPLYAlHo93GrHkTZDpX3JXzvqAnRX2Zz6k/dhA8FZn5u0Ua4ScSpE1sG6Z94/Ge
 Q0UKItQafpoooFY4M7RjQ1QYeOer6qdM2kmVq603aW6BgyLXzkUCzsKWYWuwCKXNznpmdv1dr1sQ
 za9mle7ev8IXG78l81nBVGLnTSkhP+UMfpx5k0cMDYHS+MyXYUsSuGMUGhBH0DGQSy8Eh1nid4s5
 JP+qZlFfEoXm0/FPF8PR0w363lk4pUScEZHFruLkqAqUpQ92YnNGFdRN3CtPPBjSHkIxZRCWOxjY
 AJtzLXrvWkpeAoeqbx9cPcGR31mI6M1Ucaz2oSyaA1TzQpMNBxbB7RLiYIrYRweYGhtvVN66c5GC
 nah0CDG0r+34QtTJiEdfiY7uePQ44lqMDpyryPGheI8wLqPdSBUkH1KMRs8VVbvpdorZT2Gmbldn
 DEeqRkf38YRFrK8flN6a4n79d1I47GmMvA==
X-Report-Abuse-To: spam@vmse01.mailcluster.com.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_011743_275321_6E9B97EF 
X-CRM114-Status: UNSURE (   8.33  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/1] Documentation: boards: nxp-imx8mp-evk; clarify firmware folder
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The imx8mp-bp31.bin file is expected to be in the firmware/ folder

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 Documentation/boards/imx/nxp-imx8mp-evk.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/imx/nxp-imx8mp-evk.rst b/Documentation/boards/imx/nxp-imx8mp-evk.rst
index cfd1153e15..da26339864 100644
--- a/Documentation/boards/imx/nxp-imx8mp-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mp-evk.rst
@@ -47,7 +47,7 @@ Get TF-A from https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git/ and
 checkout version v2.7::
 
   make PLAT=imx8mp bl31
-  cp build/imx8mp/release/bl31.bin ${barebox_srctree}/imx8mp-bl31.bin
+  cp build/imx8mp/release/bl31.bin ${barebox_srctree}/firmware/imx8mp-bl31.bin
 
 .. warning:: It is important to use a version >= v2.7 else your system
    might not boot.
-- 
2.35.3



