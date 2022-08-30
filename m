Delivery-date: Tue, 30 Aug 2022 09:45:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvwU-001UVO-9r
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:45:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvwQ-0004uE-Lt
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:45:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dC09Lc6awrc8p4PgIcwSxy9dM7sbeWxoXMNwT+OLuHQ=; b=0nuabZRtLtKGXujOFmKUsW4Me5
	zPyGHaTwdfZYDwYhEwJvCjuJEMRyNtIzoxDEA7TpfSOaae1bRuhq4bzI0EjrQuYMc1llVvFYA221t
	hHZVAtAR2pUKEm6ZqHqJjcUPAVhOCzGukjeFETpJA4xgxcmYgXZreMkcJrP4z90eL3M2HMK04hCbW
	KMATHtJ1SktVMJd06VW7VrGtayoVCEfk67FYe1t2J4KxcxAPStRyhb4L14B+wmafUuXk0Rz4Hi0rw
	YxM7qTmzVRY5NBwLRmBPML9PJHLipqH+PxRYVBtev4d+EJoaZ19VTQOXRiYghNtrKCqwvnSOhNpVm
	r1fS324w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvul-00ErZI-2R; Tue, 30 Aug 2022 07:44:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqM-00EpWX-BY
	for barebox@bombadil.infradead.org; Tue, 30 Aug 2022 07:39:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description;
	bh=dC09Lc6awrc8p4PgIcwSxy9dM7sbeWxoXMNwT+OLuHQ=; b=rJAuJqbGGQsY53O8CWe3LhHX91
	zIWOX8PxTLV8UFZcWHLaJTotDa8S4jOUabsHMwyj7wR9k4McDtxRpXomOkWmyS6m+djfmmOqqLjoB
	R+LA3lk+jPeUTHnwpL2HxTsC2qnvYtpyhKzM233A+wG+ztbAVUOKYGTplZKntiY028ZKZLVfEgXV/
	6peqstHjMfeduohH1/MumuMHOTCa6qeO1ZAhSDi2btZ3oHeeehupYeBrWTfXWxCr6NFOTGvvNm4FH
	DluRZuXAEVMNY7bi2DvzmGxtR4XUvnzhr2RTM15svKtA3L1+LYx1TDlBPl/gv53JDuJTzulTwO9P/
	/dHVBuNQ==;
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqD-007m5x-4r
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:28 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cfj3806700
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845121;
	bh=dC09Lc6awrc8p4PgIcwSxy9dM7sbeWxoXMNwT+OLuHQ=; l=523;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=a4jXjy8KbkU368m74wY2DwERpV6dTnti/hw7q0CXVDesyYq50EZGva2KqJU2Kqiaa
	 YovF9sMnxluvswdNHy8rpa9oxiN35GiqoDERM/w8oxx5vPn+djoOe5FXM+akZJCFIq
	 kBqbc06iG2xnrdrIsMIB2qhaszZ+zPA5bb17x2wBqQ4uHQkYuzmG8489d3WTqiJxKe
	 7p5u4hf8i4D2Bh+5b+sc68razFWmlsLfqHJehN4142VbFjsLREbCvyMhxCjoGlOWCh
	 BhmFtXhu3svBv6kXzNQ/NY4Re8uDAIod2HgdqMJWdL/QJOh49md9M4bP/af//xJCuO
	 8/6wqD5wvr9/Q==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cOc22895729
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:25 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 3F46596D98; Tue, 30 Aug 2022 09:38:21 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cJx1772600
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:20 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpD-00BJ2f-QE;
	Tue, 30 Aug 2022 09:38:19 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:37:56 +0200
Message-Id: <20220830073816.2694734-2-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_083921_785209_EA57930F 
X-CRM114-Status: UNSURE (   9.14  )
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
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 01/21] tftp: add some 'const' annotations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index d186e7983a6d..c26204ae76e6 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -94,7 +94,7 @@ static int tftp_truncate(struct device_d *dev, FILE *f, loff_t size)
 	return 0;
 }
 
-static char *tftp_states[] = {
+static char const * const tftp_states[] = {
 	[STATE_INVALID] = "INVALID",
 	[STATE_RRQ] = "RRQ",
 	[STATE_WRQ] = "WRQ",
-- 
2.37.2



