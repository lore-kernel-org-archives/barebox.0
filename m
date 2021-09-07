Delivery-date: Tue, 07 Sep 2021 15:03:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNal5-0007MJ-O2
	for lore@lore.pengutronix.de; Tue, 07 Sep 2021 15:03:27 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNal4-0000rO-SL
	for lore@pengutronix.de; Tue, 07 Sep 2021 15:03:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/y7U5W8oLofccgRRn7k5Q3ultKNiy2WK5Kx2vVHAQw=; b=d4cAjBhSAgmb3V
	IXs5tO86E3ALTHAspue9X0aE54FBKLh9ddknHtg/fDfgDo+UBPPux7t8zM660fehDIJY5CssxJ94b
	LSeg3SjbETRF0KchbdiwHKi8dKza29X5T4rl9Dn7skQX9beT/730neR+rDzD5qbHR+ZIPSN39bQAR
	AD0jHQoW9FAmu4THQ1mwtjOmFafmF+69j2ZfH3j0qzY5fh83dfN0LldT0pDKDOWJfnl9xb5d6LDiV
	yE1XIebi1jHphkejtRydoqRf8mV3qU3O2x6ZdmznJfnS4QaDuRLr1qpFktfPtH1JFJvWsjTJ4g9WI
	DrFGhDCVEvhG/dIlUtgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNajc-003k1k-6D; Tue, 07 Sep 2021 13:01:56 +0000
Received: from mxout.security-mail.net ([85.31.212.42]
 helo=fx302.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNajU-003k0F-VO
 for barebox@lists.infradead.org; Tue, 07 Sep 2021 13:01:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx302.security-mail.net (Postfix) with ESMTP id B99553D3B575
 for <barebox@lists.infradead.org>; Tue,  7 Sep 2021 15:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1631019700;
 bh=Y0nR8IDidPpdR3o3IarEJOeuPJ81Ux8opU+hD05w9qo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=bcJuQ65skRMSn6iBE70d3f227LboTLG+PGEnKuwoJ7BAzsOqgjCNZH4DzTFF1sZW7
 0N6yZGtKgFhYSaFNnNs9WHq8VggOKnJgThsRhlZ5Aqp6V7Qu0Vbpya1ayqtgnqtFok
 8zvrxaCeCtnWjZMwcVuL079bBrK9ZU2CTIGXWBbQ=
Received: from fx302 (localhost [127.0.0.1])
 by fx302.security-mail.net (Postfix) with ESMTP id 50F423D3B55F
 for <barebox@lists.infradead.org>; Tue,  7 Sep 2021 15:01:40 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <2bfd.613762b3.b19fb.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx302.security-mail.net (Postfix) with ESMTPS id B58883D3B5AD
 for <barebox@lists.infradead.org>; Tue,  7 Sep 2021 15:01:39 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 8E7DF27E02DE;
 Tue,  7 Sep 2021 15:01:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 794F627E02DB;
 Tue,  7 Sep 2021 15:01:39 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 794F627E02DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1631019699;
 bh=F4gWVr/UlMZPOnSQKxdIlZ26TF5xgOiBD4RUVE3mucA=;
 h=From:To:Date:Message-Id;
 b=beMe6Cf7sV5S+To2U5UKUD9L2D2m/c5d0lrGNCBVP1Pcz1W/Ubge8M0ZM4HRfCq3j
 +SlYAzbdjiLR6Ddd7tyocjgAgARSMxU1pmG9myIBTGtWiMQbTFx5e/3GddXDqCqSdV
 XHD9/i9bOCc8CIXtHJ7oxpNfWa4TpZCsYLswuqys=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id fyd2skzAmU7b; Tue,  7 Sep 2021 15:01:39 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 61DB727E02DA;
 Tue,  7 Sep 2021 15:01:39 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue,  7 Sep 2021 15:01:31 +0200
Message-Id: <20210907130131.26755-2-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210907130131.26755-1-jmaselbas@kalray.eu>
References: <20210907130131.26755-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_060149_183836_683AD0FD 
X-CRM114-Status: UNSURE (   9.19  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: Typo fix in command example
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The ``make`` command is missing a closing angle bracket ``>``.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 Documentation/user/multi-image.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/multi-image.rst b/Documentation/user/multi-image.rst
index 0a7bf91a55..374b79f91b 100644
--- a/Documentation/user/multi-image.rst
+++ b/Documentation/user/multi-image.rst
@@ -51,4 +51,4 @@ generated a different entry point is selected using the ``-e`` option to ld.
 The linker will throw away all unused entry points and only keep the functions
 used by a particular entry point.
 
-The Multi Image PBL files can be disassembled with ``make <entry-function-name.pbl.S``
+The Multi Image PBL files can be disassembled with ``make <entry-function-name>.pbl.S``
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

