Delivery-date: Thu, 25 Mar 2021 14:40:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPQDa-00086J-K8
	for lore@lore.pengutronix.de; Thu, 25 Mar 2021 14:40:10 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPQDZ-00088H-Lx
	for lore@pengutronix.de; Thu, 25 Mar 2021 14:40:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YQTSsIgKyQIx4g4v9EwsRijuFm/MUP8L7LIL+15zyHg=; b=kv8vDklrXxadyb+eFlPptN1Umx
	hvb4t9daRQoX4WXolIXZCOvs06zdpSiQqsn1rYtMs7ElAedNSYTvxWXGdrpo8qtnHn3TIIVhptstQ
	xUTaqcNsiW/mjkPiyinpXYml7HtbedIAOGh6g2xoEO+R/GqiF3lWZM7qffNql4uBvDN++neKoR7C5
	fdC5N0+00LKmvFjwxHhWekKdKPoCIrc8baEoseN6n7BIVN6T4oTlV4UtpfeWWYt96A2qgxtargrdq
	5fokUNE/pmKvMca00WeP+qGW+diErMGFQjv5Txq/ckReW8SQ7iYUP2ORq9Zi6V4U8lOWNaG6nE3YO
	Z2wGZ+vQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPQCc-001XVW-5B; Thu, 25 Mar 2021 13:39:10 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPQCT-001XU5-OK
 for barebox@lists.infradead.org; Thu, 25 Mar 2021 13:39:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 6018D1A540D
 for <barebox@lists.infradead.org>; Thu, 25 Mar 2021 13:39:01 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KMOX99NA
 for barebox@lists.infradead.org;
 Thu, 25 Mar 2021 13:39:01 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 3BBC11A540A
 for <barebox@lists.infradead.org>; Thu, 25 Mar 2021 13:39:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 1488227E0815
 for <barebox@lists.infradead.org>; Thu, 25 Mar 2021 14:39:01 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 25Gw1rBiYlsy; Thu, 25 Mar 2021 14:39:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id C438427E0814;
 Thu, 25 Mar 2021 14:39:00 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu C438427E0814
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1616679540;
 bh=g/jsh0jHjYYjazXr66P0BTeFWwrwKw4fm4aPC1mmL94=;
 h=From:To:Date:Message-Id;
 b=FlEV31ukTvJjJmeDXTxr8g+2zilxLijEiM7Pb6nqy6SSBwSqL5xAqYl/9Qxo+PkHg
 HDSfah8PKU4DY31R6XKDALkumgfbJwYMJ49Uer8nv+qvqaV36UoLrOJ0REBRaHhgKj
 BOv41nEnio6X+WTbaQ+QxuHsrZ/RNFCqjCUkiDGo=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id mo9vCVXa5pEy; Thu, 25 Mar 2021 14:39:00 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id A9DC127E06B0;
 Thu, 25 Mar 2021 14:39:00 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 25 Mar 2021 14:38:35 +0100
Message-Id: <20210325133837.30866-2-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210325133837.30866-1-jmaselbas@kalray.eu>
References: <20210325133837.30866-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_133902_135352_5C661EAB 
X-CRM114-Status: UNSURE (   7.91  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] clock: Update cs->cycle_last when switching clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If clocksource is free-running it might have been running for a while
before barebox started, we only care about the time spent in barebox.
We can discard the cycles accumulated before switching clocks by
updating cs->cycle_last with the cycles read for the new clock right
before switching.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 common/clock.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/common/clock.c b/common/clock.c
index 58c2964b1..e30c81a37 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -222,6 +222,12 @@ int init_clock(struct clocksource *cs)
 			return ret;
 	}
 
+	/*
+	 * If clocksource is freerunning it might have been running for a while
+	 * before barebox started, we only care about the time spent in barebox
+	 * thus we must discard the clocksource cycles up to this exact moment:
+	 */
+	cs->cycle_last = cs->read() & cs->mask;
 	current_clock = cs;
 	time_beginning = get_time_ns();
 
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

