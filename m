Delivery-date: Tue, 07 Sep 2021 14:47:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNaVg-0006mo-E4
	for lore@lore.pengutronix.de; Tue, 07 Sep 2021 14:47:32 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNaVf-0007Ri-Fg
	for lore@pengutronix.de; Tue, 07 Sep 2021 14:47:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9v40EddNxu8CSSy+RL2md3m+vDr6GY95QLyIhgsMwl8=; b=nIbzqs5s7iiP1d
	l6iUdSBa+X/sGsCkg4jGvZ/1jnWmL/gzj+eZEw1eE9uIJakN0LDAPO1vJYWLIaC+sRfTABqmobibn
	Am/WcVcitT/FB1/3VJvO7ubFYx9qO2KnLtpCFHpWAoGUNHhZ3M8hzywOlNamtlq8t1j0X4a1r4qV/
	24Mu7XvegsXv66ayduJURoQJvUP/ZAG2Zlm2QtREsJ4llWfFOBqj5yEke96rn24OvqpfPtb3j2kSf
	8ZXGxTuIuGORsievPMsrH0u4RccCw/2Y8++Yo6pxULWRnwcb2b5Kew9jrc5Erp9ZcoJG4p0U7lzbL
	WC9mkfI//1JfKxNTjBZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNaTx-003iTs-7X; Tue, 07 Sep 2021 12:45:45 +0000
Received: from smtpout140.security-mail.net ([85.31.212.145]
 helo=fx405.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNaTq-003iSF-UU
 for barebox@lists.infradead.org; Tue, 07 Sep 2021 12:45:40 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx405.security-mail.net (Postfix) with ESMTP id 9846D323606
 for <barebox@lists.infradead.org>; Tue,  7 Sep 2021 14:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1631018727;
 bh=blQM6HWUpxucl8KdwyanPuqdSCJDXWm4z6IosHFgFjI=;
 h=From:To:Cc:Subject:Date;
 b=BEOY0eRGlwMOip3eBNyCujP0q7AYu/hn/1IlCKm9OHt2tWgYdDafPONQmq6ASb4mu
 pzFFwCFp+iJMyFRmInXXd0gxbZUTFAm7EIUkeVQvvjpOUyXagrP3EO96eW2S3uypV6
 ss9yTlzgn/5tbqexxr4Yo4ubAt99LhRoXctHqcMg=
Received: from fx405 (localhost [127.0.0.1])
 by fx405.security-mail.net (Postfix) with ESMTP id 363FE3235EF
 for <barebox@lists.infradead.org>; Tue,  7 Sep 2021 14:45:27 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <2a1b.61375ee6.cfbe4.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx405.security-mail.net (Postfix) with ESMTPS id D1D093235B2
 for <barebox@lists.infradead.org>; Tue,  7 Sep 2021 14:45:26 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id B986827E02DE;
 Tue,  7 Sep 2021 14:45:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id A497C27E02DB;
 Tue,  7 Sep 2021 14:45:26 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu A497C27E02DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1631018726;
 bh=1bvm6JCqeNX+kn8s7hVzOJ27l1P3SsSgFaH+Epq5jyA=;
 h=From:To:Date:Message-Id;
 b=TbenZdbd1qQ75j37iPi5HqvYVbRWwxKHlPYRnQXjSHU1K9qJg6NgLpWQVJ9PQJg2h
 WnD8Lw65R+NQS3FHPMZW6Hc0pdiO/t7t6mUF3dB08WWVeHBHX/5uOKBcij575ceUKl
 eixi4IALzhqWuWm2gcFwlUARYSQY+WoPV1vV8MoI=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 05xnnVIMcphg; Tue,  7 Sep 2021 14:45:26 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 8A77227E02DA;
 Tue,  7 Sep 2021 14:45:26 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue,  7 Sep 2021 14:45:20 +0200
Message-Id: <20210907124520.24581-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_054539_219454_41D104F0 
X-CRM114-Status: UNSURE (   5.64  )
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
X-Spam-Status: No, score=-2.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH] common: Select CRC32 dependency for DEFAULT_ENVIRONMENT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The DEFAULT_ENVIRONMENT config enable the compilation of envfs-core.c
which depends on CRC32.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index a9feae2ae8..c19c693580 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -842,6 +842,7 @@ config ENV_HANDLING
 	  startup) will bring them back. If unsure, say yes.
 
 config DEFAULT_ENVIRONMENT
+	select CRC32
 	bool
 	default y if ENV_HANDLING
 	prompt "Compile in default environment"
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

