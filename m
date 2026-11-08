Delivery-date: Sun, 08 Nov 2026 21:16:48 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQ9Jn-008mzf-34
	for lore@lore.pengutronix.de;
	Sun, 08 Nov 2026 21:16:48 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2AA11201693
	for <lore@pengutronix.de>; Sun, 08 Nov 2026 21:16:48 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=njGtrUMa;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794169008;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=+ze2105jP0w7ylE4P7l3bJ77PRVW73W+o6dvRsVvr/Q=;
	b=ZeQZqqK0P5Z+FSl8Y3TUOi0vWnUr84+omP3t0p8eu6j50/8gFZBhfuGWdcfoPTvXOi7qgy
	zLKX0nd/VlAoaSQHc6IUa6R+WNDACOZeMRVDCXEKlDeH5ltFYJxAXErXy/NHpOf+stWLhJ
	4XQOJvXKlVYow8VTiOyDKmgrzMax653sDYeJRoQRNd8c3ktc62R0bCnknbImXcoaqtPHYJ
	DhEjow2uAbzM3FC1HYHYbdk7X4+EonrlTXUphYAGbQiowKU0htQPPwN8HVozmlhQVd1m9Y
	/m3ud+bW00oFaoCBLQwnJa+3as978a7z16jwttPgf7XfKltebrLlCSK5jy9FZQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=njGtrUMa;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794169008; a=rsa-sha256;
	cv=none;
	b=Cyj2o90/5xpqnCwQO7OYhkcoUx9Q5Ca8/UCFEGZfdWfYnkBhsEm+GTwq8GZWFiAZCD2Rsk
	jzcVoLGT9ILrscG4FO4pBz932O/F8u05w/Zw5UJOq1gtNwR56XttTv7M84OkaaLcCIwEV6
	I9ssEhngvL8dpAJD4/lD6BdJUYwsnFvoPg4vLRXKH0HWeQ6fpGsn1nrGIM5p8n8no3gx7H
	fk9pERtEeXAWMSoSwQJqpwFAJXdlTPeXOciUXOS4o/mDqWftboFZJwYO35JD4yEQRXJ6oG
	Jna6TR6FayfDDzGbfk0OIowXNyiKlj5De7WjjXrFQzCRtNdukLqTJ2PoFXz0uA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=+ze2105jP0w7ylE4P7l3bJ77PRVW73W+o6dvRsVvr/Q=; b=njGtrUMaqEAHc3fQoJJQmMEW3O
	ishUAROeAl3PVBEhT/FdsoSHh6sV0h20Xv6KjdMNknqt6gVsjRovqO8oh+am0kc+urgXR+wu+ctxP
	95dzlTVRdCHxpkjxO7cYsqU6Ty3T9H3c9/mdewm9/UYREmGj/0GvVQpZ6Igt3vpaqL5WGS7Aba9P/
	YhogjJnEkdhYMvU4vQ2pdTmBSxGrGTqoM6DdsiAelA2qXZlXnLUFa0U6xFe8xzy5h7jc/8SXrDWKp
	psUzPrHcsi7rg9QVgn6zO1VqfvMDW7Jby6sYGkk4ZT6V+Bt0qJbzUnEu3gUmFK5ieI9I+Tu1GU0o3
	f7bcjGLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ9IY-0000000GYqu-27yA;
	Sun, 08 Nov 2026 20:15:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ9IV-0000000GYq7-0sY1
	for barebox@lists.infradead.org;
	Sun, 08 Nov 2026 20:15:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xQ9IS-0001mn-RA; Sun, 08 Nov 2026 21:15:24 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] FIP: don't free the buffer twice when parsing fails
Date: Sun,  8 Nov 2026 21:15:23 +0100
Message-ID: <20261108201524.1400939-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_121527_279854_1EB917AE 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  fip_do_parse_buf() hands the buffer to the fip_state before
    it checks anything, so fip_free() frees it. fip_parse() freed it on a parse
    error as well, and fiptool and the bootm handler call fip_free() [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 2AA11201693
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: tz3zccw6kgs7m44dw7k9sr56no8a7auw

fip_do_parse_buf() hands the buffer to the fip_state before it checks
anything, so fip_free() frees it. fip_parse() freed it on a parse error
as well, and fiptool and the bootm handler call fip_free() afterwards,
which trips over the double free:

  !block_is_free(block) && "block already marked as free"common/tlsf.c 1069

Let's leave freeing the buffer to fip_free().

Fixes: 47d995141515 ("fip: fix wrong function call")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 lib/fip.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/lib/fip.c b/lib/fip.c
index 9470aa5d3398..7aca217532c5 100644
--- a/lib/fip.c
+++ b/lib/fip.c
@@ -277,12 +277,7 @@ int fip_parse(struct fip_state *fip,
 		return ret;
 	}
 
-	ret = fip_do_parse_buf(fip, buf, size, toc_header_out);
-
-	if (ret)
-		free(buf);
-
-	return ret;
+	return fip_do_parse_buf(fip, buf, size, toc_header_out);
 }
 
 static struct fip_image *fip_read_image_from_file(const uuid_t *uuid, const char *filename)
-- 
2.47.3



