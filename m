Delivery-date: Thu, 20 Mar 2025 09:31:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvBJe-001ofI-2l
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 09:31:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvBJd-0005AN-LK
	for lore@pengutronix.de; Thu, 20 Mar 2025 09:31:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uVjazMzcaHaR6h+TxtWE1MhP53qVnLIy405rTrpPht0=; b=QVDKgTkxDmDJgoZGY3sQPUZvEB
	92zAGPy01ZIEeinPwZwnMSZOcgFqqxcD0lTskXecmfwkGzAmY3Rzq2ZK96yjOUYT0IvAHkWKoVKTY
	jvx0dxZEV2sZU/DfbeIPVD9kkUY1ulUThiFqAi8ujRY2nQAW005otMYG9dcSsV5fcplcHnnL6CUHP
	fJYgKuoW4R0V6I3ty696dPzcEPrBbnsmBEsJUiYbcqGYGkkt9ONCN00fFMQ8OrXefuQxDfnNi8+Dx
	j+sUMiZGPJWh5wlQQzA1DMo9lvcwlgjoJzBeIr0ERHjrmRtqKd8LKfhivMUBYGDFV7aJ6hJuIfxN5
	CYCUjbMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvBJ1-0000000BXNV-1MPm;
	Thu, 20 Mar 2025 08:31:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvBCY-0000000BWIr-03kQ
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 08:24:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tvBCV-0003La-OC; Thu, 20 Mar 2025 09:24:27 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tvBCV-000jCG-0P;
	Thu, 20 Mar 2025 09:24:27 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tvBCV-008uiz-1U;
	Thu, 20 Mar 2025 09:24:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 09:24:25 +0100
Message-Id: <20250320082426.2124644-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_012430_058510_A6737D4E 
X-CRM114-Status: GOOD (  12.41  )
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
Subject: [PATCH master 1/2] Documentation: user: intro: update feedback section on ML
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that kernel.org also mirrors barebox, we don't require the midmask,
linkmask configuration we had before.

Adapt the docs accordingly and explain shazam -H a bit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/introduction.rst | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/Documentation/user/introduction.rst b/Documentation/user/introduction.rst
index d68b57e50333..7cd289d73e39 100644
--- a/Documentation/user/introduction.rst
+++ b/Documentation/user/introduction.rst
@@ -22,26 +22,31 @@ Feedback
 
 For sending patches, asking for help and giving general feedback you are
 always welcome to write an e-mail to the barebox mailing list at
-<mailto:barebox@lists.infradead.org>. Most of the
-discussion of barebox takes place here:
+`barebox@lists.infradead.org <mailto:barebox@lists.infradead.org>`_.
+Most of the discussion of barebox takes place here:
 
 http://lists.infradead.org/mailman/listinfo/barebox/
 
 Mails sent to the barebox mailing list are archived on
-`lore.barebox.org <https://lore.barebox.org/barebox/>`_.
+`lore.barebox.org <https://lore.barebox.org/barebox/>`_ and
+`lore.kernel.org <https://lore.kernel.org/barebox/>`_.
 
 barebox uses a similar patch process as the Linux kernel, so most of the
 `Linux guide for submitting patches <https://www.kernel.org/doc/html/latest/process/submitting-patches.html>`_
-also applies to barebox, except forthe need to select your recipient;
+also applies to barebox, except for the need to select your recipient;
 all barebox patches go to the same list.
 
-Patch series sent there can be applied with `b4 <https://pypi.org/project/b4/>`_ ::
+Patch series can be sent and fetched from the list using `b4 <https://pypi.org/project/b4/>`_ ::
 
-   git config b4.midmask https://lore.barebox.org/%s
-   git config b4.linkmask https://lore.barebox.org/%s
    b4 shazam -M https://lore.barebox.org/$messageid # replace with link
 
-CI tests are executed by Github Actions an be used by forking
+Fixes should apply on master and new features on the next branch.
+If a series fails to apply, ``b4`` can determine/guess the base
+and have ``FETCH_HEAD`` point at it::
+
+   b4 shazam -H https://lore.kernel.org/$messageid # URL can be omitted
+
+CI tests are executed by Github Actions can be used by forking
 `the project on Github <https://github.com/barebox/barebox>`.
 
 There's also an IRC channel: #barebox on Libera Chat
-- 
2.39.5



