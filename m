Delivery-date: Mon, 05 Sep 2022 17:36:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVE9K-007eks-Gw
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 17:36:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVE9J-0002Bv-HX
	for lore@pengutronix.de; Mon, 05 Sep 2022 17:36:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eJaxXJBMWWVZK7ypJOKs6SgWF9wq82unENEqf9y9II8=; b=wvDcVwTgskMtsNJnzUPKTpPIZm
	yiEvluFm3hRmFS6uxr7W6Zxg0SxYd2LqNszatIp7eDFqUmntrpkY6MNZUCfOTdS1I40aK+xE75Uk4
	iWROL500kSKsTTGQmArSUDBRyQLakcjHlo/5qByTG5+IILe2P9fNyoBOlGkZ2X48vAXUlwf8xEt4+
	ymjpR3aLLLY0alvwJLktUvWOPfKsCyd4dbtR3zQuXoWX+liIqseIKl/n6TvIBfEEe7EYfy3jHR+uO
	lx1gtMtwdN8MWSBiqX8lD46Zok27JfAiadMJp4Rw6K6aYvnReOGPg7UobBTKBF7FIRts6qHnyrXTR
	UjecFeog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVE7Z-0062IB-22; Mon, 05 Sep 2022 15:34:45 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q3-00H47E-Jh
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=eJaxXJBMWWVZK7ypJOKs6SgWF9wq82unENEqf9y9II8=; b=jA4tJ4hW5/KhObgJIIXJ34uu3V
	EYOEuz/PvD8AUi8/z4L0MPVOWJiCqnbFPJA6LncqDkUi38cHWnO7LRiwpS2hTfufjs87kfal8ch/N
	xTbcUMTGVQO1uxXgNqjBDJmBLGq1jaW5bz58KJFNorv5yhNwaTtyQUKKWiH040CT+2tGeUyUtUwpQ
	NDssuAMwFEiV900Bimu+WKFuINx81Zt630rAs/BfBHfn141SV+2aRK/cVoBCXzuGnXghF7+VmGutF
	Y+gWfmKuIXDPgQpwP8+ezIog/H5DJWUlcN13UlIFRIuyJ5McW/ZXUSUel/5EZ88OJUuvHZbE7wMfV
	O1DZq2Cw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q1-009MvO-O7
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pr-0008Hb-Sa; Mon, 05 Sep 2022 11:56:07 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pp-0042Gn-3l; Mon, 05 Sep 2022 11:56:06 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pm-002Weg-2m; Mon, 05 Sep 2022 11:56:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:47 +0200
Message-Id: <20220905095557.596891-23-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105617_867957_FDD83AAA 
X-CRM114-Status: GOOD (  10.30  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 22/32] of: fdt: gracefully handle out-of-place properties
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

node is initialized by FDT_BEGIN_NODE. In case where a FDT_PROP is
encountered before the first FDT_BEGIN_NODE, we would end up
dereferencing a NULL pointer. Handle such malformed device trees
gracefully by returning with an -ESPIPE error instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/fdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 42f45bbd4fb5..01d7dc37439f 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -212,7 +212,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 			nodep = fdt_prop->data;
 
 			name = dt_string(&f, dt_strings, fdt32_to_cpu(fdt_prop->nameoff));
-			if (!name) {
+			if (!name || !node) {
 				ret = -ESPIPE;
 				goto err;
 			}
-- 
2.30.2



