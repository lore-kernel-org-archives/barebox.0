Delivery-date: Thu, 16 May 2024 09:09:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7VEp-00GuUk-1y
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 09:09:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7VEm-0006UF-Kr
	for lore@pengutronix.de; Thu, 16 May 2024 09:09:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vjZYteZp/nldBrZjakkwBU7P8OEmu6yir+5GNY07urY=; b=O7SOo4axraqx9g+U3kxIHBIHci
	oX+L+QLzR7lEFgMkJO1MZUu3mstDkFY1V5EOFfrLuGxVfp32AAkqT30i07QRpjSCoc05B44rYE3c6
	4pMiWxqyInMlgT9ioEdGaVtSD4Zszby9eVpFSXdOvRZZ/GUsNp+O4GCExftTzVlpxpI0bh1VjvpFF
	TGHKANufX0HAzF36jPBRv6gKPCTsHBjS9BddrDdg+qOue7j4R5TVIoZ2GD+6MjrbswhQ5pMkSPSUd
	2mQdLLUzPdWK0s+MY+jHHkqqoBPciiiX03XgHMwqmQHStNT7d4cc+jByBVfP1ivq5Q4eTUO3KKOz8
	TxwlCctw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7VEC-00000003wQO-2txp;
	Thu, 16 May 2024 07:08:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7VE4-00000003wLi-0guE
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 07:08:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VE0-00062N-4S; Thu, 16 May 2024 09:08:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VDz-001fTD-Nu; Thu, 16 May 2024 09:08:23 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VDz-00BWfZ-23;
	Thu, 16 May 2024 09:08:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 16 May 2024 09:08:21 +0200
Message-Id: <20240516070822.2746845-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240516070822.2746845-1-s.hauer@pengutronix.de>
References: <20240516070822.2746845-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_000828_314459_A2BE0345 
X-CRM114-Status: GOOD (  10.14  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] commands: findmnt: use cdev_open_by_name()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

cdev_by_name() returns a cdev without increasing its reference count. In
order to maintain a proper reference counting use cdev_open_by_name()
instead and make sure it's closed afterwards when no longer needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/findmnt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/commands/findmnt.c b/commands/findmnt.c
index da8f58835f..3c9a520b85 100644
--- a/commands/findmnt.c
+++ b/commands/findmnt.c
@@ -71,7 +71,7 @@ static int do_findmnt(int argc, char *argv[])
 			const char *backingstore;
 			struct cdev *cdev;
 
-			cdev = cdev_by_name(devpath_to_name(device));
+			cdev = cdev_open_by_name(devpath_to_name(device), O_RDONLY);
 			if (!cdev)
 				continue;
 
@@ -82,6 +82,7 @@ static int do_findmnt(int argc, char *argv[])
 				print_header(&header_printed);
 				report_findmnt(target);
 			}
+			cdev_close(cdev);
 		}
 	}
 
-- 
2.39.2



