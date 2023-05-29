Delivery-date: Mon, 29 May 2023 02:16:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3QYa-000dI7-RN
	for lore@lore.pengutronix.de; Mon, 29 May 2023 02:16:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3QYY-0002Ux-As
	for lore@pengutronix.de; Mon, 29 May 2023 02:16:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ROzV3fB0ijVlP0cztXRXl5cXj7ez57+WhB3K7A4fsOI=; b=k7USdfm/DrauCgJ+a1xgvMK+zs
	q/1YeuqhMosFkc2gJcgHEKwZuebFAChsIFEzCTaZjNPEveqZ+r1kiqg6xs/BbQNYOOPHny7VbhUsC
	c2h8xCqQXZxi02vuPUcbhVgbCRmP/0GLdhouHFtGNtz7JDy80hugVJELIUTu+BHquBNSQ8ZDGM/1X
	Yemhn2OuWuVV3YbzdY320YI3vcKrOYMgy6GiErHThS0L1HA9ed6LQMkT1Zb8Z0pt669rGk0xIbMeL
	2wb7oS6jXGnAHS1+jn6eXpv4434HEJpLNH2/4VC05Gidz7xQ6wuIl5FV8WFPHbkahxVznMRY3bVhJ
	peNvY+hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3QXb-008iPJ-2G;
	Mon, 29 May 2023 00:15:15 +0000
Received: from vmse03.mailcluster.com.au ([2401:fc00:0:14::11])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3QXU-008iIK-2P
	for barebox@lists.infradead.org;
	Mon, 29 May 2023 00:15:10 +0000
Received: from vmcp03.web-servers.com.au ([116.90.56.28])
	by vmse03.mailcluster.com.au with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q3QWe-0008Dw-LP
	for barebox@lists.infradead.org; Mon, 29 May 2023 10:14:21 +1000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=cpdesign.com.au; s=default; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ROzV3fB0ijVlP0cztXRXl5cXj7ez57+WhB3K7A4fsOI=; b=a4ZMbu0DlWrXyonOFcVmwUQu3v
	p5AwYgksGYRQhJWievJSvIw/aNQgGyCk+IFqjP/L6ekIbJMuJLjMAaevXa9SUJp++di2gEi0csIoo
	NE+NU+FKZ9gHz2TTmqtbDKICrgR24Tbv9Dfk/AMyW4LCWJmH/eZ9xK0D3EotrVXlFZCi3raKNpt8U
	H8+0sO/xyUlMoJHSHH1ZIx2lWuhGuch1ztcffCjBBM/FdwFGsBXPaKF9GDIQJ47//YS+Amik/Zdu7
	fw+0vyDxQEh6dwSR75Zo7jDEwiMSEMhbF3miEmynaJafI4GYhAKjFp2JUxfOA33KNk/ZWxKLyx9ee
	u+WbN+cg==;
Received: from 14-201-15-102.tpgi.com.au ([14.201.15.102]:49070 helo=localhost.localdomain)
	by vmcp03.web-servers.com.au with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q3QVt-00Fcv9-1C;
	Mon, 29 May 2023 10:13:29 +1000
From: Marc Reilly <marc@cpdesign.com.au>
To: barebox@lists.infradead.org
Date: Mon, 29 May 2023 10:13:18 +1000
Message-Id: <20230529001318.12309-4-marc@cpdesign.com.au>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230529001318.12309-1-marc@cpdesign.com.au>
References: <20230529001318.12309-1-marc@cpdesign.com.au>
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
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT9WIM2L4sCrR7o6NQU7KRywPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5zzRQC/PIR0ZeIYukWs6zeuXFWCX8oNdggW7HE9XDTdSavp
 k7Vp2UXVHEQMIct0liKqTVIkIL//JN/mCZ9fuZTbswKQDamPN66SYe4XX4xmgJvmHZIaOCPnuqIf
 UsnKQndaIN+MTJ88TTpoG8fQ5knApuGXed8VjoeeEKguXydrkSpUidRDvhULdPLXIoXP6ZiGKpfT
 IF8fSxNC0LttVkKWhddHIda+F2OXJibxnCVgq/sDcLC0U2KR6OWH3DJPpNlNxaypTbp28NxghjNo
 pU/Oaqj4KISIRSJ5MfjE8OaunZEyYYf7TmlI3iEcqXK4A61ChHMQHCMEWTX9HEhwSP4/MSl+mev0
 M9cO0xP2892D0Uv5/hXXQF+f2WAemEBBH0NsVeB41VPmQWlT6X4HxPATUHn+gnmsNLchHhymY5JU
 63hy/sIYQHSrltYx0aSLXraWI9Hfbk2V6Si1LAtE8G+At7lfBxMo7ZYPIM8LGtwRU7//0qljMckk
 ipEhs0fF+lrm+ifPs2yIXVaS7j1CpD4sbMC/K6klzbRMjzrXH/SDfWiH1Wgh6RAenBR+licROGYr
 RGW77/m/7TT1ljPLYAlHIyWbgKHBxCiQO7/aNNh7kub4UnfU+gtpLlGzsuXXaxISpE1sG6Z94/Ge
 Q0UKItQafpoooFY4M7RjQ1QYeOer6qdM2kmVq603aW6BgyLXzkUCzsKWYWuwCKXNznpmdv1dr1sQ
 za9mle7ev8IXG78l81nBVGLnTSkhP+UMfpx5k0eTtW/6rDJ1JzR3RgohYv57UQ+xpZ9Q/bzPhXmE
 1otMulFfEoXm0/FPF8PR0w363lk4pUScEZHFruLkqAqUpQ92YnNGFdRN3CtPPBjSHkIxZRCWOxjY
 AJtzLXrvWkpeAoeqbx9cPcGR31mI6M1Ucaz2oSyaA1TzQpMNBxbB7RLiYIrYRweYGhtvVN66c5GC
 nah0CDG0r+34QtTJiEdfiY7uePQ44lqMDpyryPGheI8wLqPdSBUkH1KMRs8VVbvpdorZT2Gmbldn
 DEeqRkf38YRFrK8flN6a4n79d1I47GmMvA==
X-Report-Abuse-To: spam@vmse01.mailcluster.com.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230528_171508_784524_052528BF 
X-CRM114-Status: GOOD (  10.30  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/3] include: pwm: minor function doc fix for pwm_set_relative_duty_cycle()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 include/pwm.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/pwm.h b/include/pwm.h
index 643ef4d7ee..02af7d0a5f 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -71,7 +71,7 @@ unsigned int pwm_get_period(struct pwm_device *pwm);
  * @scale: scale in which @duty_cycle is expressed
  *
  * This functions converts a relative into an absolute duty cycle (expressed
- * in nanoseconds), and puts the result in state->duty_cycle.
+ * in nanoseconds), and puts the result in state->duty_ns.
  *
  * For example if you want to configure a 50% duty cycle, call:
  *
-- 
2.35.3



