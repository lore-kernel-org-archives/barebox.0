Delivery-date: Mon, 14 Jun 2021 00:30:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lsYch-0002bu-Df
	for lore@lore.pengutronix.de; Mon, 14 Jun 2021 00:30:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lsYcg-0001wv-H9
	for lore@pengutronix.de; Mon, 14 Jun 2021 00:30:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jYdxpMMGLdEN9vBrKuQHOwynkUU2Fac/p1Ktf92uppU=; b=QC2Rjr7R3VW1c7
	43gaTyWrMgOMLmLiP8k+mmA7EhVvBTpA0FOqC8U5flEtqdREEHPaHHJaZXnhRTXB/LkGZE1VFgHfP
	Z3qL1C3gA7N8+7wu2p5O4SXv4Ya5WLIsDEf0HgPbWg53XJciufnX+C+IXLJd/hYf2q/nCrQGISndC
	MXTfV63+iVDjEo9mjo9g42v/TKrX7JIIR5X2ci2RIJoo+VaAT8234LMud+PDH1PnuStu+ot5BpyOo
	MLbtydLDo7Ds+07ZpU5X52OYu3sIuLbZaN4SrnPTqZSVbxwi+dSZCnyOtU7mj1J5Q/UN+Xkjgt5AI
	5Loubw6KIxAx1J9lHteg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsYbS-00BUc8-Vz; Sun, 13 Jun 2021 22:29:15 +0000
Received: from vmse01.mailcluster.com.au ([2401:fc00:2:13f::6])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsYbL-00BUVO-2y
 for barebox@lists.infradead.org; Sun, 13 Jun 2021 22:29:08 +0000
Received: from vmcp03.web-servers.com.au ([116.90.56.28])
 by vmse01.mailcluster.com.au with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marc@cpdesign.com.au>)
 id 1lsYaL-00058K-Ve
 for barebox@lists.infradead.org; Mon, 14 Jun 2021 08:28:15 +1000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=cpdesign.com.au; s=default; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4/Me48j8kNsoMWNWvVtYWZQZrEzpYWRzAzC65ajJbx8=; b=Sw6otbqOEiv+3o2EYx1q8WDkfT
 6hmOzWtXjGTQT3OKTvA15AMBUNELfmsTt4h/+ulDxXAiFwF1rtgifs2kqGTrbN3ks/E9mO5+30NKL
 qQtv3kUPWP6htp61PpQ3TLTnrTeIMy9eG9+YiIBJd6Rc37Q5w6sq5hzBNj2VsCu2jw/kUXWEdpedx
 cbFwczZBMe2QLKipdeyNKH8fUzujaIms8GGbF4YDQKOrzK5abMBA+Eq+o36Ev8v7flhY+5BkGtbeP
 UK4+OIZNdcyOfPhLC8rA4Pmxy10ssDaigsuOIhNuO+K1CBrK2hdIkGLr6cDrKupvpG3ndkLTq7sM+
 aH7Dsa9A==;
Received: from 60-242-242-93.static.tpgi.com.au ([60.242.242.93]:52578
 helo=linux.local)
 by vmcp03.web-servers.com.au with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <marc@cpdesign.com.au>)
 id 1lsYZZ-00Fwoa-S2; Mon, 14 Jun 2021 08:27:17 +1000
From: Marc Reilly <marc@cpdesign.com.au>
To: barebox@lists.infradead.org
Date: Mon, 14 Jun 2021 08:26:36 +1000
Message-Id: <20210613222639.13190-1-marc@cpdesign.com.au>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Authenticated-User: marc@cpdesign.com.au
X-Authenticator: dovecot_plain
X-Originating-IP: 116.90.56.28
X-SpamExperts-Domain: panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Username: 116.90.56.28
Authentication-Results: mailcluster.com.au; auth=pass
 smtp.auth=116.90.56.28@panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.01)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT+Ok1RULMClHm7/aAv3qgF4PUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5zzRQC/PIR0ZeIYukWs6zeuXFWCX8oNdggW7HE9XDTdSavp
 k7Vp2UXVHEQMIct0liKDBl0yavj2ELRCGoHdhiquswKQDamPN66SYe4XX4xmgJvmHZIaOCPnuqIf
 UsnKQndaIN+MTJ88TTpoG8fQ5knApuGXed8VjoeeEKguXydrkRh+lS1IZOmkeVqtBBDwWUaGKpfT
 IF8fSxNC0LttVkKWCvX50FqPnOjxx3ysNl11MvsDcLC0U2KR6OWH3DJPpNlNxaypTbp28NxghjNo
 pU/Oaqj4KISIRSJ5MfjE8OaunZEyYYf7TmlI3iEcqXK4A61ChHMQHCMEWTX9HEhwSP4/MSl+mev0
 M9cO0xP2892D0Uv5/hXXQF+f2WAemEBBH0NsVeB41VPmQWlT6X4HxPATUHn+gnmsNLchHhymY5JU
 63hy/sIYQHSrltYx0aSLXraWI9Hfbk2V6Si1LAtE8G+At7lfBxMo7ZYPIM8LGtwRU7//0qljMckk
 ipEhs0fF+lrm+ifPs2yIXVaS7j1CpD4sbMC/K6klzbRMjzrXH/SDfWiH1Wgh6RAenBR+licROGa2
 y7RIACgYjJZuZM6wBXM782kDy537ciJIrbP3wi1dyJZNrNJoSO0VY2N1QBafT1ESpE1sG6Z94/Ge
 Q0UKItQafpoooFY4M7RjQ1QYeOer6qdM2kmVq603aW6BgyLXzkUCzsKWYWuwCKXNznpmdv1dr1sQ
 za9mle7ev8IXG78l81nBVGLnTSkhP+UMfpx5k0cIcEzBS9XWuA2AJ7ruQe/xdxE1HNlbIAOwWm9U
 lm0UI1FfEoXm0/FPF8PR0w363lk4pUScEZHFruLkqAqUpQ92YnNGFdRN3CtPPBjSHkIxZRCWOxjY
 AJtzLXrvWkpeAoeqbx9cPcGR31mI6M1Ucaz2oSyaA1TzQpMNBxbB7RLiYIrYRweYGhtvVN66c5GC
 nah0CDG0r+34QtTJiEdfiY7uePQ44lqMDpyryPGheI8wLqPdSBUkH1KMRs8VVbvpdorZT2Gmbldn
 DEeqRkf38YRFrK8flN6a4n79d1I47GmMvA==
X-Report-Abuse-To: spam@vmse01.mailcluster.com.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210613_152907_185815_216ED3F5 
X-CRM114-Status: UNSURE (   7.90  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] common: boot: don't return too early in bootscript dryrun
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

A dryrun boot will now run the boot script and a then a
dryrun of the bootm.

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 common/boot.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/boot.c b/common/boot.c
index 07b67734d..183e6bb43 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -77,7 +77,6 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 
 	if (dryrun) {
 		printf("Would run %s\n", bs->scriptpath);
-		return 0;
 	}
 
 	globalvar_add_simple("linux.bootargs.dyn.ip", NULL);
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

