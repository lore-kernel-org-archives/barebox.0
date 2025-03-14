Delivery-date: Fri, 14 Mar 2025 22:19:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ttCR0-00EAKe-1D
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 22:19:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ttCQz-0001bn-8w
	for lore@pengutronix.de; Fri, 14 Mar 2025 22:19:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XhiibWibVpJJAvyoDlZyNGHBtfmrXmFt6VZS9lpcgbo=; b=FGsYVtd2qAAIhCbvkxUn3FXdVR
	CpnbtOX5wi+gu8riGKljjuR27sE/mus5bx/o9888ADd3ZQTYvU0mGLpao/pBF/kdo8qmyoxMcSnZ7
	KaRcKlIzibh0px7FS10ZHFufSsNg4P8sgeorRXf4RxJcJrNbkYWPNrV6GZcs7zV8pEyrkhAAzlgsu
	DXz4gx6S6KOHjiyRZnY0khGqFBX3a5VgewMOIXFPj880KFOG6z7SZc44rPt7MV4oWw7mz8uUUrV+1
	wv8gVe9DKEngBMsUNzpp12mhyQYO2JbExNT6vrVkCIvpHcWSMMpIwKUEbJqYX24WBElCAXScS7R7y
	p2Ff8wlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ttCQX-0000000FIaa-0Hx4;
	Fri, 14 Mar 2025 21:18:45 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ttCQU-0000000FIa8-2a89
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 21:18:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741987120;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XhiibWibVpJJAvyoDlZyNGHBtfmrXmFt6VZS9lpcgbo=;
	b=i+kRsbkOFnqVmHD9wDrAOwm0m5KWM2KHP6GIz/FBS+przsmtsRy9YJp1ekbtzON/5qoD9f
	0vkId3oxPbb2YqzuBBnv6hBFuzAzomtXDxS8h4ny947KhSqpCefCW9iUw8kHoKYNc3URZ7
	J2nmaEbj3RH9XdtxwqvGnjtFFb/uPfnDpRAJYKijcvQLNKOkEDq2oDknWSaepOQF/UTDPT
	es4BshWu2LaANdjlLLiieppVpY2q6C28G8RRMATc3uGjtRgMKNc8O/C0f9TCZOqGIzRM7P
	lzlmjwayIzPaSurWajCif7/MzlkSJy7E1GD9OxxhwHrzWutdm4EP4Njof+5bAQ==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 83f6268c (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 22:18:40 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 22:18:30 +0100
Message-ID: <20250314211830.24629-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250314205321.16898-1-jmaselbas@zdiv.net>
References: <20250314205321.16898-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_141842_954830_0282FFE1 
X-CRM114-Status: UNSURE (   6.40  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! treewide: use fallthrough pseudo keyword in switches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 commands/edit.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/edit.c b/commands/edit.c
index eda277d218..fcf8ad90f5 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -453,6 +453,7 @@ static int read_modal_key(bool is_modal)
 			return CTL_CH('d');
 		if (c == 'Q')
 			return CTL_CH('c');
+		fallthrough;
 	default:
 		statusbar("ERROR: not implemented");
 		break;
-- 
2.48.1



