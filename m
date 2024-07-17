Delivery-date: Wed, 17 Jul 2024 08:20:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTy1N-0005SK-0G
	for lore@lore.pengutronix.de;
	Wed, 17 Jul 2024 08:20:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTy1M-0003VU-HJ
	for lore@pengutronix.de; Wed, 17 Jul 2024 08:20:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XyIrDDHQ5I6fZtEtLoMVDlhu3Xdicb7kvv72Em2qal8=; b=fkaeYnnwxoPvw1xaitYyg01GCW
	SAHbUc0HoEyyiszGEBuPnqcDSyr+I/568GLkSePNTbNzPo9hJ3Gd7YIViCwlPG2F4Hl9TLiNul3Cn
	OAirq++DYPxOr3MyDdmadgJZhDQz1eRi0TclDqkiJAWnQfW0EQXl3em+Bd/TPTxX24QbiLbska3x4
	nbzkg80m0m3cfCJj9yV7MlRTL6H5fhPesXUC6RZ9sUaYbsY5ozo/Ya7ntW1RrrjfWMwXWxrNpSgXu
	BvuBgycWp9UJxeF5W7IkpUQBRVigu2LUI+NyXTdRNSjVsjuUsW68dSKnrjc+rXrpRQD3SNoMsWErd
	D1HqhDHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTy0x-0000000CnIm-0EqL;
	Wed, 17 Jul 2024 06:19:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTy0t-0000000CnHy-3k5S
	for barebox@lists.infradead.org;
	Wed, 17 Jul 2024 06:19:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTy0s-0003Px-F0; Wed, 17 Jul 2024 08:19:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTy0s-0009Oa-2E; Wed, 17 Jul 2024 08:19:42 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTy0r-00Bmlv-3A;
	Wed, 17 Jul 2024 08:19:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Jul 2024 08:19:41 +0200
Message-Id: <20240717061941.2809074-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240717061941.2809074-1-a.fatoum@pengutronix.de>
References: <20240717061941.2809074-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_231943_953605_98556CBB 
X-CRM114-Status: UNSURE (   7.96  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ci: labgrid: use different names per Test Results entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We run the EnricoMi/publish-unit-test-result-action@v2 for each job and
they all have the same name leading to the Jobs sidebar on the Github
Actions Tab to list many duplicated "Test Results" entries[1].

This can be avoided by using a unique check_name for each job and this
leads to a cleaner result as seen in [2].

[1]: https://github.com/a3f/barebox/actions/runs/9962639998
[2]: https://github.com/a3f/barebox/actions/runs/9964226753

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/test-labgrid-pytest.yml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 42a796a157e1..2e038e371f1e 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -80,6 +80,7 @@ jobs:
       uses: EnricoMi/publish-unit-test-result-action@v2
       if: always()
       with:
+        check_name: "Test Results (${{matrix.defconfig}})"
         files: ./*.tests.xml
 
     - name: Publish Labgrid Log Results
-- 
2.39.2



