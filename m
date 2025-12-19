Delivery-date: Fri, 19 Dec 2025 11:38:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsH-00DAdH-1a
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:38:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXs3-00064l-QC
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:38:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YeSr6MaFFWdSBh0xlBn8mN7GOCkQv0EIGsA+E6qY2ak=; b=E7OnStLsxLQ1rjVN4bKnwMGlUO
	Q22JOnL/FjgxlUvhHo9xGKW89MJesVSTDGL3BAXznC6VVZ/cZn0lv1qDyQYlmfnq21nGFa8qEMPrs
	ZEfMaia54XKak3XAL6o02U1YZWwmf9IukSuIS/3fqhHmpHnO9sYp55aRUDzyQgYH8gtqfcvvX2bnX
	M8FPwpVWiNWVHViVpW/76tj9rDpdfvcFkGaiZBFgmWHftDDZkKP8vYzQG59/FeOUK/85uJKA/TIv2
	tF58A7F67L29vQ621J9eiZWfRVQ+zbVLElqfN7AZn4ccnBGNBhej+86suyptpy9v2yp6LFRUdX4OQ
	Vlp1I5Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr6-0000000A6G1-0pfA;
	Fri, 19 Dec 2025 10:37:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqw-0000000A61M-2gMB
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:36:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=YeSr6MaFFWdSBh0xlBn8mN7GOCkQv0EIGsA+E6qY2ak=; b=jZtRwz1LYeGYPke5doMAWOv7GS
	bRlNBVD1h1C2u2j1++nIEqLyDlKhRAOFIlvogCiIJjmoBDu7Kqfy3MsscwExuI/IyuIr9wSwPGHV0
	zlbp6RzZsrchhzP19xf7csq7TDuvdJr6TdbY6vuevNdDa0ddkAO0Usm2qY3fHcC+p4bzGib3N0zqX
	kNX88/ZsRND9pXMIqM5Qif3LprXMaNhgz+lBVFEaMJ5BIP+Clj7+BfwcXdR83kEwMcBYgKsA9/f+m
	HMwsAo86EpJ7HsLRhffjbwvsOWVTEORVC7UJEkefy1/dE6lD4UGkKPBsiOy2JnCUF0XGRGYHK3O3d
	WDxlrdDg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWzP-0000000AbBd-3cVD
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:41:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-0004cL-2q; Fri, 19 Dec 2025 11:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqq-006RUv-2r;
	Fri, 19 Dec 2025 11:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVi-0000000320L-0eWC;
	Fri, 19 Dec 2025 11:14:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:21:12 +0100
Message-ID: <20251219101453.2806980-37-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_094136_079928_C5059E77 
X-CRM114-Status: UNSURE (   9.17  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 36/49] test: exit directly when invoking QEMU states on non-QEMU targets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Instead of running into a lot of later errors, let's just abort
immediately when trying to use --interactive with a target that doesn't
support it.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Link: https://lore.barebox.org/20251128105010.2507689-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 043af2b68ff5d4d821b80a050b9401c1128eb6a9)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/strategy.py | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/test/strategy.py b/test/strategy.py
index 11406b97f5f1..a89e79214ba8 100644
--- a/test/strategy.py
+++ b/test/strategy.py
@@ -77,6 +77,9 @@ class BareboxTestStrategy(Strategy):
             if state == "qemu_dump_dtb":
                 self.qemu.machine += f",dumpdtb={self.target.name}.dtb"
 
+            if self.qemu is None:
+                pytest.exit(f"Can't enter {state} for non-QEMU target")
+
             cmd = self.qemu.get_qemu_base_args()
 
             cmd.append("-serial")
-- 
2.47.3



