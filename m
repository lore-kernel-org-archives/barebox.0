Delivery-date: Mon, 23 May 2022 10:06:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt35T-006HfH-H5
	for lore@lore.pengutronix.de; Mon, 23 May 2022 10:06:47 +0200
Received: from [2607:7c80:54:3::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt35Q-0000Hm-EG
	for lore@pengutronix.de; Mon, 23 May 2022 10:06:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6VyZR9lcMAif0YoY4MnO732ZYHmQEF/pVMLPuIUzZY=; b=uLulleqpMQkdiU
	xDp97YZlVcav/0cEsPTGZnMBy0kpLGZObKUjt6XUGMtkdGUDcRn5p7q158mwhsfZhb7SZ7RhuVB/4
	OqONltPoBjpSjUsYp5l7BcTIfOp83sLSGpWZ3uyTdswr4o4abAofDsNVaA3vWNs0i1htL9RomWRrb
	b5OPvxTYsJfc5JUi2Y/IISokF6unZUdOcjrs+nwP7rQp3O+VMne9osAxpgqegJHjP4uKm80ZfTwMJ
	W4FYqFaXcVNpA8Z0+bZ8FMoyDMp+2fDQZ7OQ8OxnQWK0dIWwVTVc5rzrYsioXPK6d0iKQ/pUykjwM
	MaLW80SpBWNdsy2EI+dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt331-002Gsn-Ri; Mon, 23 May 2022 08:04:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt2o5-002AAA-QB
 for barebox@bombadil.infradead.org; Mon, 23 May 2022 07:48:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=ga8Tj1sCPxPTbGgPuwZtjfYhHf0P/qGNeMNLCQfDI5E=; b=LIgHJmzxyJVMoAKO4LuzO7MyGG
 aYMiX3QCg+TGqRt6nnws01NiL7MC6NXA9rsO2b07fGT1QHY0tcOscZByvDt+5XtgPrSTNtS2pgK3o
 3HJbzTAIz7H6HDrAA81OMECWTghsECo0QtQjtnIxVxKrdVN4tor3LNYe7M/P5VJ4qkz80LcKObzFG
 x0t0dak6m+V2mzSe3VPf3u+W5CRPDZ0KNIaSVvNC566mWuoCQqjtqvU9gDM8Sp7wX3gx/AUvdHTkf
 vF+IG0UQeLO3iNHJ4omwEAr7EmiBt95SX3aCPVZqm0ZBFT+bsTCzSasr33hJYWNVcI8c/0uiZbz7M
 2NgVnS2Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt1c9-000tdm-6P
 for barebox@lists.infradead.org; Mon, 23 May 2022 06:32:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nt1Xr-0005DK-Dx; Mon, 23 May 2022 08:27:59 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nt1Xs-0041tf-3X; Mon, 23 May 2022 08:27:58 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nt1Xp-003FPD-Iz; Mon, 23 May 2022 08:27:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: j.martin@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 May 2022 08:27:56 +0200
Message-Id: <20220523062756.774153-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220523062756.774153-1-a.fatoum@pengutronix.de>
References: <20220523062756.774153-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_073225_737840_231323B6 
X-CRM114-Status: GOOD (  13.02  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:3::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:3::133
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] tlsf: fix internal overflow trying to allocate big
 buffers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The function adjust_request_size() has an unhandled failure mode:
If aligning a buffer up overflows SIZE_MAX, it will compute a way to
short buffer instead of propagating an error. Fix this by returning
0 in this case and checking for 0 whereever the function is called.

0 is a safe choice for an error code, because the function returns
at least block_size_min on success and 0 was already an error code
(that was just never handled).

Reported-by: Jonas Martin <j.martin@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/tlsf.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index 520cce496ef6..3ca58e3abbfb 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -313,7 +313,7 @@ static size_t adjust_request_size(size_t size, size_t align)
 		const size_t aligned = align_up(size, align);
 
 		/* aligned sized must not exceed block_size_max or we'll go out of bounds on sl_bitmap */
-		if (aligned < block_size_max)
+		if (aligned >= size && aligned < block_size_max)
 		{
 			adjust = tlsf_max(aligned, block_size_min);
 		}
@@ -942,7 +942,12 @@ void* tlsf_malloc(tlsf_t tlsf, size_t size)
 {
 	control_t* control = tlsf_cast(control_t*, tlsf);
 	const size_t adjust = adjust_request_size(size, ALIGN_SIZE);
-	block_header_t* block = block_locate_free(control, adjust);
+	block_header_t* block;
+
+	if (!adjust)
+		return NULL;
+
+	block = block_locate_free(control, adjust);
 
 	return block_prepare_used(control, block, adjust, size);
 }
@@ -969,7 +974,12 @@ void* tlsf_memalign(tlsf_t tlsf, size_t align, size_t size)
 	*/
 	const size_t aligned_size = (adjust && align > ALIGN_SIZE) ? size_with_gap : adjust;
 
-	block_header_t* block = block_locate_free(control, aligned_size);
+	block_header_t* block;
+
+	if (!adjust || !size_with_gap)
+		return NULL;
+
+	block = block_locate_free(control, aligned_size);
 
 	/* This can't be a static assert. */
 	tlsf_assert(sizeof(block_header_t) == block_size_min + block_header_overhead);
@@ -1059,6 +1069,9 @@ void* tlsf_realloc(tlsf_t tlsf, void* ptr, size_t size)
 
 		tlsf_assert(!block_is_free(block) && "block already marked as free");
 
+		if (!adjust)
+			return NULL;
+
 		/*
 		** If the next block is used, or when combined with the current
 		** block, does not offer enough space, we must reallocate and copy.
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

