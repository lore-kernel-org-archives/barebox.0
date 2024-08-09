Delivery-date: Fri, 09 Aug 2024 16:25:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQYV-007rYt-2d
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:25:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQYV-0000Lc-3v
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:25:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=atzGAHp4XGhhxiyZq1CbAoJ11cROrUk0+PAnYpmCAok=; b=FS42ox27mgHnrmE4dzDpVM+R1J
	DdeE5j/9vnAmmelxgeOT0QASIhZyaXplBLeU1vzuMk7zs6g93ki7xpy/ISqRmYiYlSjCTOkr3FHpn
	DwxyrfC9hmYzmcSG1vxw0SeoO3wbZoJnqRRE6P53SQk3/Ami2U18dbY9LvZasB9w8lmi7EH87pn9m
	DPqC+3VPgQT3QEwOolf4xZycSCRUSiUyhBK+zGhQG0Ah65BleIU0Ju0AAi0aQi4xEM8YPQqLXM6Ab
	W6WzzfqDkDVXcUA5sTPP/08hnftjcvuGGgQq7WlIbS2PEp5bhJrma4mI2mrxKYgqDHnyo1cSiAddZ
	V50vkuqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQY8-0000000BWuK-3l14;
	Fri, 09 Aug 2024 14:25:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQY4-0000000BWqc-1uc6
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:24:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXu-0008MF-Ph; Fri, 09 Aug 2024 16:24:46 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXu-005gf8-02; Fri, 09 Aug 2024 16:24:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXt-001KDU-2v;
	Fri, 09 Aug 2024 16:24:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2024 16:24:43 +0200
Message-Id: <20240809142444.316021-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240809142444.316021-1-a.fatoum@pengutronix.de>
References: <20240809142444.316021-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_072456_647479_879A8E28 
X-CRM114-Status: GOOD (  13.24  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] Documentation: user: intro: add more info about mailing list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't actually list the mailing list address, just a link to
mailman.

The link to the Linux kernel patch submission guide should also be
located here and not only in the README.

Finally, a reference to the Github Actions is also appropriate.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/introduction.rst | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/Documentation/user/introduction.rst b/Documentation/user/introduction.rst
index 63a4c29cba67..d68b57e50333 100644
--- a/Documentation/user/introduction.rst
+++ b/Documentation/user/introduction.rst
@@ -21,7 +21,8 @@ Feedback
 --------
 
 For sending patches, asking for help and giving general feedback you are
-always welcome to write an e-mail to the barebox mailing list. Most of the
+always welcome to write an e-mail to the barebox mailing list at
+<mailto:barebox@lists.infradead.org>. Most of the
 discussion of barebox takes place here:
 
 http://lists.infradead.org/mailman/listinfo/barebox/
@@ -29,10 +30,18 @@ http://lists.infradead.org/mailman/listinfo/barebox/
 Mails sent to the barebox mailing list are archived on
 `lore.barebox.org <https://lore.barebox.org/barebox/>`_.
 
+barebox uses a similar patch process as the Linux kernel, so most of the
+`Linux guide for submitting patches <https://www.kernel.org/doc/html/latest/process/submitting-patches.html>`_
+also applies to barebox, except forthe need to select your recipient;
+all barebox patches go to the same list.
+
 Patch series sent there can be applied with `b4 <https://pypi.org/project/b4/>`_ ::
 
    git config b4.midmask https://lore.barebox.org/%s
    git config b4.linkmask https://lore.barebox.org/%s
    b4 shazam -M https://lore.barebox.org/$messageid # replace with link
 
+CI tests are executed by Github Actions an be used by forking
+`the project on Github <https://github.com/barebox/barebox>`.
+
 There's also an IRC channel: #barebox on Libera Chat
-- 
2.39.2



