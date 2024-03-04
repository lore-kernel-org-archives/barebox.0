Delivery-date: Mon, 04 Mar 2024 20:07:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDee-008dPb-0t
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:07:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDed-0002QA-67
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:07:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JoVfk6QoQXZqinFoR0FuejC/HKzmVqYaiG3YeJrr4X0=; b=4yxbp4y3a27G032/vNpQXm9eQx
	MBVDj9nrhmeKrPdnYO15q4Dhc2ELw/9Amgkxtmvx+nuJlup4evtGcwEkgUqYzszrdUFbTjuzc4rLU
	DbIrggmxnkaRZqW/h29ruBHGZhvqGYKdI5CbhvObztUmqPK9RzxH8ouMAAgncjrqjJBm6/3FJGn6w
	2s50W5+Wa/4QNrx4BVRWad21W0BMgs6qg7d9Sc3bLoSEkXPjZxYzplrruYeIc+sLhxaGA+Kz+uY9p
	viAomH2lX1m2X+vtrzHtB+o5t/856qqjEuxXbBVV4Eazq8aP+pCAKaslkK7xGaQvXsV8MebCDuJUH
	87BK52OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDe3-0000000AL3f-13Sv;
	Mon, 04 Mar 2024 19:06:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaU-0000000AIV4-1ggl
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=JoVfk6QoQXZqinFoR0FuejC/HKzmVqYaiG3YeJrr4X0=; b=En+EDuT4xVwDo2QyU9ggzGy5I6
	PdOMlzKgEql1GbRk2IDXkQyINAN2gRZ6EguluqATcUDSCczPoFD42XJdbAdipHBfhGEaYM7iilGUf
	+FBCCGF5iK/rFG+FiLF552rmK3g7iIwqucziXqW39wUpyo5W2NSzygnoc5aPVSYVp0+45NPRpM5UO
	mA6Pw7csDrisnMyXUf1lE08sxRQBj0AgLqSUUgS42JjmK0Mp6ln9QzF81tw9Onc2hNET4Cq+ETJ1y
	tnDTYyJwmwjldJMsYZZR3giVJfIevKTRxvsMG6EfEJI8h04upnnCqWt1OAAnw7diCYa1uNPM74onZ
	btSNJV1g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaN-000000051vn-0lno
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-00063G-OG; Mon, 04 Mar 2024 20:02:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-004PHy-B1; Mon, 04 Mar 2024 20:02:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYN-00Ed9V-12;
	Mon, 04 Mar 2024 20:00:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:20 +0100
Message-Id: <20240304190038.3486881-96-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190251_379831_E5A4306F 
X-CRM114-Status: GOOD (  10.33  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 095/113] efi: payload: protect against buggy EFI implementations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox' EFI loaded image handle should have a device path, but on the
off-case that it doesn't, we should just return an error code instead of
dereferencing a null pointer.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/init.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/efi/payload/init.c b/efi/payload/init.c
index 0f518d4954cb..5701d7ad6dcf 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -328,6 +328,9 @@ static int efi_postcore_init(void)
 	loaded_image_dp = device_path_from_handle(efi_loaded_image->device_handle);
 	pr_debug("loaded-image: %pD\n", loaded_image_dp);
 
+	if (!loaded_image_dp)
+		return -EINVAL;
+
 	uuid = device_path_to_partuuid(loaded_image_dp);
 	if (uuid) {
 		wchar_t *uuid16 = xstrdup_char_to_wchar(uuid);
-- 
2.39.2



