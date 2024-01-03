Delivery-date: Wed, 03 Jan 2024 19:35:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL65c-002O2j-2s
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:35:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL65U-0006nf-NL
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:35:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4FpmU0wcs1sOKkYSXd0t794QMnFOc+iRDny+/eNmgoo=; b=x82D71Cn7uR/y6R80nV1XEr8nI
	bBSSgtA1rRKe7o2vKng54xxdi1CGx8bmdlaUddRtiKDtaq5PSKVWP3f/vcBXeGGcQdBbm7YjjAt1R
	sqU1G/ze69mbWdoqQiEytbtWKqroTri40TqYgbY3bnccdrI5v/VaFFt98AAOxPCNWkwo8AbnauGL0
	EBqakjajjbBXpdwnCM7hIwCVX59kUPEwoHwc/GfcbPNYuJOLj3pWp09yrXbl7jCWpuZZpOQNG8rux
	MvG40ioHB9UlM4oA0WT0ZJQhgxFPwGX3ta7cJ7HSc15eYo7t487oDWwJp2jWR6YIjedCfMRb93EJ3
	3NPu0zLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL63u-00BkXH-07;
	Wed, 03 Jan 2024 18:33:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61J-00BhMC-0G
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=4FpmU0wcs1sOKkYSXd0t794QMnFOc+iRDny+/eNmgoo=; b=GwTXTWDIHOw8fvTOAl3+mDEtFG
	Ggz4J/lwOV+uKrLnrRW732pwmKGaSNFBMhCGh3vl9iR8g0Sas9dSgCzcAdJ8TFwlb1VGzoEhgR3yK
	bo9LR8tk5W4xlfiqzkXZ0LHrTJ6cBHq92t+hCSbuwj7ElhDMQxyf3D6kfq/AvdVlFsVKBYqn3WlVJ
	OkIXKCEe94fEBNe24MluxmlLgfEI6HqDCE2eIZGzrtmIQHl2bt/bd7iQQWk/23+YOnJIxSRYMB/ZQ
	IPRIfC7pGh3W2XUpBwhU8tfvQV5bzpSrrmKqlHRUOuqlefZ5NuxAQvnk1r+rwBeZHbgb2hBXXnsUK
	nqYD0nmw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61A-005eC7-1R
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-0001cK-4b; Wed, 03 Jan 2024 19:30:57 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-000Aww-Kx; Wed, 03 Jan 2024 19:30:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k5-001j4X-13;
	Wed, 03 Jan 2024 19:13:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:57 +0100
Message-Id: <20240103181312.409668-98-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183105_253006_97EB7FCE 
X-CRM114-Status: GOOD (  10.37  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 097/112] efi: devicepath: align MemoryMapped name with spec
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The strings are currently only for barebox-internal consumption, but we
may in future expose them over the EFI_DEVICE_PATH_TO_TEXT_PROTOCOL, so
we should start using the naming that's in the specification.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/devicepath.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/devicepath.c b/efi/devicepath.c
index 98aba6289e18..dfedeb6239ac 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -170,7 +170,7 @@ dev_path_mem_map(struct string *str, const void *dev_path)
 	const struct memmap_device_path *mem_map;
 
 	mem_map = dev_path;
-	cprintf(str, "mem_map(%d,0x%llx,0x%llx)",
+	cprintf(str, "MemoryMapped(0x%x,0x%llx,0x%llx)",
 		mem_map->memory_type,
 		mem_map->starting_address, mem_map->ending_address);
 }
-- 
2.39.2



