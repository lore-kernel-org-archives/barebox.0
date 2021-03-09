Delivery-date: Tue, 09 Mar 2021 23:41:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJl2u-0000cj-Pd
	for lore@lore.pengutronix.de; Tue, 09 Mar 2021 23:41:44 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJl2q-0008Pt-F0
	for lore@pengutronix.de; Tue, 09 Mar 2021 23:41:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/9bfLYZPWUfgJUo4oOLdcNlGJ6FuKD9k//gsmdMOOsk=; b=XPOgs9YDMrA9Nld/8ZQIjsA3A
	bY5yryQpGBB5mVjAdVPU7CXX0IyDP9/RKG4bynsD7HYEzBYHhXLgKqRvnhapVQa1sJ9T6Y8da/VwH
	dRJWV1xye1gJlJ7yeaib5vLZ9igJ67E4/u89x0/A6c7CgjoGPKVS3unwu7UW2Mh+sxbZB2JuZ7yFw
	XnT5lBPUT21hCJvme/4SeuO9TeT03IQFINWQlFFD97VnyVJQ745nvzmCooW9aAX+LGAQ6kSVK9Cu1
	Sbp6zDMjSItp0Nq85igDjF177rQY+UucHJR5vkW6jvjz8xDTd0RrYvs30dDNVgBASvy/BXjhHoPhq
	8e9eIx/lA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJl1I-005aZm-4j; Tue, 09 Mar 2021 22:40:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJl14-005aYm-9h
 for barebox@lists.infradead.org; Tue, 09 Mar 2021 22:39:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1lJl11-00085R-7s; Tue, 09 Mar 2021 23:39:47 +0100
Received: from rhi by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1lJl10-0006Fd-Vv; Tue, 09 Mar 2021 23:39:46 +0100
From: Roland Hieber <rhi@pengutronix.de>
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Tue,  9 Mar 2021 23:39:33 +0100
Message-Id: <20210309223932.23967-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210308193214.32573-2-a.fatoum@pengutronix.de>
References: <20210308193214.32573-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210309_223950_843189_06726B25 
X-CRM114-Status: UNSURE (   8.25  )
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
Content-Type: multipart/mixed; boundary="===============2303835277929549518=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PP_MIME_FAKE_ASCII_TEXT,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] doc: qemu-virt64: fix reST literal block syntax
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

--===============2303835277929549518==
Content-Transfer-Encoding: 8bit

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
While we're at it… :-)

 Documentation/boards/aarch64-qemu-virt.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/boards/aarch64-qemu-virt.rst b/Documentation/boards/aarch64-qemu-virt.rst
index cadc4e5543c1..42e7d00bfef6 100644
--- a/Documentation/boards/aarch64-qemu-virt.rst
+++ b/Documentation/boards/aarch64-qemu-virt.rst
@@ -8,6 +8,7 @@ Running barebox on QEMU aarch64 virt machine
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
 Usage::
+
 	$ qemu-system-aarch64 -m 2048M \
 		-cpu cortex-a57 -machine virt \
 		-display none -serial stdio \
-- 
2.29.2



--===============2303835277929549518==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2303835277929549518==--

