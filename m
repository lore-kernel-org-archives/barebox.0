Delivery-date: Mon, 13 Apr 2026 09:46:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBzl-00Bdtk-1O
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 09:46:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBzk-0007Ew-S4
	for lore@pengutronix.de; Mon, 13 Apr 2026 09:46:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SNL179xe5kswu7Zhdz+HMOCM8tvW6l0bvb0IthT7EPc=; b=TBNkAqpZfQfe2nYe/smml0A+eD
	0q4uHEQwCukTa4szHiSr+0Eb7OoEs1KlItpPreNzkSR1MBedwVQWY3cwf0hus0W0Q0SZM59tKvKgD
	cWQ47Ppx7TRyoOoj0VrLsSz1b1kerpWeWOIMr5DLvj4I2+Is1VKm+U8S66DP8BrWR1EjTY9h89hYu
	5NGhe/X2VpQREo7sn0C7KPIyd4bGxSG4UvBKlhJ6yLiFDtR+j9VKlb2Ba2mcrerYhsys4O/JNzkqg
	LsswCKsLzJnHZqgiIev3bV7bza4I7JfLybouAQ7dg2yRUqQu9tW22nWsgiHV+5tI11/orPNy2aNld
	i9ypAsTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBzD-0000000FB6x-0Ebf;
	Mon, 13 Apr 2026 07:45:35 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBzB-0000000FB4m-1Oi3
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 07:45:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=SNL179xe5kswu7Zhdz+HMOCM8tvW6l0bvb0IthT7EPc=; b=uuOAVGim0YdHJxFJEIPjnos0Jy
	iQphLh2IP5GE8lAZLSNPq6QFM7vQG99zeb2vzM00QybT5VgDvabK0vtHFEoO2tV9q9IVukkeL2roI
	8CEIlLSOen3Pwzg0wrnwlaUaALsa2/sYdlrGfYtON7IXGCGxRhJhrZJL4Qu6nBOodZyO8W62tbR5n
	/1ASem7u1co/6S6lWli0Qa0ZHQFkB9pGz7wpPhna/pyefs6il1gXdzrEuJpKrpIW4fPOW00M+ocjz
	NHmPaYVAT7BoeU8aOwdm0Y7IwhV59uK7OSvFyFucPn/xzBcnJQfz2uek8z/aurZe7O5rTfIzjJE6m
	qE/oFh2A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBz6-0000000DVnh-3oft
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 07:45:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCBz3-0006tX-L2; Mon, 13 Apr 2026 09:45:25 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 09:44:46 +0200
Message-ID: <20260413074522.1410710-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413074522.1410710-1-a.fatoum@barebox.org>
References: <20260413074522.1410710-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_084529_022461_2158A0E8 
X-CRM114-Status: UNSURE (   8.06  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/7] commands: fbtest: add flush for single pattern
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The single-pattern else-branch calls gu_screen_blit() to copy the render
buffer to the framebuffer in-memory image, but never called fb_flush()
to make sure the image makes it to display RAM.

Add fb_flush(sc->info) after gu_screen_blit(), matching the cycling
path above.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/fbtest.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/fbtest.c b/commands/fbtest.c
index cee72b039371..40c97f72a442 100644
--- a/commands/fbtest.c
+++ b/commands/fbtest.c
@@ -297,6 +297,7 @@ static int do_fbtest(int argc, char *argv[])
 	} else {
 		pattern(sc, color);
 		gu_screen_blit(sc);
+		fb_flush(sc->info);
 	}
 done:
 	fb_close(sc);
-- 
2.47.3



