Delivery-date: Tue, 19 Dec 2023 13:57:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZfb-004YH9-25
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 13:57:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZfb-0007uK-3y
	for lore@pengutronix.de; Tue, 19 Dec 2023 13:57:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jt3YSXJhuu/leQ9eLQMzwKlMd40N15lTSR8ZVVm8R3M=; b=d5uzBt0IsOPKvlydjVkLH5gWI1
	XIyfwaCZQT+5p6aCzX6eY03I9svDOPh3aG1Bh1P20b7i0GYq/+xzRmcnEYuz2Au0XQeOUgz4xhDKm
	O5xmiIsD66q+EibFMYCLFKhfPuFZDBlBAiuPt1onmzG3W4u/tsclTDWdCRMU+UvbSI/dgZvUoAsG7
	wbhMWkykEIu9xf5+wBXTuxy9CetuGN3fTpJShnvp/iQ3a4dYo8oWRrQPk5UxiOVtfWZnaXVfJrt7E
	31TnnOMjy24YeIkUHUBgmvVa6lUOoUl9BX6Q8Rn1bvf9ke/7s4VFyOvsu9uUaFn78KEYdbQz4qnyW
	lO1wQp7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZeL-00E6Wq-0R;
	Tue, 19 Dec 2023 12:56:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZeG-00E6P6-1A
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 12:56:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZeB-00077D-Ve; Tue, 19 Dec 2023 13:56:31 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZeA-0001KB-CS; Tue, 19 Dec 2023 13:56:31 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZeB-0000y8-1L;
	Tue, 19 Dec 2023 13:56:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Dec 2023 13:56:25 +0100
Message-Id: <20231219125630.3684-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231219125630.3684-1-s.hauer@pengutronix.de>
References: <20231219125630.3684-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_045636_425671_EBF3AC9C 
X-CRM114-Status: GOOD (  10.04  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/6] pci: remove duplicate definition of pci_resource_start
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

pci_resource_start is defined twice. Remove the duplicate.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/pci.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/include/linux/pci.h b/include/linux/pci.h
index 98d056624f..0e907209a7 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -201,10 +201,6 @@ struct pci_driver {
 
 #define	to_pci_driver(drv) container_of(drv, struct pci_driver, driver)
 
-/* these helpers provide future and backwards compatibility
- * for accessing popular PCI BAR info */
-#define pci_resource_start(dev, bar)    ((dev)->resource[(bar)].start)
-
 /**
  * DEFINE_PCI_DEVICE_TABLE - macro used to describe a pci device table
  * @_table: device table name
-- 
2.39.2



