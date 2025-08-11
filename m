Delivery-date: Mon, 11 Aug 2025 14:30:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfG-009Khy-2U
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRez-000615-5N
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1oe0oNK0PpwMkozO7hpIVMQnJ3AK3jo47MwKwOJTRkM=; b=nqHldpWD55MIlBUQ+u0WVFlN/A
	+eLbHHEck59b1l6CevUORaaknuCSrLGcXgiA9g4F0d6gZEq3UqXiCIn9/KXzyqkteK4q4ULgMrzYm
	VJCtBYTHMPnt/omAc2vRoEbrAgADg8+VrFlMulK+RsBBPxSQwqp8kqB+v/tTx9k7gVkaLKaAlksdp
	89ydxCemh4lVoM4HHcQRuyHi1hdDBXDQ2xsZTdaoJPHfOh5lW/CFzPizwB55w7e8skpuqQfAZ0nDk
	OlfGtZDcGcTBzqWgrdJplj8q9uQjRpyKUYeidkGi9pnxLB/0U0jAu8vXc7NsvscqQzvYjA25sMphn
	2BSK6WwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdz-00000007dzp-16XW;
	Mon, 11 Aug 2025 12:28:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdm-00000007dgO-01kg
	for barebox@bombadil.infradead.org;
	Mon, 11 Aug 2025 12:28:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=1oe0oNK0PpwMkozO7hpIVMQnJ3AK3jo47MwKwOJTRkM=; b=OCsWSNiQLNTcARo7BfpeluCdiw
	5QzLOe66LxMJk5V4vryUMTS4ILVgxuH3gLgPoql3g35ZIU+kAhhgSCcdnCIMwNdwlB9fuSvwlwTRj
	dMhutEUGv7JpneZipKOD/buSRMT9xGfQVO3TzE+ufBCp66BVWec6rJHr0vLahEvo1XRxCgS4Y+QPd
	LN0FTewVjuW1WMvgWDGRdSYz4D35c8rs7EuP0AjP9sxgmKSDe/Y6gma8mCEnVX3THlBLJ8GkvSTGF
	nLqmgIBEASv5eIBha5fPrBrZmcl78FCpYjiP1h6uLGd1k1ly5xRwTlCqBewHv3VaNmtNjpXzWafTP
	2lixcI8A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdi-0000000FPTh-3XEr
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdf-0004WP-Qb; Mon, 11 Aug 2025 14:28:31 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:02 +0200
Message-Id: <20250811122824.1667791-23-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_132835_100540_E2A1760A 
X-CRM114-Status: UNSURE (   7.93  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 22/44] stringlist: implement string_list_empty
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have string_list_count, but it needs to walk fully the linked
list, even if we are only interested in knowing if the list is empty or
not. Add a helper for this situation.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/stringlist.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/stringlist.h b/include/stringlist.h
index 03711ad9c7ff..9a982f2ad685 100644
--- a/include/stringlist.h
+++ b/include/stringlist.h
@@ -26,6 +26,11 @@ static inline void string_list_init(struct string_list *sl)
 	sl->str = NULL;
 }
 
+static inline size_t string_list_empty(struct string_list *sl)
+{
+	return list_empty(&sl->list);
+}
+
 static inline size_t string_list_count(struct string_list *sl)
 {
 	return list_count_nodes(&sl->list);
-- 
2.39.5



