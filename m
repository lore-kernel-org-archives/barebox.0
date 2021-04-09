Delivery-date: Fri, 09 Apr 2021 12:17:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lUoD8-0007ik-D2
	for lore@lore.pengutronix.de; Fri, 09 Apr 2021 12:17:58 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lUoD7-0003MT-Nj
	for lore@pengutronix.de; Fri, 09 Apr 2021 12:17:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mcmWh7LOYQE09sAFgxUs66Jost5XiDwLQc86TinyrOk=; b=Xm0wGEEN5hfF3Q7P83WSNc/gyq
	V8R7sYFseKOAHsnzXFRQcNLPGi+IhVFZowxh3+K8VYnc1lYJeFFCjGmKnliUEAMzNMHAkt6WB/27N
	ZbqD4hFw5sfO5yUrvEdpvvvK5ccZ/SndL5IySED3jwVHsxqGbyCsMaXhSjan+DqIIhcGrzJOhvmWm
	ccoZKHa50IvA26CeNsCcujMy5I8XO0RJbGtpUySHZpitwJhh2pqR97oAw30rSEu51m5Hy1HbER0Ve
	eS5t/uL1VY06OuFPnKhZ/n/2ZW+G19ki9jCFDck11N9J0EVblMWLQjceyGezRWTfnrt0BTosPTkQ9
	1PLRXzVg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUoCA-000NeE-AS; Fri, 09 Apr 2021 10:16:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUoC5-000NdE-80
 for barebox@lists.infradead.org; Fri, 09 Apr 2021 10:16:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1lUoC3-0003Dc-PX; Fri, 09 Apr 2021 12:16:51 +0200
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1lUoC3-00020M-FY; Fri, 09 Apr 2021 12:16:51 +0200
Date: Fri, 9 Apr 2021 12:16:51 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20210409101651.ewcntgx4hys4knio@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ulwojjqynzkwaojy"
Content-Disposition: inline
X-Mailer: git-send-email 2.29.2
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210409_111653_326769_F62B447F 
X-CRM114-Status: UNSURE (   7.88  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RESEND] doc: qemu-virt64: fix reST literal block syntax
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--ulwojjqynzkwaojy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---

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



--ulwojjqynzkwaojy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--ulwojjqynzkwaojy
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--ulwojjqynzkwaojy--


